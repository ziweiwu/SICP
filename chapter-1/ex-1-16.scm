(define (square x) (* x x))

(define (fastexp b n)
  (exp-iter b n 1))

(define (exp-iter b n product)
    (cond ((= n 0) product)
        ((even? n) (exp-iter (square b) (/ n 2) product))
        (else (exp-iter b (- n 1) (* product b))))) 
