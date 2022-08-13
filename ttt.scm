#!/usr/local/bin/gosh

(include "boardgame.scm")

(define-class <tictactoe> (<boardgame>) ())

(define-class <x> (<player>) ())

(define-class <o> (<player>) ())

(use gauche.parseopt) ; command line args

(define (main args)
 (let-args (cdr args)
  ((r "l|level=i" 1)
   . restargs
   )
  (let ((game (make <tictactoe>)))
   (play-self game)
   )))


