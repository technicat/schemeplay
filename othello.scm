#!/usr/local/bin/gosh

(include "boardgame.scm")

(define-class <othello> (<gridgame>)
 ())

(define-class <opiece> (<piece>)
 ())

(define-class <black> (<opiece>)
 ())

(define-class <white> (<opiece>)
 ())


