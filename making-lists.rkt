;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 1|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
#|
Exercise 1
Make data structures using cons that the front end responds like as follows.
1. ("hi" . "everybody")
2. (0)
3. (1 10 . 100)
4. (1 10 100)
5. (#\I "saw" 3 "girls")
6. ("Sum of" (1 2 3 4) "is" 10)
|#

;1
(cons "hi" "everybody")

;2
(cons 0 '())

;3
(cons 1 (cons 10 100))

;4
(cons 1 (cons 10 (cons 100 '())))

;5
(cons #\I (cons "saw" (cons 3 (cons "girls" '()))))

;6
(cons "Sum of" (cons (cons 1 (cons 2 ( cons 3 (cons 4 '())))) (cons "is" (cons 10 '()))))

#|
Exercise 2
Evaluated following S-expressions.
1. (car '(0))
2. (cdr '(0))
3. (car '((1 2 3) (4 5 6)))
4. (cdr '(1 2 3 . 4))
5. (cdr (cons 3 (cons 2 (cons 1 '()))))
|#

;1
(car '(0))

;2
(cdr '(0))

;3
(car '((1 2 3) (4 5 6)))

;4
(cdr '(1 2 3 . 4))

;5
(cdr (cons 3 (cons 2 (cons 1 '()))))
