(include "boardgame.scm")

(define-class <chinesechess> (<gridgame>)
 ())

(define-class <ccpiece> (<piece>)
 ())

(define-class <pawn> (<ccpiece>)
 ())

(define-class <king> (<ccpiece>)
 ())

(define-class <queen> (<ccpiece>)
 ())

(define-class <bishop> (<ccpiece>)
 ())

(define-class <knight> (<ccpiece>)
 ())

(define-class <rook> (<ccpiece>)
 ())



