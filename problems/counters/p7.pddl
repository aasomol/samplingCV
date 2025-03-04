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
)
(:init
	(= (max_int) 14)
	(= (value counter0) 9)
	(= (value counter1) 4)
	(= (value counter2) 11)
	(= (value counter3) 5)
	(= (value counter4) 12)
	(= (value counter5) 11)
	(= (value counter6) 13)
	(= (lower_bound) 0)
	(= (upper_bound) 14)
	(= (delta) 0)
)
(:goal (and
	(<= (+ (value counter0) 1) (value counter1))
	(<= (+ (value counter1) 1) (value counter2))
	(<= (+ (value counter2) 1) (value counter3))
	(<= (+ (value counter3) 1) (value counter4))
	(<= (+ (value counter4) 1) (value counter5))
	(<= (+ (value counter5) 1) (value counter6))
))
)

