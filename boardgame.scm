(include "game.scm")

(define-class <boardgame> (<game>)
 ((board :accessor board)))

(define-class <piece> () ())

(define-class <move> ()
 (player piece))
