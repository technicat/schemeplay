(define-class <game> () (
    (players :accessor players :init-value '())
    (turns :accessor turns :init-value '())))

(define-class <player> () (name))

(define-class <turn> () (player move))

(define-method end? ((game <game>))
    #f)

(define-method your-move ((player <player>) (game <game>)))

(define-method play ((game <game>))
    (if (end? game)
        (print "Game Over")
        (begin
            (push! (turns game) (play-turn game))
            (play game))))

(define-method play-round ((game <game>))
    (let f ((playas (players game)))
    (if (not (null? playas))
        (let ((player (car playas)))
            (your-move player game)
            (f (cdr playas))))))

(define-method play-turn ((game <game>)))
