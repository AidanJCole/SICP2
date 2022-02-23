#lang sicp

(define (fib n)
  (define (fib-iter a b counter)
    (if (= 0 counter)
        b
        (fib-iter (+ a b) a (- counter 1))))
  (fib-iter 1 0 n))

(fib 0)
(fib 1)
(fib 2)
(fib 4)
(fib 8)
(fib 16)