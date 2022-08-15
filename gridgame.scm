(use gauche.array) ; shape

(include "boardgame.scm")

(define-class <gridgame> (<boardgame>)
 ())

(define-method board-size ((game <gridgame>))
 0)

(define-method make-board ((game <gridgame>))
 (let ((bs (board-size game)))
  (set! (board game) (make-array (shape 0 bs 0 bs) (make <empty>)))))

(define-method show-board ((game <gridgame>))
 (newline)
 (array-for-each-index (board game)
  (cut show-square game <> <>))
 (newline))

(define-method show-square ((game <gridgame>) i j)
; (format #t "~s" (char (get-piece game i j)))
 (if (= (+ 1 j) (board-size game))
 ;; (format #t "|")
  (newline)))

(define-method get-piece ((game <gridgame>) i j)
 (array-ref (board game) i j))
