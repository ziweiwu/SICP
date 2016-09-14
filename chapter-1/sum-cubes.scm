(define (cube x)(* x x x))

(define (double-cube x)
  (cube (cube x)))

(define (sum func a next b)
  (cond ((> a b) 0)
        (else (+ (func a)
                 (sum func (next a) next b)))))

(define (inc n)(+ n 1))

(define (sum-of-cube a b)
  (sum cube a inc b))

(sum-of-cube 2 4)
