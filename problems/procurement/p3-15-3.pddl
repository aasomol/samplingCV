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
	customer10 - customer
	customer11 - customer
	customer12 - customer
	customer13 - customer
	customer14 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
)
(:init
	(available)
	(can_produce_A workshop0)
	(can_produce_B workshop0)
	(can_produce_C workshop2)
	(can_produce_F workshop0)
	(can_produce_H workshop2)
	(can_produce_K workshop1)
	(can_produce_L workshop2)
	(can_produce_M workshop1)
	(can_supply_D supplier0)
	(can_supply_E supplier1)
	(can_supply_G supplier0)
	(can_supply_I supplier0)
	(can_supply_J supplier2)
	(can_supply_N supplier0)
	(can_supply_O supplier2)
	(can_supply_P supplier2)
	(can_supply_Q supplier2)
	(can_supply_R supplier1)
	(can_supply_S supplier2)
	(at supplier0)
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
	(= (item-goal A) 14)
	(= (item-goal B) 8)
	(= (item-goal C) 10)
	(= (item-goal D) 2)
	(= (item-goal E) 12)
	(= (item-goal F) 3)
	(= (item-goal G) 6)
	(= (item-goal H) 7)
	(= (item-goal I) 1)
	(= (item-goal J) 13)
	(= (item-goal K) 13)
	(= (item-goal L) 5)
	(= (item-goal M) 4)
	(= (item-goal N) 12)
	(= (item-goal O) 4)
	(= (item-goal P) 12)
	(= (item-goal Q) 4)
	(= (item-goal R) 4)
	(= (item-goal S) 13)
)
(:goal (and
	(delivered C customer0)
	(delivered D customer1)
	(delivered S customer2)
	(delivered M customer3)
	(delivered B customer4)
	(delivered G customer5)
	(delivered L customer6)
	(delivered Q customer7)
	(delivered O customer8)
	(delivered R customer9)
	(delivered P customer10)
	(delivered K customer11)
	(delivered E customer12)
	(delivered A customer13)
	(delivered I customer14)
))
)

