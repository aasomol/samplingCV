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
)
(:init
	(= (max_int) 20)
	(= (value counter0) 19)
	(= (value counter1) 8)
	(= (value counter2) 11)
	(= (value counter3) 20)
	(= (value counter4) 16)
	(= (value counter5) 0)
	(= (value counter6) 14)
	(= (value counter7) 7)
	(= (value counter8) 20)
	(= (value counter9) 1)
	(= (lower_bound) 0)
	(= (upper_bound) 20)
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
))
)

