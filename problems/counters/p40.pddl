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
	counter30 - counter
	counter31 - counter
	counter32 - counter
	counter33 - counter
	counter34 - counter
	counter35 - counter
	counter36 - counter
	counter37 - counter
	counter38 - counter
	counter39 - counter
)
(:init
	(= (max_int) 80)
	(= (value counter0) 79)
	(= (value counter1) 32)
	(= (value counter2) 45)
	(= (value counter3) 67)
	(= (value counter4) 3)
	(= (value counter5) 59)
	(= (value counter6) 31)
	(= (value counter7) 6)
	(= (value counter8) 20)
	(= (value counter9) 14)
	(= (value counter10) 47)
	(= (value counter11) 60)
	(= (value counter12) 31)
	(= (value counter13) 48)
	(= (value counter14) 69)
	(= (value counter15) 13)
	(= (value counter16) 73)
	(= (value counter17) 31)
	(= (value counter18) 1)
	(= (value counter19) 27)
	(= (value counter20) 52)
	(= (value counter21) 35)
	(= (value counter22) 23)
	(= (value counter23) 49)
	(= (value counter24) 20)
	(= (value counter25) 9)
	(= (value counter26) 17)
	(= (value counter27) 79)
	(= (value counter28) 79)
	(= (value counter29) 56)
	(= (value counter30) 16)
	(= (value counter31) 16)
	(= (value counter32) 0)
	(= (value counter33) 0)
	(= (value counter34) 26)
	(= (value counter35) 27)
	(= (value counter36) 21)
	(= (value counter37) 21)
	(= (value counter38) 37)
	(= (value counter39) 40)
	(= (lower_bound) 0)
	(= (upper_bound) 80)
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
	(<= (+ (value counter29) 1) (value counter30))
	(<= (+ (value counter30) 1) (value counter31))
	(<= (+ (value counter31) 1) (value counter32))
	(<= (+ (value counter32) 1) (value counter33))
	(<= (+ (value counter33) 1) (value counter34))
	(<= (+ (value counter34) 1) (value counter35))
	(<= (+ (value counter35) 1) (value counter36))
	(<= (+ (value counter36) 1) (value counter37))
	(<= (+ (value counter37) 1) (value counter38))
	(<= (+ (value counter38) 1) (value counter39))
))
)

