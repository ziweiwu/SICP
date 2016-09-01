(define (factorial n)
  (factorial-iter 1 1 n))

(define (factorial-iter product count max-count)
  (if (> count max-count) product
    (factorial-iter (* product count)
                    (+ count 1)
                    max-count)))

