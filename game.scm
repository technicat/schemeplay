(define-class <game> () (players))

(define-class <player> () (name))

(define-method end? ((game <game>))
    #f)

(define-method play ((game <game>))
    (if (end? game)
        (print "Game Over")
        (play-turn game)))

(define-method play-turn ((game <game>)))
