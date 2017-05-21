;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
#|
Exercise 4
Write followings:
1. Sort by magnitude of sin(x) in ascending order.
2. Sort by length of lists in descending order.
|#

; 1
(define (sort-sin ls)
  (sort ls (lambda (x y) (< (sin x) (sin y)))))

; 2
(define (sort-length ls)
  (sort ls (lambda (x y) (> (length x) (length y)))))