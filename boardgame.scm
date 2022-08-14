(include "game.scm")

(define-class <boardgame> (<game>)
 ((board :accessor board)))

(define-method initialize ((game <boardgame>) args)
 (next-method)
 (push! (players game) (make <computer> :name "Computer"))
 (push! (players game) (make <human> :name "Human")))

(define-class <piece> ()
 ())

(define-method char ((piece <piece>))
 "?")

(define-class <empty> (<piece>)
 ())

(define-method char ((piece <empty>))
 " ")

(define-class <move> ()
 (player piece))

(define-method show ((game <boardgame>))
 (show-board game))

(define-method show-board ((game <boardgame>))
 (print (board game)))

(define-method your-move ((player <human>) (game <boardgame>))
 (show game)
 (print #"~(name player), make your move")
 (next-method))
