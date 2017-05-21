;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 2|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
#|
Exercise 2
Write following functions using tail recursive.
1. my-reverse that reverse the order of list items. (Function reverse is pre-defined.)
2. Summarizing items of a list consisting of numbers.
3. Converting a string that represents a positive integer to the corresponding integer, i.e. "1232" → 1232. Input error check is not required.
Hint:
   1. Character to number conversion is done by subtracting 48 from the ASCII codes of characters #\0 ... #\9. Function char->integer is available to get the ASCII code of a character.
   2. Function string->list is available to convert string to a list of characters.
|#

; 1
(define (my-reverse ls)
  (my-reverse-rec ls()))

(define (my-reverse-rec ls0 ls1)
  (if (null? ls0)
      ls1
      (my-reverse-rec (cdr ls0) (cons (car ls0) ls1))))

;-------------------
; 2
(define (my-sum-tail ls)
  (my-sum-rec ls 0))

(define (my-sum-rec ls n)
  (if (null? ls)
      n
      (my-sum-rec (cdr ls) (+ n (car ls)))))

;-------------------
; 3
(define (my-string->integer str)
  (char2int (string->list str) 0))

(define (char2int ls n)
  (if (null? ls)
      n
      (char2int (cdr ls)
                (+ (- (char->integer (car ls)) 48)
                   (* n 10)))))