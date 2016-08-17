;cond provides branches for the function
(define (abs x)
  (cond ((> x 0)x)
        ((= x 0)0)
        ((< x 0)(- x))))

;the (> x 0) is predicate (p1), x is consequent expression
;predicate return a boolean T or F, if T then consequent expression
;is returned, and rest of predicate is ignored

;alternative way of writing this function

(define (abs x)
  (cond ((< x 0) (-x))
        (else x)))

;if can be used when there are precisely two cases
(define (abs x)
  (if (< x 0)
    (- x)
    x))


