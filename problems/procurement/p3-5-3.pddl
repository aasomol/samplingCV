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
	customer2 - customer
	customer3 - customer
	customer4 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
)
(:init
	(available)
	(can_produce_A workshop1)
	(can_produce_B workshop1)
	(can_produce_C workshop0)
	(can_produce_F workshop0)
	(can_produce_H workshop2)
	(can_produce_K workshop0)
	(can_produce_L workshop1)
	(can_produce_M workshop2)
	(can_supply_D supplier0)
	(can_supply_E supplier1)
	(can_supply_G supplier0)
	(can_supply_I supplier2)
	(can_supply_J supplier1)
	(can_supply_N supplier1)
	(can_supply_O supplier0)
	(can_supply_P supplier0)
	(can_supply_Q supplier2)
	(can_supply_R supplier0)
	(can_supply_S supplier1)
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
	(= (item-goal A) 4)
	(= (item-goal B) 12)
	(= (item-goal C) 8)
	(= (item-goal D) 2)
	(= (item-goal E) 5)
	(= (item-goal F) 2)
	(= (item-goal G) 10)
	(= (item-goal H) 13)
	(= (item-goal I) 8)
	(= (item-goal J) 12)
	(= (item-goal K) 3)
	(= (item-goal L) 8)
	(= (item-goal M) 3)
	(= (item-goal N) 13)
	(= (item-goal O) 14)
	(= (item-goal P) 2)
	(= (item-goal Q) 5)
	(= (item-goal R) 3)
	(= (item-goal S) 3)
)
(:goal (and
	(delivered C customer0)
	(delivered R customer1)
	(delivered S customer2)
	(delivered J customer3)
	(delivered H customer4)
))
)

