(define (problem counters)
(:domain counters)
(:objects 
	counter0 - counter
	counter1 - counter
	counter2 - counter
	counter3 - counter
	counter4 - counter
	counter5 - counter
	counter6 - counter
	counter7 - counter
	counter8 - counter
	counter9 - counter
	counter10 - counter
	counter11 - counter
	counter12 - counter
)
(:init
	(= (max_int) 26)
	(= (value counter0) 19)
	(= (value counter1) 8)
	(= (value counter2) 23)
	(= (value counter3) 11)
	(= (value counter4) 25)
	(= (value counter5) 22)
	(= (value counter6) 26)
	(= (value counter7) 23)
	(= (value counter8) 20)
	(= (value counter9) 16)
	(= (value counter10) 0)
	(= (value counter11) 26)
	(= (value counter12) 14)
	(= (lower_bound) 0)
	(= (upper_bound) 26)
	(= (delta) 0)
)
(:goal (and
	(<= (+ (value counter0) 1) (value counter1))
	(<= (+ (value counter1) 1) (value counter2))
	(<= (+ (value counter2) 1) (value counter3))
	(<= (+ (value counter3) 1) (value counter4))
	(<= (+ (value counter4) 1) (value counter5))
	(<= (+ (value counter5) 1) (value counter6))
	(<= (+ (value counter6) 1) (value counter7))
	(<= (+ (value counter7) 1) (value counter8))
	(<= (+ (value counter8) 1) (value counter9))
	(<= (+ (value counter9) 1) (value counter10))
	(<= (+ (value counter10) 1) (value counter11))
	(<= (+ (value counter11) 1) (value counter12))
))
)

