;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 1|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
#|
Exercise 1
Write a function described at exercise 1 in chapter 4 with one function,
which means that writing a function to calculate flying distances with initial velocity of v and angle to the surface of a.
|#

(define (throw v a)
  (let ((r (/ (* 4 a (atan 1.0)) 180)))
    (/ (* 2 v v (cos r) (sin r)) 9.8)))