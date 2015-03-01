(define (READ x)
  x)

(define (EVAL x)
  x)

(define (PRINT x)
  x)

(define (rep x)
  (PRINT (EVAL (READ x))))

(define (main)
  (display "user> ")
  (let ((line (read-line)))
    (if (eq? line #!eof)
        (newline)
        (begin
          (display (rep line))
          (newline)
          (main)))))

(main)
