#!/usr/local/bin/gosh

(include "gridgame.scm")

(define-class <chess> (<gridgame>)
 ())

(define-class <cpiece> (<piece>)
 ())

(define-class <pawn> (<piece>)
 ())

(define-class <king> (<piece>)
 ())

(define-class <queen> (<piece>)
 ())

(define-class <bishop> (<piece>)
 ())

(define-class <knight> (<piece>)
 ())

(define-class <rook> (<piece>)
 ())



