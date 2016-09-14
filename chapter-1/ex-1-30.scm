(define (sum term a next b)
  (define (iter a result)
    (cond ((> a b) result) 
     (else (iter (next a) (+ result (term a))))))
  (iter a 0))  

(define (inc x)(+ x 1))

(define (cube x)(* x x x))

(sum cube 1 inc 5)
