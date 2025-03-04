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
	customer8 - customer
	customer9 - customer
	customer10 - customer
	customer11 - customer
	customer12 - customer
	customer13 - customer
	customer14 - customer
	workshop0 - workshop
	workshop1 - workshop
)
(:init
	(available)
	(can_produce_A workshop1)
	(can_produce_B workshop1)
	(can_produce_C workshop1)
	(can_produce_F workshop0)
	(can_produce_H workshop0)
	(can_produce_K workshop0)
	(can_produce_L workshop0)
	(can_produce_M workshop0)
	(can_supply_D supplier1)
	(can_supply_E supplier1)
	(can_supply_G supplier0)
	(can_supply_I supplier0)
	(can_supply_J supplier1)
	(can_supply_N supplier0)
	(can_supply_O supplier0)
	(can_supply_P supplier0)
	(can_supply_Q supplier1)
	(can_supply_R supplier0)
	(can_supply_S supplier1)
	(at customer1)
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
	(= (item-goal A) 13)
	(= (item-goal B) 10)
	(= (item-goal C) 2)
	(= (item-goal D) 9)
	(= (item-goal E) 9)
	(= (item-goal F) 10)
	(= (item-goal G) 11)
	(= (item-goal H) 11)
	(= (item-goal I) 3)
	(= (item-goal J) 10)
	(= (item-goal K) 9)
	(= (item-goal L) 6)
	(= (item-goal M) 3)
	(= (item-goal N) 1)
	(= (item-goal O) 9)
	(= (item-goal P) 7)
	(= (item-goal Q) 6)
	(= (item-goal R) 11)
	(= (item-goal S) 11)
)
(:goal (and
	(delivered P customer0)
	(delivered J customer1)
	(delivered S customer2)
	(delivered M customer3)
	(delivered B customer4)
	(delivered G customer5)
	(delivered L customer6)
	(delivered A customer7)
	(delivered I customer8)
	(delivered C customer9)
	(delivered D customer10)
	(delivered R customer11)
	(delivered N customer12)
	(delivered E customer13)
	(delivered O customer14)
))
)

