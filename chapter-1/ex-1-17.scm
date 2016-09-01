(define (square x) (* x x))

(define (halve x)(/ x 2))

(define (double x)(* x 2))

(define (multi a b)
  (cond ((= b 0) 0)
        ((= b 1) a)
        ((even? b) (double (multi a (halve b))))
        (else (+ a (multi a (- b 1))))))

                     
        
