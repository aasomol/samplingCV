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
	customer0 - customer
	customer1 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
	workshop3 - workshop
)
(:init
	(available)
	(can_produce_A workshop2)
	(can_produce_B workshop3)
	(can_produce_C workshop1)
	(can_produce_F workshop0)
	(can_produce_H workshop0)
	(can_produce_K workshop0)
	(can_produce_L workshop1)
	(can_produce_M workshop1)
	(can_supply_D supplier2)
	(can_supply_E supplier1)
	(can_supply_G supplier3)
	(can_supply_I supplier0)
	(can_supply_J supplier1)
	(can_supply_N supplier0)
	(can_supply_O supplier0)
	(can_supply_P supplier2)
	(can_supply_Q supplier3)
	(can_supply_R supplier1)
	(can_supply_S supplier2)
	(at supplier1)
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
	(= (item-goal A) 5)
	(= (item-goal B) 3)
	(= (item-goal C) 11)
	(= (item-goal D) 1)
	(= (item-goal E) 13)
	(= (item-goal F) 13)
	(= (item-goal G) 2)
	(= (item-goal H) 2)
	(= (item-goal I) 1)
	(= (item-goal J) 1)
	(= (item-goal K) 11)
	(= (item-goal L) 2)
	(= (item-goal M) 1)
	(= (item-goal N) 10)
	(= (item-goal O) 14)
	(= (item-goal P) 5)
	(= (item-goal Q) 5)
	(= (item-goal R) 10)
	(= (item-goal S) 2)
)
(:goal (and
	(delivered Q customer0)
	(delivered C customer1)
))
)

