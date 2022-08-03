#!/usr/local/bin/gosh

(use gauche.parseopt) ; command line args
(use srfi-27) ; random-real

(define (main args)
  (let-args (cdr args)
      ((h "h|help")
        (r "r|range=i" 10)
       . restargs
      )
      (if h
         (print "guess.scm -h|help")
        (play (make <guess> :number (random-integer r))))))

(include "game.scm")

(define-class <guess> (<game>) 
    ((number :init-keyword :number :getter number)))

(define-method play-turn ((game <guess>))
    (print "Guess what number I'm thinking?")
    (let ((num (string->number (read-line))))
        (if num
            num
            (play-turn game))))

(define-method end? ((game <game>))
    (and (not (null? (turns game)))
        (= (latest-guess game) (number game))))

(define-method latest-guess ((game <game>))
    (car (turns game)))
