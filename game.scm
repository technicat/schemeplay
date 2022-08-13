(define-class <game> () (
                         (players :accessor players :init-value '())
                         (moves :accessor turns :init-value '())))

(define-class <player> () (name))

(define-class <computer> () (player))

(define-class <human> () (player))

(define-method end? ((game <game>))
 #f)

(define-method your-move ((player <player>) (game <game>)))

(define-method your-move ((player <computer>) (game <game>)))

(define-method your-move ((player <human>) (game <game>))
 (read-line))

(define-method play ((game <game>))
 (if (end? game)
  (print "Game Over")
  (begin
   (play-round game)
   (play game))))

(define-method play-round ((game <game>))
 (let f ((playas (players game)))
  (if (not (null? playas))
   (let ((player (car playas)))
    (push (moves game) (your-move player game))
    (f (cdr playas))))))
