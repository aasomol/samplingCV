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
	customer2 - customer
	customer3 - customer
	customer4 - customer
	customer5 - customer
	customer6 - customer
	customer7 - customer
	customer8 - customer
	customer9 - customer
	customer10 - customer
	customer11 - customer
	customer12 - customer
	customer13 - customer
	customer14 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
	workshop3 - workshop
)
(:init
	(available)
	(can_produce_A workshop1)
	(can_produce_B workshop0)
	(can_produce_C workshop0)
	(can_produce_F workshop3)
	(can_produce_H workshop3)
	(can_produce_K workshop0)
	(can_produce_L workshop1)
	(can_produce_M workshop0)
	(can_supply_D supplier3)
	(can_supply_E supplier1)
	(can_supply_G supplier1)
	(can_supply_I supplier3)
	(can_supply_J supplier3)
	(can_supply_N supplier2)
	(can_supply_O supplier2)
	(can_supply_P supplier2)
	(can_supply_Q supplier1)
	(can_supply_R supplier0)
	(can_supply_S supplier3)
	(at workshop3)
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
	(= (item-goal B) 2)
	(= (item-goal C) 7)
	(= (item-goal D) 5)
	(= (item-goal E) 10)
	(= (item-goal F) 7)
	(= (item-goal G) 8)
	(= (item-goal H) 2)
	(= (item-goal I) 4)
	(= (item-goal J) 12)
	(= (item-goal K) 2)
	(= (item-goal L) 10)
	(= (item-goal M) 12)
	(= (item-goal N) 10)
	(= (item-goal O) 1)
	(= (item-goal P) 10)
	(= (item-goal Q) 8)
	(= (item-goal R) 6)
	(= (item-goal S) 2)
)
(:goal (and
	(delivered D customer0)
	(delivered R customer1)
	(delivered G customer2)
	(delivered M customer3)
	(delivered E customer4)
	(delivered B customer5)
	(delivered J customer6)
	(delivered H customer7)
	(delivered F customer8)
	(delivered Q customer9)
	(delivered N customer10)
	(delivered K customer11)
	(delivered O customer12)
	(delivered C customer13)
	(delivered L customer14)
))
)

