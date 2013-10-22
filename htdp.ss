;;Exercise 4.2.3
;; equation1 : number  ->  boolean
;; to determine whether x is a solution for x^2  +  2x  +  1  =  0
(define (equation1 x)
  (= (+ (* x x) (+ (* 2 x) 1)) 0))

;; equation2 : number  ->  boolean
;; to determine whether n is a solution for 4n  +  2  =  62
(define (equation2 n)
  (= (+ (* 4 n) 2) 62))

;; equation3 : number  ->  boolean
;; to determine whether n is a solution for 2n^2  =  102
(define (equation3 n)
  (= (* 2 n n) 102))
  
  
;; I didn't think equation3 was a good question.  eg how to check???
;; (equation3 (sqrt 51))  -> returns false.  You need to check a range or 
;;some other solution.  Book should have discussed this or not used this as an 
;;exercise at this stage in learning lisp.

;; equation4 : number  ->  boolean
;; to determine whether n is a solution for 4n^2  + 6n + 2 =  462
(define (equation4 n)
  (= (+ (* 4 n n) (* 6 n) 2) 462))


; exercise 4.4.3
;; tax : number -> number
;; calculates tax due on gross pay
(define (tax pay)
  (cond
    ((<= pay 240.0) 0)
    ((<= pay 480.0) (* (/ 15 100) (- pay 240.0)))
    (else (+ (* (/ 15 100) 480) (* (/ 28 100) (- pay 480))))))

(define (netpay grosspay)
  (- grosspay (tax grosspay))) 

;; Exercise 4.4.4
;; how-many : number number number  ->  number
;; returns number of solutions for quadratic eqn of form ax^2 + bx + c
(define (how-many a b c)
  (cond
    ((> (* b b) (* 4 a c)) 2)
    ((< (* b b) (* 4 a c)) 0)
    ( else 1)))
