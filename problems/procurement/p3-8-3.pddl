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
	customer5 - customer
	customer6 - customer
	customer7 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
)
(:init
	(available)
	(can_produce_A workshop0)
	(can_produce_B workshop2)
	(can_produce_C workshop2)
	(can_produce_F workshop1)
	(can_produce_H workshop2)
	(can_produce_K workshop0)
	(can_produce_L workshop2)
	(can_produce_M workshop2)
	(can_supply_D supplier0)
	(can_supply_E supplier2)
	(can_supply_G supplier2)
	(can_supply_I supplier1)
	(can_supply_J supplier2)
	(can_supply_N supplier1)
	(can_supply_O supplier1)
	(can_supply_P supplier1)
	(can_supply_Q supplier2)
	(can_supply_R supplier1)
	(can_supply_S supplier1)
	(at customer5)
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
	(= (item-goal A) 8)
	(= (item-goal B) 2)
	(= (item-goal C) 14)
	(= (item-goal D) 7)
	(= (item-goal E) 4)
	(= (item-goal F) 3)
	(= (item-goal G) 7)
	(= (item-goal H) 2)
	(= (item-goal I) 6)
	(= (item-goal J) 5)
	(= (item-goal K) 9)
	(= (item-goal L) 4)
	(= (item-goal M) 3)
	(= (item-goal N) 2)
	(= (item-goal O) 3)
	(= (item-goal P) 2)
	(= (item-goal Q) 5)
	(= (item-goal R) 10)
	(= (item-goal S) 4)
)
(:goal (and
	(delivered A customer0)
	(delivered N customer1)
	(delivered Q customer2)
	(delivered I customer3)
	(delivered O customer4)
	(delivered G customer5)
	(delivered E customer6)
	(delivered D customer7)
))
)

