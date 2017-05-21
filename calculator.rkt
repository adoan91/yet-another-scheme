;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 1|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
#|
Exercise 1
Calculate followings using Scheme interpreter.
1. (1+39)*(53-45)
2. (1020/39)+(45*2)
3. Sum of 39, 48, 72, 23, and 91
4. Average of 39, 48, 72, 23, and 91 as a floating point.
|#

;1
(* (+ 1 39) (- 53 45))

;2
(+ (/ 1020 39) (* 45 2))

;3
(+ 39 48 72 23 91)

;4
(exact->inexact (/ (+ 39 48 72 23 91) 5))

#|
Exercise 2
Calculate following values using Scheme interpreter.
1. circle ratio, π
2. exp(2/3)
3. 3 to the power of 4
4. logarithm of 1000
|#

;1
(* 4 (atan 1.0))

;2
(exp 2/3)

;3
(expt 3 4)

;4
(log 1000)