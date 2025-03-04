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
	customer5 - customer
	customer6 - customer
	customer7 - customer
	customer8 - customer
	customer9 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
	workshop3 - workshop
	workshop4 - workshop
)
(:init
	(available)
	(can_produce_A workshop3)
	(can_produce_B workshop0)
	(can_produce_C workshop0)
	(can_produce_F workshop2)
	(can_produce_H workshop3)
	(can_produce_K workshop3)
	(can_produce_L workshop4)
	(can_produce_M workshop1)
	(can_supply_D supplier1)
	(can_supply_E supplier0)
	(can_supply_G supplier1)
	(can_supply_I supplier3)
	(can_supply_J supplier2)
	(can_supply_N supplier1)
	(can_supply_O supplier1)
	(can_supply_P supplier3)
	(can_supply_Q supplier2)
	(can_supply_R supplier1)
	(can_supply_S supplier4)
	(at customer9)
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
	(= (item-goal B) 2)
	(= (item-goal C) 7)
	(= (item-goal D) 2)
	(= (item-goal E) 8)
	(= (item-goal F) 7)
	(= (item-goal G) 12)
	(= (item-goal H) 6)
	(= (item-goal I) 10)
	(= (item-goal J) 11)
	(= (item-goal K) 13)
	(= (item-goal L) 12)
	(= (item-goal M) 10)
	(= (item-goal N) 11)
	(= (item-goal O) 8)
	(= (item-goal P) 5)
	(= (item-goal Q) 7)
	(= (item-goal R) 1)
	(= (item-goal S) 2)
)
(:goal (and
	(delivered C customer0)
	(delivered K customer1)
	(delivered I customer2)
	(delivered D customer3)
	(delivered L customer4)
	(delivered N customer5)
	(delivered J customer6)
	(delivered P customer7)
	(delivered E customer8)
	(delivered R customer9)
))
)

