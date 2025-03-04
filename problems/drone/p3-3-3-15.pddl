(define (problem disc_drone)
(:domain disc_drone)
(:objects 
	loc0 - location
	loc1 - location
	loc2 - location
	loc3 - location
	loc4 - location
	loc5 - location
	loc6 - location
	loc7 - location
	loc8 - location
	loc9 - location
	loc10 - location
	loc11 - location
	loc12 - location
	loc13 - location
	loc14 - location
)
(:init
	(= (x) 0)
	(= (y) 0)
	(= (z) 0)
	(= (min_x) 0)
	(= (min_y) 0)
	(= (min_z) 0)
	(= (max_x) 3)
	(= (max_y) 3)
	(= (max_z) 3)
	(= (xl loc0) 3)
	(= (yl loc0) 3)
	(= (zl loc0) 1)
	(= (xl loc1) 0)
	(= (yl loc1) 2)
	(= (zl loc1) 0)
	(= (xl loc2) 3)
	(= (yl loc2) 1)
	(= (zl loc2) 3)
	(= (xl loc3) 0)
	(= (yl loc3) 0)
	(= (zl loc3) 0)
	(= (xl loc4) 0)
	(= (yl loc4) 3)
	(= (zl loc4) 0)
	(= (xl loc5) 0)
	(= (yl loc5) 1)
	(= (zl loc5) 3)
	(= (xl loc6) 1)
	(= (yl loc6) 1)
	(= (zl loc6) 3)
	(= (xl loc7) 2)
	(= (yl loc7) 0)
	(= (zl loc7) 3)
	(= (xl loc8) 0)
	(= (yl loc8) 3)
	(= (zl loc8) 3)
	(= (xl loc9) 3)
	(= (yl loc9) 3)
	(= (zl loc9) 0)
	(= (xl loc10) 3)
	(= (yl loc10) 2)
	(= (zl loc10) 1)
	(= (xl loc11) 0)
	(= (yl loc11) 2)
	(= (zl loc11) 3)
	(= (xl loc12) 3)
	(= (yl loc12) 1)
	(= (zl loc12) 2)
	(= (xl loc13) 0)
	(= (yl loc13) 1)
	(= (zl loc13) 2)
	(= (xl loc14) 1)
	(= (yl loc14) 0)
	(= (zl loc14) 2)
	(= (battery-level) 47)
	(= (battery-level-full) 47)
	(= (low_deltax) 1)
	(= (low_deltay) 1)
	(= (low_deltaz) 1)
	(= (deltax) 1)
	(= (deltay) 1)
	(= (deltaz) 1)
	(= (up_deltax) 3)
	(= (up_deltay) 3)
	(= (up_deltaz) 3)
)
(:goal (and
	(visited loc0)
	(visited loc1)
	(visited loc2)
	(visited loc3)
	(visited loc4)
	(visited loc5)
	(visited loc6)
	(visited loc7)
	(visited loc8)
	(visited loc9)
	(visited loc10)
	(visited loc11)
	(visited loc12)
	(visited loc13)
	(visited loc14)
	(= (x) 0)
	(= (y) 0)
	(= (z) 0)
))
)

