(define (cube x)(* x x x))

(define (double-cube x)
  (cube (cube x)))

(define (sum a b)
  (cond ((> a b) 0)
        (else (+ a (sum (+ a 1) b)))))    
