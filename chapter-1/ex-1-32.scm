(define (accumulate combiner null-value term a next b)
  (cond ((> a b) null-value)
        (else (combiner (term a) (accumulate combiner null-value term (next a) next b)))))

(define (sum term a next b)(accumulate + 0 term a next b)) 

(define (product term a next b)(accumulate * 1 term a next b))

(define (cube x)(* x x x))

(define (square x)(* x x))

(define (inc x)(+ x 1))

(sum cube 1 inc 5)

(sum square 1 inc 5)

