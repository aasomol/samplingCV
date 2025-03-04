(define (problem procurement)
(:domain procurement)
(:objects 
	A - itemA
	B - itemB
	C - itemC
	D - itemD
	E - itemE
	F - itemF
	G - itemG
	H - itemH
	I - itemI
	J - itemJ
	K - itemK
	L - itemL
	M - itemM
	N - itemN
	O - itemO
	P - itemP
	Q - itemQ
	R - itemR
	S - itemS
	supplier0 - supplier
	supplier1 - supplier
	supplier2 - supplier
	supplier3 - supplier
	supplier4 - supplier
	supplier5 - supplier
	supplier6 - supplier
	supplier7 - supplier
	supplier8 - supplier
	supplier9 - supplier
	customer0 - customer
	customer1 - customer
	customer2 - customer
	customer3 - customer
	customer4 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
	workshop3 - workshop
	workshop4 - workshop
	workshop5 - workshop
	workshop6 - workshop
	workshop7 - workshop
	workshop8 - workshop
	workshop9 - workshop
)
(:init
	(available)
	(can_produce_A workshop3)
	(can_produce_B workshop1)
	(can_produce_C workshop3)
	(can_produce_F workshop6)
	(can_produce_H workshop5)
	(can_produce_K workshop2)
	(can_produce_L workshop7)
	(can_produce_M workshop7)
	(can_supply_D supplier4)
	(can_supply_E supplier0)
	(can_supply_G supplier1)
	(can_supply_I supplier5)
	(can_supply_J supplier9)
	(can_supply_N supplier5)
	(can_supply_O supplier9)
	(can_supply_P supplier9)
	(can_supply_Q supplier7)
	(can_supply_R supplier3)
	(can_supply_S supplier5)
	(at workshop9)
	(= (stock A) 0)
	(= (stock B) 0)
	(= (stock C) 0)
	(= (stock D) 0)
	(= (stock E) 0)
	(= (stock F) 0)
	(= (stock G) 0)
	(= (stock H) 0)
	(= (stock I) 0)
	(= (stock J) 0)
	(= (stock K) 0)
	(= (stock L) 0)
	(= (stock M) 0)
	(= (stock N) 0)
	(= (stock O) 0)
	(= (stock P) 0)
	(= (stock Q) 0)
	(= (stock R) 0)
	(= (stock S) 0)
	(= (item-goal A) 14)
	(= (item-goal B) 12)
	(= (item-goal C) 3)
	(= (item-goal D) 5)
	(= (item-goal E) 11)
	(= (item-goal F) 13)
	(= (item-goal G) 5)
	(= (item-goal H) 5)
	(= (item-goal I) 6)
	(= (item-goal J) 5)
	(= (item-goal K) 5)
	(= (item-goal L) 2)
	(= (item-goal M) 4)
	(= (item-goal N) 14)
	(= (item-goal O) 3)
	(= (item-goal P) 13)
	(= (item-goal Q) 8)
	(= (item-goal R) 4)
	(= (item-goal S) 2)
)
(:goal (and
	(delivered D customer0)
	(delivered L customer1)
	(delivered I customer2)
	(delivered P customer3)
	(delivered O customer4)
))
)

