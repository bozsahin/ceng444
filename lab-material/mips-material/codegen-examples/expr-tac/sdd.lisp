;;;; this example compiles arithmetic expressions and their assignment to 
;;;; Three address code (TAC)
;;;; -cem bozsahin

;; advice: never use a constant on the RHS of rules, put them in the lexicon and 
;;         symbolize them in lexforms

;;; TAC Templates:
;;  (3ac op p1 p2 p3)
;;  (2ac op p1 p2)
;;  (2copy p1 p1)

;; two functions to get type and value of tokens

;; in LALR parser, every token is a list whose first element is its type and second element its value.

;;; NOTE: the reason why i did not write any of these as macros is so that you can trace them if you feel like it

(defun t-get-type (x)
  "token type"
  (first x))

(defun t-get-val (x)
  "token value"
  (second x))

(defun wrap (x)
  "to wrap code in parentheses"
  (list x))

(defun pprint-code (code)
  (dolist (instruction (second code))
    (pprint instruction))
  t)

;; some aux functions  to retrieve amd make feature values for grammar variables

(defun mk-place (v)
  (list 'place v))

(defun mk-code (v)
  (list 'code v))

(defun var-get-place (v)
  (second (assoc 'place v)))

(defun var-get-code (v)
  (second (assoc 'code v)))

(defun mk-2ac (op p1 p2)
  (wrap (list '2ac op p1 p2)))

(defun mk-3ac (op p1 p2 p3)
  (wrap (list '3ac op p1 p2 p3)))

(defun mk-2copy (p1 p2)
  (wrap (list '2copy p1 p2)))

(defun newtemp ()
  (gensym "t-"))       ; returns a new symbol prefixed t- at run-time

;;;; LALR data 

(defparameter grammar
'(
  (start --> ID COLON EQLS e END  #'(lambda (ID COLON EQLS e END) (pprint-code (mk-code (append (var-get-code e)
												(mk-2copy (t-get-val ID)
													  (var-get-place e)))))))
  (e     --> e ADD te         #'(lambda (e ADD te) (let ((newplace (newtemp)))
						     (list (mk-place newplace)
							   (mk-code (append (var-get-code e)
									    (var-get-code te)
									    (mk-3ac 'add newplace
										    (var-get-place e)
										    (var-get-place te))))))))
  (e     --> e SUB te         #'(lambda (e SUB te) (let ((newplace (newtemp)))
						     (list (mk-place newplace)
							   (mk-code (append (var-get-code e)
									    (var-get-code te)
									    (mk-3ac 'sub newplace
										    (var-get-place e)
										    (var-get-place te))))))))
  (e     --> te               #'(lambda (te) (identity te)))
  (te    --> te MULT f        #'(lambda (te MULT f) (let ((newplace (newtemp)))
						     (list (mk-place newplace)
							   (mk-code (append (var-get-code te)
									    (var-get-code f)
									    (mk-3ac 'mult newplace
										    (var-get-place te)
										    (var-get-place f))))))))
  (te    --> te DIV f         #'(lambda (te DIV f) (let ((newplace (newtemp)))
						     (list (mk-place newplace)
							   (mk-code (append (var-get-code te)
									    (var-get-code f)
									    (mk-3ac 'div newplace
										    (var-get-place te)
										    (var-get-place f))))))))
  (te    --> f                #'(lambda (f)(identity f)))
  (f     --> LP e RP          #'(lambda (LP e RP) (identity e)))
  (f     --> SUB ID           #'(lambda (SUB ID) (let ((newplace (newtemp)))
						   (list (mk-place newplace)
							 (mk-code (mk-2ac 'uminus newplace
										  (t-get-val ID)))))))
  (f     --> ID               #'(lambda (ID) (list (mk-place (t-get-val ID))
						   (mk-code nil))))
  ))

(defparameter lexforms '(ID END COLON EQLS LP RP ADD SUB MULT DIV))

(defparameter lexicon '(
	          (\; END) ;; all but ID goes in the lexicon
		  (|:| COLON)
		  (|=| EQLS)
		  (|(| LP)
		  (|)| RP)
		  ($ $)        ; this is for lalrparser.lisp's end of input
		  (+ ADD)
		  (- SUB)
		  (* MULT)
		  (/ DIV)
		  ))
  ;; if you change the end-marker, change its hardcopy above in lexicon above as well.
  ;; (because LALR parser does not evaluate its lexicon symbols---sorry.)
(defparameter *ENDMARKER* '$)

