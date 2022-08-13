(define-class <game> ()
 ((players :getter players :init-keyword :players)
  (moves :accessor moves :init-value '())))

(define-class <player> ()
 ((name :getter name :init-keyword :name)))

(define-class <computer> (<player>)
    ())

(define-class <human> (<player>)
    ())

(define-method end? ((game <game>))
 #f)

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
   (let ((playa (car playas)))
    (push! (moves game) (your-move playa game))
    (f (cdr playas))))))
