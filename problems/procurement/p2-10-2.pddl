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
	workshop0 - workshop
	workshop1 - workshop
)
(:init
	(available)
	(can_produce_A workshop0)
	(can_produce_B workshop1)
	(can_produce_C workshop1)
	(can_produce_F workshop0)
	(can_produce_H workshop1)
	(can_produce_K workshop1)
	(can_produce_L workshop0)
	(can_produce_M workshop1)
	(can_supply_D supplier0)
	(can_supply_E supplier1)
	(can_supply_G supplier1)
	(can_supply_I supplier1)
	(can_supply_J supplier1)
	(can_supply_N supplier0)
	(can_supply_O supplier1)
	(can_supply_P supplier1)
	(can_supply_Q supplier1)
	(can_supply_R supplier0)
	(can_supply_S supplier0)
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
	(= (item-goal A) 8)
	(= (item-goal B) 3)
	(= (item-goal C) 12)
	(= (item-goal D) 3)
	(= (item-goal E) 14)
	(= (item-goal F) 8)
	(= (item-goal G) 8)
	(= (item-goal H) 2)
	(= (item-goal I) 3)
	(= (item-goal J) 13)
	(= (item-goal K) 14)
	(= (item-goal L) 10)
	(= (item-goal M) 10)
	(= (item-goal N) 10)
	(= (item-goal O) 3)
	(= (item-goal P) 9)
	(= (item-goal Q) 5)
	(= (item-goal R) 11)
	(= (item-goal S) 4)
)
(:goal (and
	(delivered G customer0)
	(delivered H customer1)
	(delivered K customer2)
	(delivered F customer3)
	(delivered A customer4)
	(delivered M customer5)
	(delivered D customer6)
	(delivered C customer7)
	(delivered R customer8)
	(delivered S customer9)
))
)

