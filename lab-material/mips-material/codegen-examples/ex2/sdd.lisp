;;;; this example generates Lisp code for CCG grammar using ccglab syntax
;;;; -cem bozsahin


;;; some auxiliary definitions needed by code generator

(defparameter *ccg-grammar* nil)      ; current ccg grammar, as a list of Lisp-translated lex specs
(defparameter *ccg-grammar-keys* 0)   ; unique keys for each entry; from 1 to n

;; ==============================================
;; The lambda layer, whose syntax is given below.
;; ==============================================
;;
;; this is a direct import of Alessandro Cimatti's ADT for Lambda-calculus. 
;; Thanks for putting it on the web.
;; (minor addition for our purposes: singleton e can be symbol OR constant)

;; The ADT for expressions
;; e ::= v | l | a
;; v ::= symbolp | constantp
;; a ::= ( e e )
;; l :: = ( lam v e )

(defun mk-v (sym) sym)
(defun is-v (e) (cond ((consp e) nil)
		      ((symbolp e) t) 
		      ((constantp e) t)
		      ((special-operator-p e) t)
		      (t nil)))
(defun mk-l (v b) (list 'lam v b))
(defun is-l (e) (and (consp e) (= (length e) 3) (equal 'lam (first e)) (is-v (second e))))
(defun l-get-v (l) (second l))
(defun l-get-b (l) (third l))
(defun mk-a (f a) (list f a))
(defun is-a (e) (and (consp e) (= (length e) 2)))
(defun a-get-f (a) (first a))
(defun a-get-a (a) (second a))
(defun freshvar ()(gensym))

;; Recognizer. takes arbitrary s-exp in input

(defun is-e (e)
  (cond ((is-v e) t)
	((is-a e) (and
		    (is-e (a-get-f e))
		    (is-e (a-get-a e))))
	((is-l e) (and
		    (is-e (l-get-v e))
		    (is-e (l-get-b e))))
	(t nil)))

;; Return the free variables of an expression

(defun fv (e)
  (cond
    ((is-v e) (list e))
    ((is-a e) (append
		(fv (a-get-f e))
		(fv (a-get-a e))))
    ((is-l e) (remove
		(l-get-v e)
		(fv (l-get-b e))))
    (t (error "Unknown lambda term type"))))

(defun free-in (v e) (member v (fv e)))

;; equivalence up to alpha conversion

(defun alpha-equivalent1 (e1 e2 rpl1 rpl2)
  (cond 
    ((is-v e1)
     (and (is-v e2)
	  (let ((new1 (cdr (assoc e1 rpl1)))
		(new2 (cdr (assoc e2 rpl2))))
	    (if (and (null new1) (null new2))
	      (equal e1 e2)
	      (equal new1 new2)))))
    ((is-a e1)
     (and (is-a e2)
	  (alpha-equivalent1 (a-get-f e1) (a-get-f e2) rpl1 rpl2) 
	  (alpha-equivalent1 (a-get-a e1) (a-get-a e2) rpl1 rpl2)))
    ((is-l e1)
     (and (is-l e2)
	  (let* ((new (freshvar))
		 (old1 (l-get-v e1))
		 (old2 (l-get-v e2))
		 (newrpl1 (cons (cons old1 new) rpl1))
		 (newrpl2 (cons (cons old2 new) rpl2)))
	    (alpha-equivalent1 (l-get-b e1) (l-get-b e2) newrpl1 newrpl2))))))

(defun alpha-equivalent (e1 e2)  (alpha-equivalent1 e1 e2 nil nil))

;; substitution

(defun subst-with-in (x e1 exp)
  (cond 
    ((is-v exp)
     (if (equal x exp) e1 exp))
    ((is-a exp)
     (mk-a
       (subst-with-in x e1 (a-get-f exp))
       (subst-with-in x e1 (a-get-a exp))))
    ((is-l exp) ; say exp is (lam y e)
     (let ((y (l-get-v exp)) (e (l-get-b exp)))
       (cond
	 ((equal x y) exp)
	 ((not (free-in x e)) exp)
	 ((and (free-in x e) (not (free-in y e1)))
	  (mk-l y (subst-with-in x e1 e)))
	 ((and (free-in x e) (free-in y e1))
	  (let ((z (freshvar)))
	    (mk-l z (subst-with-in x e1 (subst-with-in y z e))))))))))

;; beta reduction

(defun is-rdx (e) (and (is-a e) (is-l (a-get-f e))))
(defun rdx-get-v (rdx) (l-get-v (a-get-f rdx)))
(defun rdx-get-b (rdx) (l-get-b (a-get-f rdx)))
(defun rdx-get-a (rdx) (a-get-a rdx))

;; Beta reduce: (a (l v e) e1) ==> [e1 / v] e

(defun beta-reduce (rdx)
  (subst-with-in 
    (rdx-get-v rdx)
    (rdx-get-a rdx)
    (rdx-get-b rdx)))

;; Beta reduce if possible

(defun beta-reduce-if-redex (e)
  (if (is-rdx e) (beta-reduce e) e))

;; Iterate beta reduction on outermost redex

(defun beta-reduce-outer (e &optional (lim 100))
  (cond
    ((< lim 0) e)
    ((is-rdx e)
     (beta-reduce-outer (beta-reduce e) (- lim 1)))
    ((is-v e) e)
    ((is-a e)
     (mk-a
       (beta-reduce-outer (a-get-f e))
       (beta-reduce-outer (a-get-a e))))
    ((is-l e)
     (mk-l
       (l-get-v e)
       (beta-reduce-outer (l-get-b e))))))

;; Iterate beta reduction on innermost redex

(defun beta-reduce-inner (e &optional (lim 100))
  (cond
    ((< lim 0) e)
    ((is-v e) e)
    ((is-a e)
     (beta-reduce-if-redex
       (mk-a (beta-reduce-inner (a-get-f e) lim)
	     (beta-reduce-inner (a-get-a e) lim))))
    ((is-l e)
     (mk-l
       (l-get-v e)
       (beta-reduce-inner (l-get-b e) lim)))))

;; Beta normalization

(defun beta-normalize-param (e fn &optional (lim 100))
  (let* ((res (apply fn (list e lim)))
	 (use-alpha-equivalent t)
	 (stop (if use-alpha-equivalent
		 (alpha-equivalent res e)
		 (equal res e))))
    (if stop
      res ; fix point reached
      (beta-normalize-param res fn))))

(defun beta-normalize-outer (e &optional (lim 100))
  (beta-normalize-param e 'beta-reduce-outer lim))

(defun beta-normalize-inner (e &optional (lim 100))
  (beta-normalize-param e 'beta-reduce-inner lim))

;; try with the two different strategies and compare results

(defun beta-normalize (e)
  (let ((res-inner (beta-normalize-inner e 100))
	(res-outer (beta-normalize-outer e 100)))
    (if (alpha-equivalent res-outer res-inner)
      (progn 
	(format t "Results are alpha equivalent~%")
	(format t "Inner: ~A~%" res-inner)
	(format t "Outer: ~A~2%" res-outer))
      (progn 
	(format t "Results are NOT alpha-equivalent!")
	(format t "Inner: ~A~%" res-inner)
	(format t "Outer: ~A~2%" res-outer)))))
  
;;;; the LALR input 

(defparameter grammar
  '((gram    --> start              #'(lambda (start) (list 'defparameter '*ccg-grammar* `(quote ,start))))
    (start   --> start lex END      #'(lambda (start lex END) (append start (list lex))))
    (start   --> lex END            #'(lambda (lex END)(list lex)))
    (lex     --> ID mtag SPECOP cat #'(lambda (ID mtag SPECOP cat)(progn (incf *ccg-grammar-keys*)
									 (list (list 'KEY *ccg-grammar-keys*)
									       (list 'PHON (cadr ID)) 
									       mtag (first cat) (second cat) (list 'PARAM 1.0)))))
    (lex     --> lrule 		  #'(lambda (lrule)(progn (incf *ccg-grammar-keys*)
							  (list (list 'KEY *ccg-grammar-keys*)
								(list 'INSYN (second (first (rest (first lrule)))))
								(list 'INSEM (second (second (rest (first lrule)))))
								(list 'OUTSYN (second (second lrule)))
								(list 'OUTSEM (second (third lrule)))
								(list 'INDEX (second (first (first lrule))))  ; rule name
								(list 'PARAM 1.0)))))
    (lrule   --> LP ID RP cat1 
	     ARROW cat              #'(lambda (LP ID RP cat1 ARROW cat)(cons (cons ID cat1) cat))) 
    (mtag    --> ID		      #'(lambda (ID)(list 'MORPH (cadr ID))))
    (cat1    --> cat		      #'(lambda (cat)(identity cat)))
    (cat     --> syns COLON lf      #'(lambda (syns COLON lf)(cons (list 'SYN syns) (list (list 'SEM lf)))))
    (syns    --> basic              #'(lambda (basic)(identity basic)))
    (syns    --> parentd            #'(lambda (parentd)(identity parentd)))
    (syns    --> syns slash syn     #'(lambda (syns slash syn)`(,syns ,@slash ,syn)))
    (syn     --> basic              #'(lambda (basic)(identity basic)))
    (syn     --> parentd            #'(lambda (parentd)(identity parentd)))
    (basic   --> ID feats           #'(lambda (ID feats)(list (list 'BCAT (cadr ID)) (list 'FEATS feats))))
    (parentd --> LP syns RP         #'(lambda (LP syns RP) (identity syns)))
    (slash   --> vardir varmod      #'(lambda (vardir varmod)(list vardir varmod)))
    (slash   --> vardouble          #'(lambda (vardouble)(identity vardouble)))
    (feats   --> LB eqns RB 	      #'(lambda (LB eqns RB) (identity eqns)))
    (feats                          #'(lambda () nil))
    (eqns    --> eqns COMMA eqn     #'(lambda (eqns COMMA eqn)(append  eqns (list eqn))))
    (eqns    --> eqn                #'(lambda (eqn)(list eqn)))
    (eqn     --> ID1 EQOP ID        #'(lambda (ID1 EQOP ID)(list (cadr ID1) (cadr ID))))
    (ID1     --> ID		      #'(lambda (ID) (identity ID)))
    (vardouble --> VALFS2 VALFS     #'(lambda (VALFS2 VALFS)(list (list 'DIR 'FS)(list 'MODAL 'STAR)(list 'LEX t))))
    (vardouble --> VALBS2 VALBS     #'(lambda (VALBS2 VALBS)(list (list 'DIR 'BS)(list 'MODAL 'STAR)(list 'LEX t))))
    (VALFS2  --> VALFS              #'(lambda (VALFS)(identity VALFS)))
    (VALBS2  --> VALBS              #'(lambda (VALBS)(identity VALBS)))
    (vardir  --> VALFS              #'(lambda (VALFS)(list 'DIR 'FS)))
    (vardir  --> VALBS              #'(lambda (VALBS)(list 'DIR 'BS )))
    (varmod  --> MODAL              #'(lambda (MODAL)(cond ((equalp (cadr MODAL) '^) (list 'MODAL 'HARMONIC))
							   ((equalp (cadr MODAL) '+) (list 'MODAL 'CROSS))
							   ((equalp (cadr MODAL) '*) (list 'MODAL 'STAR))
							   (t (list 'MODAL '*UNKNOWN*)))))
    (varmod  --> VALDOT             #'(lambda (VALDOT)(list 'MODAL 'ALL)))
    (varmod  -->                    #'(lambda ()(list 'MODAL 'ALL)))
    (vardot  --> VALDOT	      #'(lambda(VALDOT)(identity nil)))
    (vardot  -->                    #'(lambda()(identity nil)))
    (lf      --> bodys              #'(lambda (bodys)(identity bodys)))
    (lf      --> lterm              #'(lambda (lterm)(identity lterm)))
    (lterm   --> VALBS ID vardot 
	     lbody                  #'(lambda (VALBS ID vardot lbody)(mk-l (mk-v (cadr ID)) lbody)))
    (lbody   --> lterm              #'(lambda (lterm)(identity lterm)))           ; lambda bindings are right-associative.
    (lbody   --> bodys              #'(lambda (bodys)(identity bodys)))
    (bodys   --> bodys body         #'(lambda (bodys body)(mk-a bodys body)))     ; LF concatenation is left-associative. 
    (bodys   --> body               #'(lambda (body)(identity body)))
    (body    --> LP bodys RP        #'(lambda (LP bodys RP)(identity bodys)))     ; in lexical specs, we don't expect inner lambdas in the LF body.
    (body    --> ID                 #'(lambda (ID)(cadr ID)))
    ))
(defparameter lexforms '(VALFS ID MODAL END VALBS 
			  VALDOT SPECOP COLON ARROW
			  LP RP LB RB COMMA EQOP))
(defparameter lexicon '((|/| VALFS)
		  (\\ VALBS)
		  (\^ MODAL)
		  (\* MODAL)
		  (\+ MODAL)
		  (|.| VALDOT)
		  (|,| COMMA)
		  (\; END)
		  (|:=| SPECOP)
		  (|:| COLON)
		  (|-->| ARROW)
		  (|(| LP)
		    (|)| RP)
		  (|[| LB)
		       (|]| RB)
		  (|=| EQOP)
		  ($ $)        ; this is for lalrparser.lisp's end of input
		  ))
  ;; if you change the end-marker, change its hardcopy above in lexicon above as well.
  ;; (because LALR parser does not evaluate its lexicon symbols---sorry.)
(defparameter *ENDMARKER* '$)  

