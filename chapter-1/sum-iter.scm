(define (sum m n )
  (sum-iter 0 m n 0))
 
    (define (sum-iter total initial-value end-value count)
     (if (> count (- end-value initial-value)) total
      (sum-iter (+ total initial-value count)
                initial-value
                end-value
                (+ count 1))))
                
