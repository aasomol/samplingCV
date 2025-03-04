(define (problem block-grouping)
(:domain block-grouping)
(:objects 
	b0 - block
	b1 - block
	b2 - block
	b3 - block
	b4 - block
)
(:init
	(= (x b0) 20)
	(= (y b0) 9)
	(= (x b1) 12)
	(= (y b1) 17)
	(= (x b2) 1)
	(= (y b2) 15)
	(= (x b3) 8)
	(= (y b3) 2)
	(= (x b4) 6)
	(= (y b4) 4)
	(= (max_x) 20)
	(= (min_x) 0)
	(= (max_y) 20)
	(= (min_y) 0)
	(= (lower_bound) 0)
	(= (upper_bound) 19)
	(= (delta) 0)
)
(:goal (and
	(or (not (= (x b0) (x b1))) (not (= (y b0) (y b1))))
	(or (not (= (x b0) (x b2))) (not (= (y b0) (y b2))))
	(= (x b0) (x b3))
	(= (y b0) (y b3))
	(= (x b0) (x b4))
	(= (y b0) (y b4))
	(or (not (= (x b1) (x b2))) (not (= (y b1) (y b2))))
	(or (not (= (x b1) (x b3))) (not (= (y b1) (y b3))))
	(or (not (= (x b1) (x b4))) (not (= (y b1) (y b4))))
	(or (not (= (x b2) (x b3))) (not (= (y b2) (y b3))))
	(or (not (= (x b2) (x b4))) (not (= (y b2) (y b4))))
	(= (x b3) (x b4))
	(= (y b3) (y b4))
))
)

