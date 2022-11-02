;;;; this example compiles arithmetic expressions and their assignment to 
;;;; a simple stack-based VM (i.e. zero-address MOVE, ADD, SUB, MULT, DIV,
;;;;   and one-address LVAL, RVAL for pushing in left and right values)
;;;;   (assume MOVE pops an rvalue, then an lvalue, and moves the rvalue to that lvalue in RAM)
;;;; -cem bozsahin


;; advice: never use a constant on the RHS of rules, put them in the lexicon and 
;;         symbolize them in lexforms

;; some aux functions 

(defun name (x)
  (second x))

(defun val (x)
  (name x))

;;;; LALR data 

(defparameter grammar
'(
  (start --> ID COLON EQLS e END  #'(lambda (ID COLON EQLS e END) (append (list 'LVAL (val ID) '/) e '(MOVE))))
  (e     --> e ADD te         #'(lambda (e ADD te) (append e te '(ADD /))))
  (e     --> e SUB te         #'(lambda (e SUB te) (append e te '(SUB /))))
  (e     --> te               #'(lambda (te) (identity te)))
  (te    --> te MULT f        #'(lambda (te MULT f) (append te f '(MULT /))))
  (te    --> te DIV f         #'(lambda (te DIV f) (append te f '(DIV /))))
  (te    --> f                #'(lambda (f)(identity f)))
  (f     --> LP e RP          #'(lambda (LP e RP) (identity e)))
  (f     --> SUB ID           #'(lambda (SUB ID) (append (list 'RVAL) (list (val ID) '/) '(NEG /))))
  (f     --> ID               #'(lambda (ID) (list 'RVAL (val ID) '/)))
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

