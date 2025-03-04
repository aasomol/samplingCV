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
	customer8 - customer
	customer9 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
)
(:init
	(available)
	(can_produce_A workshop2)
	(can_produce_B workshop0)
	(can_produce_C workshop1)
	(can_produce_F workshop1)
	(can_produce_H workshop0)
	(can_produce_K workshop1)
	(can_produce_L workshop0)
	(can_produce_M workshop0)
	(can_supply_D supplier2)
	(can_supply_E supplier1)
	(can_supply_G supplier0)
	(can_supply_I supplier1)
	(can_supply_J supplier1)
	(can_supply_N supplier2)
	(can_supply_O supplier1)
	(can_supply_P supplier2)
	(can_supply_Q supplier0)
	(can_supply_R supplier1)
	(can_supply_S supplier2)
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
	(= (item-goal A) 7)
	(= (item-goal B) 12)
	(= (item-goal C) 8)
	(= (item-goal D) 6)
	(= (item-goal E) 11)
	(= (item-goal F) 4)
	(= (item-goal G) 4)
	(= (item-goal H) 13)
	(= (item-goal I) 3)
	(= (item-goal J) 13)
	(= (item-goal K) 9)
	(= (item-goal L) 12)
	(= (item-goal M) 4)
	(= (item-goal N) 13)
	(= (item-goal O) 6)
	(= (item-goal P) 5)
	(= (item-goal Q) 6)
	(= (item-goal R) 6)
	(= (item-goal S) 13)
)
(:goal (and
	(delivered J customer0)
	(delivered R customer1)
	(delivered D customer2)
	(delivered Q customer3)
	(delivered N customer4)
	(delivered O customer5)
	(delivered F customer6)
	(delivered P customer7)
	(delivered H customer8)
	(delivered G customer9)
))
)

