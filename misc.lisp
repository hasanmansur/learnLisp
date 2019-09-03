#|************************variable basics********************************|#
(defun foo (x)
  (format t "param: ~a~%" x)
  (let ((x 2))
    (format t "outer let: ~a~%" x)
    (let ((x 3))
      (format t "inner let: ~a~%" x)
    )
    (format t "outer let: ~a~%" x)
  )
  (format t "param: ~a~%" x)
)

(foo 1)


#|************************LISP function basics********************************|#

;;;; simple hello function
(defun hello (name)
  (format t "hello ~a ~%" name)
)
(hello "hasan mansur")


;;;; simple IF-ELSE
(defun isTwo (n)
  (if (= n 2)
    (print 1)
    (print 0)
  )
)
(isTwo 2)


#|
(defun fac (n)
  (if (= n 0)
    1
    (* n (fac
          (- n 1)
         )
    )
  )
 )
(fac 2)
|#

#|
some basics on
-
-
-
|#
