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
   (print "guess.scm -h|help")
   (play (make <guess>
          :number (random-integer r)
          :players (list (make <human> :name "Human")))))))

(define-class <guess> (<game>)
 ((number :init-keyword :number :getter number)))

(define-method your-move ((player <human>) (game <guess>))
 (print #"~(name player), guess what number I'm thinking?")
 (or (string->number (next-method))
  (your-move player game)))

(define-method end? ((game <guess>))
 (and (not (null? (moves game)))
  (= (car (turns)) (number game))))

