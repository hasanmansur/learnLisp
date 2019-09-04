#|
*****************************basic building blocks************************************************************
the syntax of s-expressions understood by the reader and the syntax of Lisp forms understood by the evaluator.
The basic elements of s-expressions are lists and atoms.
Lists are delimited by parentheses and can contain any number of whitespace-separated elements.
Atoms are everything else.
Most commonly used kinds of atoms: numbers, strings, and names.
|#

(format t "param: ~a~%" (+ 5 5/4)) ; numbers: 5 5/4 & symbol +
(format t "fo\\o~%") ; string
(format t "fo\o~%") ; string
(format t "~a" (+ (* 2 3) 4)) ; a list of a symbol, a list, and a number

;;a four-item list that contains two symbols, the empty list, and another list, itself containing two symbols and a string
(defun hello-world ()
  (format t "hello world"))
