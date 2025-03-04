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
	customer0 - customer
	customer1 - customer
	customer2 - customer
	customer3 - customer
	customer4 - customer
	workshop0 - workshop
	workshop1 - workshop
)
(:init
	(available)
	(can_produce_A workshop0)
	(can_produce_B workshop1)
	(can_produce_C workshop1)
	(can_produce_F workshop1)
	(can_produce_H workshop1)
	(can_produce_K workshop0)
	(can_produce_L workshop1)
	(can_produce_M workshop0)
	(can_supply_D supplier0)
	(can_supply_E supplier1)
	(can_supply_G supplier0)
	(can_supply_I supplier1)
	(can_supply_J supplier0)
	(can_supply_N supplier0)
	(can_supply_O supplier0)
	(can_supply_P supplier0)
	(can_supply_Q supplier1)
	(can_supply_R supplier1)
	(can_supply_S supplier0)
	(at customer2)
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
	(= (item-goal B) 11)
	(= (item-goal C) 9)
	(= (item-goal D) 1)
	(= (item-goal E) 14)
	(= (item-goal F) 7)
	(= (item-goal G) 6)
	(= (item-goal H) 1)
	(= (item-goal I) 3)
	(= (item-goal J) 1)
	(= (item-goal K) 3)
	(= (item-goal L) 10)
	(= (item-goal M) 7)
	(= (item-goal N) 11)
	(= (item-goal O) 4)
	(= (item-goal P) 6)
	(= (item-goal Q) 11)
	(= (item-goal R) 13)
	(= (item-goal S) 5)
)
(:goal (and
	(delivered B customer0)
	(delivered S customer1)
	(delivered L customer2)
	(delivered P customer3)
	(delivered A customer4)
))
)

