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
	counter13 - counter
	counter14 - counter
	counter15 - counter
	counter16 - counter
	counter17 - counter
	counter18 - counter
	counter19 - counter
	counter20 - counter
	counter21 - counter
	counter22 - counter
	counter23 - counter
	counter24 - counter
	counter25 - counter
	counter26 - counter
)
(:init
	(= (max_int) 54)
	(= (value counter0) 39)
	(= (value counter1) 16)
	(= (value counter2) 47)
	(= (value counter3) 22)
	(= (value counter4) 50)
	(= (value counter5) 44)
	(= (value counter6) 53)
	(= (value counter7) 47)
	(= (value counter8) 41)
	(= (value counter9) 33)
	(= (value counter10) 1)
	(= (value counter11) 53)
	(= (value counter12) 29)
	(= (value counter13) 49)
	(= (value counter14) 15)
	(= (value counter15) 41)
	(= (value counter16) 3)
	(= (value counter17) 10)
	(= (value counter18) 7)
	(= (value counter19) 23)
	(= (value counter20) 30)
	(= (value counter21) 15)
	(= (value counter22) 24)
	(= (value counter23) 34)
	(= (value counter24) 6)
	(= (value counter25) 36)
	(= (value counter26) 15)
	(= (lower_bound) 0)
	(= (upper_bound) 54)
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
	(<= (+ (value counter12) 1) (value counter13))
	(<= (+ (value counter13) 1) (value counter14))
	(<= (+ (value counter14) 1) (value counter15))
	(<= (+ (value counter15) 1) (value counter16))
	(<= (+ (value counter16) 1) (value counter17))
	(<= (+ (value counter17) 1) (value counter18))
	(<= (+ (value counter18) 1) (value counter19))
	(<= (+ (value counter19) 1) (value counter20))
	(<= (+ (value counter20) 1) (value counter21))
	(<= (+ (value counter21) 1) (value counter22))
	(<= (+ (value counter22) 1) (value counter23))
	(<= (+ (value counter23) 1) (value counter24))
	(<= (+ (value counter24) 1) (value counter25))
	(<= (+ (value counter25) 1) (value counter26))
))
)

