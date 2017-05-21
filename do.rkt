;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 5|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
#|
Exercise 5
Write a do version
|#

; 1
(define (my-reverse-do ls)
  (do ((ls0 ls (cdr ls0)) (ls1 () (cons (car ls0) ls1)))
      ((null? ls0) ls1)))

; 2
(define (my-sum-do ls)
  (do ((ls0 ls (cdr ls0)) (n 0 (+ n (car ls0))))
      ((null? ls0) n)))

; 3
(define (my-string->integer-do str)
  (do ((ls0 (string->list str) (cdr ls0))
       (n 0 (+ (- (char->integer (car ls0)) 48) 
	       (* n 10))))
      ((null? ls0) n)))