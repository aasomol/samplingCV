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
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
	workshop3 - workshop
)
(:init
	(available)
	(can_produce_A workshop1)
	(can_produce_B workshop2)
	(can_produce_C workshop1)
	(can_produce_F workshop0)
	(can_produce_H workshop2)
	(can_produce_K workshop1)
	(can_produce_L workshop0)
	(can_produce_M workshop0)
	(can_supply_D supplier0)
	(can_supply_E supplier3)
	(can_supply_G supplier1)
	(can_supply_I supplier3)
	(can_supply_J supplier2)
	(can_supply_N supplier0)
	(can_supply_O supplier1)
	(can_supply_P supplier2)
	(can_supply_Q supplier1)
	(can_supply_R supplier2)
	(can_supply_S supplier1)
	(at workshop2)
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
	(= (item-goal B) 8)
	(= (item-goal C) 13)
	(= (item-goal D) 10)
	(= (item-goal E) 11)
	(= (item-goal F) 6)
	(= (item-goal G) 6)
	(= (item-goal H) 14)
	(= (item-goal I) 4)
	(= (item-goal J) 9)
	(= (item-goal K) 11)
	(= (item-goal L) 6)
	(= (item-goal M) 7)
	(= (item-goal N) 4)
	(= (item-goal O) 10)
	(= (item-goal P) 13)
	(= (item-goal Q) 5)
	(= (item-goal R) 1)
	(= (item-goal S) 12)
)
(:goal (and
	(delivered I customer0)
	(delivered B customer1)
	(delivered N customer2)
	(delivered K customer3)
	(delivered A customer4)
	(delivered P customer5)
	(delivered F customer6)
	(delivered L customer7)
))
)

