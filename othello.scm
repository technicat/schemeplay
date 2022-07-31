#!/usr/local/bin/gosh

(include "boardgame.scm")

(define-class <othello> (<boardgame>) ())

(define-class <black> (<piece>) ())

(define-class <white> (<piece>) ())


