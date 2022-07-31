(define-class <game> () (players))

(define-class <player> () (name))

(define-class <turn> () (num player))

(define-method play-me ((game <game>)))

(define-method play-self ((game <game>)))

(define-method play-turn ((game <game>) (player <player>)))
