;; this is a simple hash implementation of symbol tables.
;; It makes use of the idea that Lisp's hashtables are collision-free
;; so that the same identifier in the same scope twice is an override
;; of same value, for which we will signal an error rather than allow
;; the override.
;; -cem bozsahin, 2018

;; it is implemented with a set of mk- (make) functions
;; and get- functions

;;;; top level use: 
;;   (demo-make-st)
;;   (demo-show-st)

(defparameter *st* nil)  ; the symbol table 

(defun mk-key (id index)
  "makes a list for key of the hashtable. Index is a list,
  key is consed to that to make a flat list."
  (cons id index))

(defun mk-val (typ blockno)
  (list typ blockno))

(defun mk-symbol-table ()
  "the key of the table is a list of (id index), where index is 
  a sequence of indices for lexical scope of the id. For example
  (x 1 2 3) means that x is an identifier in the 3rd block 
  of 2nd block which is nested in the 1st block at top level.
  The value for the key is x's type and its offset in the index 
  (where it starts in the block). For example (int 2) means
  it is an int and it is the 2nd definition in the block
  indicated in the key.
  in CL, anything can be a hash key, including lists and hashtables, and even functions."
  (make-hash-table :test #'equal :size 100 :rehash-size 5 :rehash-threshold 0.9))

(defparameter *st* (mk-symbol-table)) ;; create once, use many times

(defun add-entry (key val)
  "complain if key is already in the table"
  (if (gethash key *st*)
    (format t "~%Duplicate key: ~S; ignoring the value: ~S" key val)
    (setf (gethash key *st*) val)))


(defun demo-make-st ()
  "just to show the idea at work. It has the side effect of setting the *st* parameter.
  I defined it as a global, rather than passing a global object of compiling as if
  it's a local variable."
  (clrhash *st*) ; initialize -- do not regenerate another hash table
  (add-entry (mk-key 'x '(1)) (mk-val 'int 3))    ; populate
  (add-entry (mk-key 'x '(1 2)) (mk-val 'real 1))
  (add-entry (mk-key 'x '(1 2 1)) (mk-val 'char 4))
  (add-entry (mk-key 'x '(1)) (mk-val 'real 4))   ; override complaint
  (add-entry (mk-key 'x '(1 2 1)) (mk-val 'float 4))   ; override complaint (that's why the hashtable must
                                                     ; be of #'equal type so lists can be considered same)
  )

(defun demo-show-st ()
  (maphash #'(lambda (key val)
	       (format t "~%key=~S  value=~S" key val))
	   *st*))

