#|
*****************************Variables/Scopes************************************************************
Global variables have permanent values throughout the LISP system and remain in effect until a new value is specified.
Global variables are generally declared using the defvar construct.
Since there is no type declaration for variables in LISP, you directly specify a value for a symbol with the setq construct.

Local variables are defined within a given procedure. The parameters named as arguments within a function definition are
also local variables. Local variables are accessible only within the respective function.
We can use let, setq, prog constructs to for creating local variables.
|#

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
