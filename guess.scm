(include "game.scm")

(define-class <guess> (<game>) (number))

(define-method play-turn ((game <guess>))
    (print "Guess what number I'm thinking?")
    (read-line)
)
