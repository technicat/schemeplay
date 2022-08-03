(define-class <game> () (players))

(define-class <player> () (name))

(define-method end? ((game <game>))
    #f)

(define-method play ((game <game>))
    (if (end? game)
        (print "Game Over")
        (begin
            (play-turn game)
            (play game))))

(define-method play-turn ((game <game>)))
