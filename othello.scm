#!/usr/local/bin/gosh

(include "boardgame.scm")

(define-class <othello> (<gridgame>) ())

(define-class <black> (<piece>) ())

(define-class <white> (<piece>) ())


