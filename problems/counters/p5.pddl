(define (problem counters)
(:domain counters)
(:objects 
	counter0 - counter
	counter1 - counter
	counter2 - counter
	counter3 - counter
	counter4 - counter
)
(:init
	(= (max_int) 10)
	(= (value counter0) 9)
	(= (value counter1) 4)
	(= (value counter2) 5)
	(= (value counter3) 10)
	(= (value counter4) 8)
	(= (lower_bound) 0)
	(= (upper_bound) 10)
	(= (delta) 0)
)
(:goal (and
	(<= (+ (value counter0) 1) (value counter1))
	(<= (+ (value counter1) 1) (value counter2))
	(<= (+ (value counter2) 1) (value counter3))
	(<= (+ (value counter3) 1) (value counter4))
))
)

