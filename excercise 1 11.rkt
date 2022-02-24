#lang sicp

(define (f n)
  (define (f-rec a b c counter)
    (if (< counter 0)
        a
        (f-rec (+ a (* 2 b) (* 3 c)) a b (- counter 1))))
  (if (< n 3)
      n
      (f-rec 2 1 0 (- n 3))))
