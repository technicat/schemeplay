(define-class <game> () ())

(define-method play-me ((game <game>)))

(define-method play-self ((game <game>)))

(define-class <boardgame> (<game>) (size))

(define-class <piece> () ())
