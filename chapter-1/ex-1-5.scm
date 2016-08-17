(
 define (test x y)
 
 (if (= x 0 ) 0 y)
)
;applicative order evaluation evaluates operators and operands first, then applied the procedure, so function is evaluated starting (=x 0), then (if () 0 y)    
 

;normal order evauluation substitute operand expression for parameter until it obtained an expression involving only primitive operators. so functon evaluated starting (if () 0 y), then (= x 0)
; however normal order would never finish

