(define tolerance 0.0001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (try guess)
    (show guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
        next
        (try next))))
    
  (try first-guess))

(define (show x)
  (newline) 
  (display x)
  (newline))

(define (average a b)(/ (+ a b) 2))

(fixed-point (lambda (x) (+ 1 (/ 1 x)))
            2.0) 

(fixed-point (lambda (x) (/ (log 1000) (log x)))
             2.0)


(fixed-point (lambda (x) (average x (/ (log 1000) (log x))))
             2.0)

