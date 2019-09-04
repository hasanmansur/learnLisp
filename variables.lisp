#|
*****************************Variables and Scopes************************************************************
Global(Dynamic) variables have permanent values throughout the LISP system and remain in effect until a new value is specified.
Common Lisp provides two ways to create global variables: DEFVAR and DEFPARAMETER.
Global variables are generally declared using the defvar construct.
DEFPARAMETER always assigns the initial value to the named variable while DEFVAR does so only if the variable is undefined.
A DEFVAR form can also be used with no initial value to define a global variable without giving it a value.
Such a variable is said to be unbound.

Local variables(lexically scoped) are defined within a given procedure. The parameters named as arguments
within a function definition are also local variables. Local variables are accessible only within the respective function.
We can use let, setq, prog constructs to for creating local variables.

Since there is no type declaration for variables in LISP, you directly specify a value for a symbol with the setq construct.
|#

;;;global/dynamic variables
(defvar *xglobal* 10)
(defparameter *xglobal* 11)
(format t "*xglobal*: ~a~%" *xglobal*)


;;;scope example of global(dynamic)/local(lexically scoped) variables
(defvar x 1)
(format t "global x: ~a~%" x)
(setq x 2)
(format t "global x: ~a~%" x)
(defvar z 100)
(let ((x 3) (y 4))
  (format t "local step1 x: ~a, y: ~a~%" x y)
  (let ((x 5) (y 6))
    (format t "local step2 x: ~a, y: ~a, z: ~a~%" x y z))
  (format t "local step1 x: ~a, y: ~a~%" x y))
(format t "global x: ~a~%" x)

;;; in a LET*, the initial value forms for each variable can refer to variables introduced earlier in the variables list.
(let* ((i 10)
       (j (+ 5 i)))
  (format t "i: ~a, j(i+5): ~a" i j))



#|
*****************************Lexical Variables and Closures************************************************************
|#
;; TO DO
