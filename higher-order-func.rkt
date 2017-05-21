;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 6|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
#|
Exercise 6
1. Define keep-matching-items by yourself.
2. Define map by yourself. It may be some how difficult to accept more than one list as arguments.
The rest parameter is defined by a dot pair (.). The cdr part of the pair is sent to the function as a list.
Example: my-list
(define (my-list . x) x)
In addition, you need the function apply.
|#

; 1
(define (my-keep-matching-items ls fn)
  (cond
  ((null? ls) '())
  ((fn (car ls))
   (cons (car ls) (my-keep-matching-items (cdr ls) fn)))
  (else
   (my-keep-matching-items (cdr ls) fn))))

; 2
(define (my-map fun . lss)
  (letrec ((iter (lambda (fun lss)
                   (if (null? lss)
                   '()
                   (cons (fun (car lss))
                         (iter fun (cdr lss))))))
    (map-rec (lambda (fun lss)
               (if (memq '() lss)
                   '()
                   (cons (apply fun (iter car lss))
                         (map-rec fun (iter cdr lss)))))))
  (map-rec fun lss)))

(my-map + '(1 2 3) '(10 20 30) '(100 200 300))