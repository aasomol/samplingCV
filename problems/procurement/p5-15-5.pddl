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
	customer10 - customer
	customer11 - customer
	customer12 - customer
	customer13 - customer
	customer14 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
	workshop3 - workshop
	workshop4 - workshop
)
(:init
	(available)
	(can_produce_A workshop1)
	(can_produce_B workshop0)
	(can_produce_C workshop4)
	(can_produce_F workshop0)
	(can_produce_H workshop2)
	(can_produce_K workshop3)
	(can_produce_L workshop2)
	(can_produce_M workshop2)
	(can_supply_D supplier4)
	(can_supply_E supplier1)
	(can_supply_G supplier4)
	(can_supply_I supplier3)
	(can_supply_J supplier1)
	(can_supply_N supplier4)
	(can_supply_O supplier2)
	(can_supply_P supplier3)
	(can_supply_Q supplier1)
	(can_supply_R supplier4)
	(can_supply_S supplier0)
	(at customer8)
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
	(= (item-goal B) 7)
	(= (item-goal C) 5)
	(= (item-goal D) 14)
	(= (item-goal E) 4)
	(= (item-goal F) 3)
	(= (item-goal G) 12)
	(= (item-goal H) 6)
	(= (item-goal I) 2)
	(= (item-goal J) 1)
	(= (item-goal K) 7)
	(= (item-goal L) 2)
	(= (item-goal M) 5)
	(= (item-goal N) 5)
	(= (item-goal O) 14)
	(= (item-goal P) 8)
	(= (item-goal Q) 13)
	(= (item-goal R) 12)
	(= (item-goal S) 11)
)
(:goal (and
	(delivered O customer0)
	(delivered N customer1)
	(delivered H customer2)
	(delivered J customer3)
	(delivered G customer4)
	(delivered C customer5)
	(delivered K customer6)
	(delivered B customer7)
	(delivered A customer8)
	(delivered F customer9)
	(delivered S customer10)
	(delivered Q customer11)
	(delivered I customer12)
	(delivered L customer13)
	(delivered P customer14)
))
)

