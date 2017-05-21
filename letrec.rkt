;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
#|
Exercise 4
Write letrec
|#

; 1
(define (my-reverse-letrec ls)
  (letrec ((iter (lambda (ls0 ls1)
		   (if (null? ls0)
		       ls1
		       (iter (cdr ls0) (cons (car ls0) ls1))))))
    (iter ls ())))

; 2
(define (my-sum-letrec ls)
  (letrec ((iter (lambda (ls0 n)
		   (if (null? ls0)
		       n
		       (iter (cdr ls0) (+ (car ls0) n))))))
    (iter ls 0)))

; 3
(define (my-string->integer-letrec str)
  (letrec ((iter (lambda (ls0 n)
		   (if (null? ls0)
		       n
		       (iter (cdr ls0)
			     (+ (- (char->integer (car ls0)) 48)
				(* n 10)))))))
    (iter (string->list str) 0)))