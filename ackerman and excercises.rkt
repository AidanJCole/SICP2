#lang sicp

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))

(define (check_eq f g)
  (define (check_eq_iter f g x y)
    (if (= x y)
        true
        (if (= (f x) (g x))
            (check_eq_iter f g (+ x 1) y)
            false)))
  (check_eq_iter f g 1 10))

(check_eq f (lambda (n) (* 2 n)))
(check_eq g (lambda (n) (expt 2 n)))
(check_eq h (lambda (n) (expt 2 (expt 2 (- n 1)))))