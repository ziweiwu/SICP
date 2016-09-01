(define (halve x)(/ x 2))
(define (double x)(* x 2))  


(define (multi a b) (multi-iter a b 0))

(define (multi-iter a b total)
  (cond ((= b 0) total)
        ((even? b)(multi-iter (double a) (halve b) total)) 
        (else (multi-iter (double a) (halve (- b 1)) (+ a  total)))))  
                                



  
