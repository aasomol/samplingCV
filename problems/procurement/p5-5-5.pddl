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
)
(:init
	(available)
	(can_produce_A workshop3)
	(can_produce_B workshop1)
	(can_produce_C workshop3)
	(can_produce_F workshop4)
	(can_produce_H workshop2)
	(can_produce_K workshop0)
	(can_produce_L workshop3)
	(can_produce_M workshop3)
	(can_supply_D supplier3)
	(can_supply_E supplier4)
	(can_supply_G supplier1)
	(can_supply_I supplier1)
	(can_supply_J supplier0)
	(can_supply_N supplier1)
	(can_supply_O supplier4)
	(can_supply_P supplier1)
	(can_supply_Q supplier4)
	(can_supply_R supplier1)
	(can_supply_S supplier0)
	(at workshop1)
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
	(= (item-goal A) 6)
	(= (item-goal B) 14)
	(= (item-goal C) 6)
	(= (item-goal D) 2)
	(= (item-goal E) 11)
	(= (item-goal F) 14)
	(= (item-goal G) 7)
	(= (item-goal H) 8)
	(= (item-goal I) 10)
	(= (item-goal J) 11)
	(= (item-goal K) 4)
	(= (item-goal L) 14)
	(= (item-goal M) 10)
	(= (item-goal N) 8)
	(= (item-goal O) 3)
	(= (item-goal P) 10)
	(= (item-goal Q) 6)
	(= (item-goal R) 7)
	(= (item-goal S) 8)
)
(:goal (and
	(delivered R customer0)
	(delivered I customer1)
	(delivered E customer2)
	(delivered M customer3)
	(delivered O customer4)
))
)

