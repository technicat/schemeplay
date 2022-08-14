#!/usr/local/bin/gosh

(use gauche.parseopt) ; command line args

(include "gridgame.scm")

(define (main args)
 (let-args (cdr args)
  ((r "l|level=i" 1)
   . restargs)
  (let ((game (make <tictactoe>)))
   (play game)
   )))

(define-class <tictactoe> (<gridgame>)
 ())

(define-method initialize ((game <tictactoe>) args)
 (next-method)
 (set! (size game) 3))

(define-class <x> (<piece>)
 ())

(define-class <o> (<piece>)
 ())




