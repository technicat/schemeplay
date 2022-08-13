#!/usr/local/bin/gosh

(use gauche.parseopt) ; command line args

(include "boardgame.scm")

(define (main args)
 (let-args (cdr args)
  ((r "l|level=i" 1)
   . restargs
   )
  (let ((game (make <tictactoe>)))
   (play-self game)
   )))

(define-class <tictactoe> (<boardgame>)
 ())

(define-class <x> (<player>)
 ())

(define-class <o> (<player>)
 ())




