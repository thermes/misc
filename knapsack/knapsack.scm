#! /usr/bin/env gosh
;;; -*- mode: scheme; coding: utf-8 -*-

(define x 5)

(define (search w sum)
  (cond
   ((null? w) 0)
   (else
    (let ((wi (car w)))
      (let ((new-sum (+ sum wi)))
        (cond ((= new-sum x) 1)
              ((> new-sum x) 0)
              (else
               (+ (search (cdr w) new-sum)
                  (search (cdr w) sum)))))))))

(define (main args)
  (define n 5)
  (define w '(1 1 2 3 4))

  (print (search (sort w) 0))
  0)
