;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 3|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
#|
Exercise 3
1. Write a function that squares each item of a list, then sums them and then makes square root of it.
|#

; 1
(define (sqrt-sum-sq ls)
  (sqrt (reduce + 0 (map (lambda (x) (* x x)) ls))))