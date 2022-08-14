(include "boardgame.scm")

(define-class <gridgame> (<boardgame>)
 ((size :accessor size)))

(define-method make-board ((game <gridgame>))
 (set! (board game) (make-array (0 (size game) 0 (size game)))))

