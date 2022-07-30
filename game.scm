(define-class <game> () ())

(define-class <boardgame> () (size))

(define-class <piece> () ())

(define-class <tictactoe> (<boardgame>) ())

(define-class <othello> (<boardgame>) ())

(define-class <checkers> (<boardgame>) ())

(define-class <chess> (<boardgame>) ())

(define-class <chinesechess> (<boardgame>) ())