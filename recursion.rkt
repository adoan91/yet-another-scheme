;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 1|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
#|
Exercise 1
Write following functions using recursion.
1. A function that counts the number of list items, my-length. (Function length is pre-defined.)
2. A function that summarizes numbers in a list.
3. A function that takes a list (ls) and an object (x) as arguments and returns a list removing x from ls.
4. A function that takes a list (ls) and and an object (x) and returns the first position of x in ls. The position is counted from 0. If x is not found in ls, the function returns #f.
|#

; 1
(define (my-length ls)
  (if (null? ls)
      0
      (+ 1 (my-length (cdr ls)))))

; 2
(define (my-sum ls)
  (if (null? ls)
      0
      (+ (car ls) (my-sum (cdr ls)))))

; 3
(define (remove x ls)
  (if (null? ls)
      '()
      (let ((h (car ls)))
        ((if (eqv? x h)
             (lambda (y) y)
             (lambda (y) (cons h y)))
         (remove x (cdr ls))))))

; 4
(define (position x ls)
  (position-aux x ls 0))

(define (position-aux x ls i)
  (cond
    ((null? ls) #f)
    ((eqv? x (car ls)) i)
    (else (position-aux x (cdr ls) (1+ i)))))