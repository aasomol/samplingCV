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
	customer0 - customer
	customer1 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
)
(:init
	(available)
	(can_produce_A workshop1)
	(can_produce_B workshop2)
	(can_produce_C workshop1)
	(can_produce_F workshop2)
	(can_produce_H workshop0)
	(can_produce_K workshop2)
	(can_produce_L workshop1)
	(can_produce_M workshop1)
	(can_supply_D supplier1)
	(can_supply_E supplier2)
	(can_supply_G supplier0)
	(can_supply_I supplier1)
	(can_supply_J supplier0)
	(can_supply_N supplier2)
	(can_supply_O supplier2)
	(can_supply_P supplier0)
	(can_supply_Q supplier0)
	(can_supply_R supplier1)
	(can_supply_S supplier1)
	(at workshop2)
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
	(= (item-goal A) 10)
	(= (item-goal B) 6)
	(= (item-goal C) 1)
	(= (item-goal D) 6)
	(= (item-goal E) 8)
	(= (item-goal F) 5)
	(= (item-goal G) 10)
	(= (item-goal H) 14)
	(= (item-goal I) 14)
	(= (item-goal J) 8)
	(= (item-goal K) 6)
	(= (item-goal L) 4)
	(= (item-goal M) 3)
	(= (item-goal N) 8)
	(= (item-goal O) 11)
	(= (item-goal P) 8)
	(= (item-goal Q) 5)
	(= (item-goal R) 9)
	(= (item-goal S) 7)
)
(:goal (and
	(delivered Q customer0)
	(delivered R customer1)
))
)

