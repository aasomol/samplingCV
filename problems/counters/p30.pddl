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
	counter27 - counter
	counter28 - counter
	counter29 - counter
)
(:init
	(= (max_int) 60)
	(= (value counter0) 39)
	(= (value counter1) 16)
	(= (value counter2) 47)
	(= (value counter3) 22)
	(= (value counter4) 50)
	(= (value counter5) 44)
	(= (value counter6) 60)
	(= (value counter7) 53)
	(= (value counter8) 47)
	(= (value counter9) 41)
	(= (value counter10) 59)
	(= (value counter11) 33)
	(= (value counter12) 1)
	(= (value counter13) 53)
	(= (value counter14) 29)
	(= (value counter15) 49)
	(= (value counter16) 60)
	(= (value counter17) 15)
	(= (value counter18) 41)
	(= (value counter19) 3)
	(= (value counter20) 57)
	(= (value counter21) 10)
	(= (value counter22) 7)
	(= (value counter23) 23)
	(= (value counter24) 30)
	(= (value counter25) 55)
	(= (value counter26) 15)
	(= (value counter27) 24)
	(= (value counter28) 34)
	(= (value counter29) 6)
	(= (lower_bound) 0)
	(= (upper_bound) 60)
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
	(<= (+ (value counter26) 1) (value counter27))
	(<= (+ (value counter27) 1) (value counter28))
	(<= (+ (value counter28) 1) (value counter29))
))
)

