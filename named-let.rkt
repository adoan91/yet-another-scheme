;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 3|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
#|
Exercise 3
Write followings by using named let.
1. Questions 3 and 4 of exercise 1.
2. The function of exercise 2.
3. The function range that returns a list of numbers from 0 to n (not including n).
|#

; 1
(define (remove x ls)
  (let loop((ls0 ls) (ls1 ()))
    (if (null? ls0) 
	(reverse ls1)
	(loop
	 (cdr ls0)
          (if (eqv? x (car ls0))
              ls1
            (cons (car ls0) ls1))))))

; 2
(define (position x ls)
  (let loop((ls0 ls) (i 0))
    (cond
     ((null? ls0) #f)
     ((eqv? x (car ls0)) i)
     (else (loop (cdr ls0) (1+ i))))))

; 3
(define (my-reverse-let ls)
  (let loop((ls0 ls) (ls1 ()))
    (if (null? ls0)
	ls1
	(loop (cdr ls0) (cons (car ls0) ls1)))))

; 4
(define (my-sum-let ls)
  (let loop((ls0 ls) (n 0))
    (if (null? ls0)
	n
	(loop (cdr ls0) (+ (car ls0) n)))))

; 5
(define (my-string->integer-let str)
  (let loop((ls0 (string->list str)) (n 0))
    (if (null? ls0)
	n
	(loop (cdr ls0)
	      (+ (- (char->integer (car ls0)) 48)
		 (* n 10))))))

; 6
(define (range n)
  (let loop((i 0) (ls1 ()))
    (if (= i n)
        (reverse ls1)
      (loop (1+ i) (cons i ls1)))))