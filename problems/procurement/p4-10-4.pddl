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
	(can_produce_F workshop2)
	(can_produce_H workshop0)
	(can_produce_K workshop3)
	(can_produce_L workshop3)
	(can_produce_M workshop0)
	(can_supply_D supplier2)
	(can_supply_E supplier3)
	(can_supply_G supplier2)
	(can_supply_I supplier2)
	(can_supply_J supplier2)
	(can_supply_N supplier2)
	(can_supply_O supplier0)
	(can_supply_P supplier2)
	(can_supply_Q supplier0)
	(can_supply_R supplier0)
	(can_supply_S supplier1)
	(at workshop0)
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
	(= (item-goal B) 5)
	(= (item-goal C) 3)
	(= (item-goal D) 2)
	(= (item-goal E) 10)
	(= (item-goal F) 9)
	(= (item-goal G) 2)
	(= (item-goal H) 14)
	(= (item-goal I) 9)
	(= (item-goal J) 11)
	(= (item-goal K) 6)
	(= (item-goal L) 7)
	(= (item-goal M) 6)
	(= (item-goal N) 12)
	(= (item-goal O) 3)
	(= (item-goal P) 6)
	(= (item-goal Q) 5)
	(= (item-goal R) 6)
	(= (item-goal S) 9)
)
(:goal (and
	(delivered C customer0)
	(delivered A customer1)
	(delivered P customer2)
	(delivered F customer3)
	(delivered E customer4)
	(delivered L customer5)
	(delivered B customer6)
	(delivered O customer7)
	(delivered Q customer8)
	(delivered H customer9)
))
)

