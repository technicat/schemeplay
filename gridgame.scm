(use gauche.array) ; shape

(include "boardgame.scm")

(define-class <gridgame> (<boardgame>)
 ((size :accessor size)))

(define-method make-board ((game <gridgame>) bs)
 (set! (size game) bs)
 (set! (board game) (make-array (shape 0 bs 0 bs) '())))

(define-method show-board ((game <gridgame>))
 (array-for-each-index (board game)
    (lambda (i j) (print (array-ref (board game) i j)))))
