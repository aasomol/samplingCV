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
	supplier5 - supplier
	supplier6 - supplier
	supplier7 - supplier
	supplier8 - supplier
	supplier9 - supplier
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
	workshop5 - workshop
	workshop6 - workshop
	workshop7 - workshop
	workshop8 - workshop
	workshop9 - workshop
)
(:init
	(available)
	(can_produce_A workshop4)
	(can_produce_B workshop8)
	(can_produce_C workshop7)
	(can_produce_F workshop8)
	(can_produce_H workshop2)
	(can_produce_K workshop5)
	(can_produce_L workshop5)
	(can_produce_M workshop2)
	(can_supply_D supplier3)
	(can_supply_E supplier9)
	(can_supply_G supplier3)
	(can_supply_I supplier6)
	(can_supply_J supplier7)
	(can_supply_N supplier4)
	(can_supply_O supplier0)
	(can_supply_P supplier8)
	(can_supply_Q supplier0)
	(can_supply_R supplier4)
	(can_supply_S supplier1)
	(at customer2)
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
	(= (item-goal B) 13)
	(= (item-goal C) 7)
	(= (item-goal D) 12)
	(= (item-goal E) 3)
	(= (item-goal F) 4)
	(= (item-goal G) 7)
	(= (item-goal H) 6)
	(= (item-goal I) 9)
	(= (item-goal J) 12)
	(= (item-goal K) 14)
	(= (item-goal L) 13)
	(= (item-goal M) 1)
	(= (item-goal N) 9)
	(= (item-goal O) 2)
	(= (item-goal P) 2)
	(= (item-goal Q) 3)
	(= (item-goal R) 10)
	(= (item-goal S) 2)
)
(:goal (and
	(delivered E customer0)
	(delivered F customer1)
	(delivered A customer2)
	(delivered S customer3)
	(delivered K customer4)
	(delivered R customer5)
	(delivered J customer6)
	(delivered P customer7)
	(delivered C customer8)
	(delivered I customer9)
))
)

