#!/usr/local/bin/gosh

(use gauche.parseopt) ; command line args
(use srfi-27) ; random-real

(include "game.scm")

(define (main args)
 (let-args (cdr args)
  ((h "h|help")
   (r "r|range=i" 10)
   . restargs
   )
  (if h
   (print "guess.scm -h -r range")
   (play (make <guess>
          :number (random-integer r))))))

(define-class <guess> (<game>)
 ((number :init-keyword :number :getter number)))

(define-class <guess-move> (<move>)
 ((guessed :accessor guessed :init-keyword :guessed)))

(define-method initialize ((game <guess>) args)
 (next-method)
 (push! (players game) (make <human> :name "Human")))

(define-method your-move ((player <human>) (game <guess>))
 (print #"~(name player), guess what number I'm thinking?")
 (let ((num (string->number (next-method))))
  (if num
   (make <guess-move> :player player :guessed num)
   (begin
    (print "That's not a number.")
    (your-move player game)))))

(define-method end? ((game <guess>))
 (and (not (null? (moves game)))
  (let ((move (car (moves game))))
   (= (guessed move) (number game)))))

