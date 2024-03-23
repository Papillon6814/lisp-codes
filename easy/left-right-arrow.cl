(defun main ()
  (let* ((s (read-line))
         (n (length s)))
    (if (and
      (char= (char s 0) #\<)
      (char= (char s (1- n)) #\>)
      (every (lambda (c) (char= c #\=)) (subseq s 1 (1- n)))
      (not (eql (length (subseq s 1 (1- n))) 0)))
      (format t "Yes")
      (format t "No"))))

(main)
