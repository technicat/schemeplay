(use srfi-13) ; string trim and pad

(define-class <game> ()
 ((players :accessor players :init-value '())
  (moves :accessor moves :init-value '())))

(define-class <player> ()
 ((name :getter name :init-keyword :name)))

(define-class <computer> (<player>)
 ())

(define-class <human> (<player>)
 ())

(define-method end? ((game <game>))
 #f)

(define-class <move> ()
 ((player :accessor player :init-keyword :player)))

; todo - move this to text-game(use srfi-13) ; string trim and pad
(define-method your-move ((player <human>) (game <game>))
 (string-trim (read-line)))

(define-method your-move ((player <computer>) (game <game>))
 (print "Thinking..."))

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
