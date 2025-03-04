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
	customer5 - customer
	customer6 - customer
	customer7 - customer
	workshop0 - workshop
	workshop1 - workshop
)
(:init
	(available)
	(can_produce_A workshop1)
	(can_produce_B workshop1)
	(can_produce_C workshop0)
	(can_produce_F workshop0)
	(can_produce_H workshop1)
	(can_produce_K workshop1)
	(can_produce_L workshop1)
	(can_produce_M workshop0)
	(can_supply_D supplier1)
	(can_supply_E supplier0)
	(can_supply_G supplier0)
	(can_supply_I supplier0)
	(can_supply_J supplier0)
	(can_supply_N supplier1)
	(can_supply_O supplier1)
	(can_supply_P supplier1)
	(can_supply_Q supplier0)
	(can_supply_R supplier0)
	(can_supply_S supplier0)
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
	(= (item-goal A) 4)
	(= (item-goal B) 8)
	(= (item-goal C) 13)
	(= (item-goal D) 12)
	(= (item-goal E) 12)
	(= (item-goal F) 12)
	(= (item-goal G) 8)
	(= (item-goal H) 4)
	(= (item-goal I) 2)
	(= (item-goal J) 3)
	(= (item-goal K) 3)
	(= (item-goal L) 11)
	(= (item-goal M) 3)
	(= (item-goal N) 3)
	(= (item-goal O) 9)
	(= (item-goal P) 1)
	(= (item-goal Q) 14)
	(= (item-goal R) 3)
	(= (item-goal S) 12)
)
(:goal (and
	(delivered G customer0)
	(delivered D customer1)
	(delivered L customer2)
	(delivered M customer3)
	(delivered C customer4)
	(delivered R customer5)
	(delivered P customer6)
	(delivered E customer7)
))
)

