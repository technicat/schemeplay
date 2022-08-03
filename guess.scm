#!/usr/local/bin/gosh

(use gauche.parseopt) ; command line args
(use srfi-27) ; random-real

(define (main args)
  (let-args (cdr args)
      ((h "h|help")
       . restargs
      )
      (if h
         (print "guess.scm -h|help")
        (play (make <guess>)))))

(include "game.scm")

(define-class <guess> (<game>) 
    ((number :init-value (random-integer 10) :accessor number) 
    (guess :init-value -1 :accessor guess)))

(define-method play-turn ((game <guess>))
    (print "Guess what number I'm thinking?")
    (let ((num (string->number (read-line))))
        (if num
            (set! (guess game) num)
            (print "Please enter a number."))))

(define-method end? ((game <game>))
    (= (guess game) (number game)))
