(define (product f a b result)
  (define (inc x)(+ x 1))
  (cond ((> a b) result)
   (else (product f (inc a) b (* (f a) result)))))
   
(define (square x)(* x x))  

(product square 1 4 1)

(define (factorial a)
  (define (self a)(* a 1))
  (cond ((= a 1)1)
        ((= a 0)1)
        (else (product self 1 a 1))))

(factorial 5)

(define (pi-aprox n)
  (define (term k)
  (cond ((odd? k) (/ (+ k 1) (+ k 2)))
        (else  (/ (+ k 2) (+ k 1)))))
  (* (product term 1 n 1) 4.00))

(pi-aprox 100)
