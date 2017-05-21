;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 1|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
#|
Exercise 1
Write followings using map.
1. A function that makes it twice that each item of a list of numbers.
2. A function that subtracts items of two lists.
|#

; 1
(define (double ls)
  (map (lambda (x) (* x 2)) ls))

; 2
(define (sub ls1 ls2)
  (map - ls1 ls2))