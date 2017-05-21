;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 1|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
#|
Exercise 1
Make following functions.
1. A function to return the absolute value of a real number.
2. A function to return the reciprocal of a real number. Make it return #f if the argument is 0.
3. A function to convert a integer to a graphical character of ASCII characters. The integers that can be converted to graphical characters are 33 – 126. Use integer->char to convert a integer to a character. Make it return #f if the given integer can not be converted to a graphical character.
|#

; 1
(define (my-abs n)
  (* n
     (if (positive? n) 1 -1)))

; 2
(define (inv n)
  (if (not (zero? n))
      (/ n)))

;3
(define (i2a n)
  (if (<= 33 n 126)
      (integer->char n)))

#|
Exercise 2
Make following functions:
1. A function that takes three real numbers as arguments. It returns the product of these three numbers if all them is positive.
2. A function that takes three real numbers as arguments. It returns the product of these three numbers if at least one of them is negative.
|#

; 1
(define (pro3and a b c)
  (and (positive? a)
       (positive? b)
       (positive? c)
       (* a b c)))

; 2
(define (pro3or a b c)
  (if (or (negative? a)
          (negative? b)
          (negative? c))
      (* a b c)))

#|
Exercise 3
Make following functions.
1.The grade (A – D) of exam is determined by the score (score). Write a function that takes a score as an argument and returns a grade.
   1. A if score ≥ 80
   2. B if 60 ≤ score ≤ 79
   3.C if 40 ≤ score ≤ 59
   4. D if score < 40
|#

;1
(define (score n)
  (cond
    ((>= n 80) 'A)
    ((<= 60 n 79) 'B)
    ((<= 40 n 59) 'C)
    (else 'D)))