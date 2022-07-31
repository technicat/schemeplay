(include "game.scm")

(define-class <boardgame> (<game>) (size))

(define-class <piece> () ())

(define-class <gridgame> (<boardgame>) (size))
