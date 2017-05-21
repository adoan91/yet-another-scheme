;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 2|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
#|
Exercise 2
Write followings:
1. filtering out even numbers in a list.
2. filtering out numbers (x) that are not 10 ≤ x ≤ 100.
|#

; 1
(define (filter-even ls)
  (keep-matching-items ls even?))

; 2
(define (filter-10-100 ls)
  (keep-matching-items ls (lambda (x) (<= 10 x 100))))