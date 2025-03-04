(define (problem sailing)
(:domain sailing)
(:objects 
	boat0 - boat
	boat0 - boat
	boat1 - boat
	boat1 - boat
	boat2 - boat
	boat2 - boat
	person0 - person
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
)
(:init
	(= (x boat0) -1)
	(= (y boat0) -1)
	(= (x boat1) -1)
	(= (y boat1) 0)
	(= (x boat2) -1)
	(= (y boat2) 1)
	(= (d person0) -78)
	(= (d person1) -101)
	(= (d person2) -104)
	(= (d person3) 108)
	(= (d person4) 83)
	(= (d person5) 108)
	(= (min_x) -150)
	(= (min_y) -150)
	(= (max_x) 150)
	(= (max_y) 150)
	(= (lower_bound) 1)
	(= (upper_bound) 10)
	(= (delta) 1)
)
(:goal (and
	(saved person0)
	(saved person1)
	(saved person2)
	(saved person3)
	(saved person4)
	(saved person5)
))
)

