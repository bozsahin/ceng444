;;;; this example compiles arithmetic expressions and their assignment to 
;;;; Three address code (TAC) then to register-only ops.
;;;; -cem bozsahin

;; Examples in tac and zac directories generate IC code with IC temporaries.

;; This version generates TAC with IC temporaries, then creates MIPS-style .data and .text segments
;; which refer to these temporaries, and implements the TAC as register operations.
;; This is because in MIPS all ops are done in registers; no op refers to memory locations.
;; For example (3ac mult a b c) meaning a := b * c in IC code is translated into
;;  lw $t0,b
;;  lw $t1,c
;;  mul $t0,$t0,$t1
;;  sw $t0,a
;;
;; where lw is load word from memory to register
;; and sw means save the register's value in a word in memory.
;; $ti are temporary value registers of MIPS-like architectures. All we need is 2 for TAC codes.
;; We can think of this version as a register-based TAC, rather than true target code.

;; Here is the algorithm: 1) Generate TAC with relative addresses with IC temporaries. 2) Map that result to a 
;;  register-based TAC with data and code segments. 

;; A Symbol table keeps names (variables and constants) and type info. Its format is
;; hash key: (name blockno)  hash value: (type value)
;;   type is NUM or VAR.  Value is relevant for numbers to choose 'li' MIPS command later. Each type takes a fixed amount of 
;;   space (in MIPS generation i assume one word).

(defun mk-symtab (size)
  (make-hash-table :test #'equal :size size :rehash-threshold 0.8))  ; we need equal function to match a LIST of values as key

(defparameter *symtab* (mk-symtab 200)) ; this is a global variable, referred to in the grammar's semantic actions

(defparameter *blockno* 0)  ;; increment this everytime a new code block (procedure etc.) is entered. 

(defun target-code-mips (input)
  (clrhash *symtab*) ; we need to reset the symbol table for every code gen
  (setf *blockno* 0)
  (target-code input))

(defun mk-sym-entry (name)
  "NB: Lisp hash is collision-free, duplicates just replace the older value."
  (cond ((numberp name) (setf (gethash (list name *blockno*) *symtab*) (list 'num name)))
	((symbolp name) (setf (gethash (list name *blockno*) *symtab*) (list 'var name)))
	(t (setf (gethash (list name *blockno*) *symtab*) (list 'unknown name)))))

(defun sym-get-type (val)
  (first val))

(defun sym-get-value (val)
  (second val))

;; SDD section
;;
;; advice: never use a constant on the RHS of rules, put them in the lexicon and 
;;         symbolize them in lexforms

;;; TAC Templates:
;;  (3ac op p1 p2 p3)
;;  (2ac op p1 p2)
;;  (2copy p1 p1)

(defparameter *tac-to-mips* '((MULT "mul") (DIV "div")(ADD "add")(SUB "sub")(UMINUS "sub"))) ; intstruction set corr.
 ;; MIPS is case-sensitive, so we use strings to map TAC code to MIPS

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


(defun mk-mips (p register)
  "create li if constant or lw if not"
  (if (numberp p)
    (format t "~%li ~A,~A" register p)
    (format t "~%lw ~A,~A" register p)))

(defun tac-get-mips (op)
  (second (assoc op *tac-to-mips*)))

(defun mk-mips-3ac (i)
  (let ((op (tac-get-mips (first i)))
	(p1 (second i))
	(p2 (third i))
	(p3 (fourth i)))
    (mk-mips p2 "$t0")
    (mk-mips p3 "$t1")
    (format t "~%~A $t0,$t0,$t1" op)
    (format t "~%sw $t0,~A" p1)))

(defun mk-mips-2ac (i)
  (let ((op (tac-get-mips (first i)))
	(p1 (second i))
	(p2 (third i)))
    (mk-mips p2 "$t1")
    (format t "~%~A $t0,$zero,$t1" op)
    (format t "~%sw $t0,~A" p1)))

(defun mk-mips-2copy (i)
  (let ((p1 (first i))
	(p2 (second i)))
    (mk-mips p2 "$t0")
    (format t "~%sw $t0,~A" p1)))

(defun create-data-segment ()
  "only for variables; numbers will use li loading rather than lw
  If you have more than one block, you need to create .data for each block."
  (format t "~2%.data~%")
  (maphash #'(lambda (key val)
	       (if (equal (sym-get-type val) 'VAR) (format t "~%~A: .word 0" (sym-get-value val))))
	   *symtab*))

(defun create-code-segment (code)
  (format t "~2%.text~2%") 
  (format t "main:")
  (dolist (instruction (second code)) ; NB. code is a grammar variable feature (code (i1 i2 i3))
    (let ((itype (first instruction)))
      (cond ((equal itype '3AC) (mk-mips-3ac (rest instruction)))
	    ((equal itype '2AC) (mk-mips-2ac (rest instruction)))
	    ((equal itype '2COPY) (mk-mips-2copy (rest instruction)))
	    (t (format t "unknown TAC code: ~A" instruction))))))

(defun map-to-mips (code)
  (create-data-segment) ; uses the symbol table
  (create-code-segment code))

(defun tac-to-rac (code)
  (format t  "~2%TAC code:~2%")
  (pprint-code code)
  (format t "~2%MIPS-style code using register ops only:~2%")
  (map-to-mips code))

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
  (gensym "t"))       ; returns a new symbol prefixed t at Lisp run-time

;;;; LALR data 

(defparameter grammar
'(
  (start --> ID COLON EQLS e END  #'(lambda (ID COLON EQLS e END) 
				      (progn 
					(mk-sym-entry (t-get-val ID))
					(tac-to-rac (mk-code (append (var-get-code e) (mk-2copy (t-get-val ID)
												(var-get-place e))))))))
  (e     --> e ADD te         #'(lambda (e ADD te) (let ((newplace (newtemp)))
						     (mk-sym-entry newplace)
						     (list (mk-place newplace)
							   (mk-code (append (var-get-code e)
									    (var-get-code te)
									    (mk-3ac 'add newplace
										    (var-get-place e)
										    (var-get-place te))))))))
  (e     --> e SUB te         #'(lambda (e SUB te) (let ((newplace (newtemp)))
						     (mk-sym-entry newplace)
						     (list (mk-place newplace)
							   (mk-code (append (var-get-code e)
									    (var-get-code te)
									    (mk-3ac 'sub newplace
										    (var-get-place e)
										    (var-get-place te))))))))
  (e     --> te               #'(lambda (te) (identity te)))
  (te    --> te MULT f        #'(lambda (te MULT f) (let ((newplace (newtemp)))
						     (mk-sym-entry newplace)
						     (list (mk-place newplace)
							   (mk-code (append (var-get-code te)
									    (var-get-code f)
									    (mk-3ac 'mult newplace
										    (var-get-place te)
										    (var-get-place f))))))))
  (te    --> te DIV f         #'(lambda (te DIV f) (let ((newplace (newtemp)))
						     (mk-sym-entry newplace)
						     (list (mk-place newplace)
							   (mk-code (append (var-get-code te)
									    (var-get-code f)
									    (mk-3ac 'div newplace
										    (var-get-place te)
										    (var-get-place f))))))))
  (te    --> f                #'(lambda (f)(identity f)))
  (f     --> LP e RP          #'(lambda (LP e RP) (identity e)))
  (f     --> SUB ID           #'(lambda (SUB ID) (let ((newplace (newtemp)))
						   (mk-sym-entry newplace)
						   (mk-sym-entry (t-get-val ID))
						   (list (mk-place newplace)
							 (mk-code (mk-2ac 'uminus newplace
										  (t-get-val ID)))))))
  (f     --> ID               #'(lambda (ID) (progn 
					       (mk-sym-entry (t-get-val ID))
					       (list (mk-place (t-get-val ID))
						     (mk-code nil)))))
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

