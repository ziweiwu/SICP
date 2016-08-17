
;define a function that takes 1 parameter called square
;general format of defining a function
;(define (⟨name⟩ ⟨formal parameters⟩)<body>)


(define (square x)     (* x x))


;this results in 25
(square 5)

;square function can be combined recursively

(square (square (square (square 2))))

;square function can be used to create sum of square function, eg. x^2+y^2
(define (sum-of-squares x y)
  (+ (square x) (square y)))

;sum of squares function can be used to build another function
(define (f a b)
  (sum-of-squares (* a 5) (/ 10 b)))

;run function f using parameter a=5, b=2, result is 650
(f 5 2)
