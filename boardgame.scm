(include "game.scm")

(define-class <boardgame> (<game>) (board moves))

(define-class <piece> () ())

(define-class <move> () (player piece))

(define-class <gridgame> (<boardgame>) (size))
