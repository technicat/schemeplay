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

(define-method board-size ((game <gridgame>))
 3)

(define-method initialize ((game <tictactoe>) args)
 (next-method)
 (make-board game))

(define-class <x> (<piece>)
 ())


(define-method char ((piece <x>))
 "X")

(define-class <o> (<piece>)
 ())

(define-method char ((piece <o>))
 "O")




