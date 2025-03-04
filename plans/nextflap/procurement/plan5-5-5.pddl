;Parsing time: 0
;Preprocessing time: 0
;Grounding time: 0
;SAS translation time: 0.001
;Filter repeated states: 1
;H: 20 (0)
;H: 19 (9)
;H: 18 (5)
;H: 17 (4)
;H: 16 (4)
;H: 14 (4)
;H: 13 (3)
;H: 12 (3)
;H: 10 (3)
;H: 9 (3)
;H: 8 (2)
;H: 7 (2)
;H: 5 (2)
;H: 4 (1)
;H: 3 (1)
;H: 1 (1)
.;H: 0 (0)
.0.000: (go_to workshop1 customer0) [0.001]
0.002: (go_to customer0 customer1) [0.001]
0.004: (go_to customer1 customer2) [0.001]
0.006: (go_to customer2 customer3) [0.001]
0.008: (go_to customer3 customer4) [0.001]
0.010: (go_to customer4 supplier4) [0.001]
0.012: (supply_raw_material_e e supplier4) [0.001]
	; Control parameter: ?batchsize = 11.000
0.014: (go_to supplier4 customer2) [0.001]
0.016: (deliver_to_customer customer2 e) [0.001]
0.018: (go_to customer2 supplier4) [0.001]
0.020: (supply_raw_material_o o supplier4) [0.001]
	; Control parameter: ?batchsize = 3.000
0.022: (go_to supplier4 customer4) [0.001]
0.024: (deliver_to_customer customer4 o) [0.001]
0.026: (go_to customer4 supplier0) [0.001]
0.028: (supply_raw_material_s s supplier0) [0.001]
	; Control parameter: ?batchsize = 20.000
0.030: (go_to supplier0 supplier1) [0.001]
0.032: (supply_raw_material_r r supplier1) [0.001]
	; Control parameter: ?batchsize = 37.000
0.034: (go_to supplier1 customer0) [0.001]
0.036: (deliver_to_customer customer0 r) [0.001]
0.038: (go_to customer0 workshop3) [0.001]
0.040: (produce_m m r s workshop3) [0.001]
	; Control parameter: ?batchsize = 10.000
0.042: (go_to workshop3 customer3) [0.001]
0.044: (deliver_to_customer customer3 m) [0.001]
0.046: (go_to customer3 supplier1) [0.001]
0.048: (supply_raw_material_i i supplier1) [0.001]
	; Control parameter: ?batchsize = 10.000
0.050: (go_to supplier1 customer1) [0.001]
0.052: (deliver_to_customer customer1 i) [0.001]
;Makespan: 53
;Number of steps 305
;Solution found in 0.328
..............0.000: (go_to workshop1 customer0) [0.001]
0.002: (go_to customer0 customer1) [0.001]
0.004: (go_to customer1 customer2) [0.001]
0.006: (go_to customer2 customer3) [0.001]
0.008: (go_to customer3 customer4) [0.001]
0.010: (go_to customer4 supplier4) [0.001]
0.012: (supply_raw_material_e e supplier4) [0.001]
	; Control parameter: ?batchsize = 11.000
0.014: (go_to supplier4 customer2) [0.001]
0.016: (deliver_to_customer customer2 e) [0.001]
0.018: (go_to customer2 supplier4) [0.001]
0.020: (supply_raw_material_o o supplier4) [0.001]
	; Control parameter: ?batchsize = 3.000
0.022: (go_to supplier4 customer4) [0.001]
0.024: (deliver_to_customer customer4 o) [0.001]
0.026: (go_to customer4 supplier0) [0.001]
0.028: (supply_raw_material_s s supplier0) [0.001]
	; Control parameter: ?batchsize = 20.000
0.030: (go_to supplier0 supplier1) [0.001]
0.032: (supply_raw_material_i i supplier1) [0.001]
	; Control parameter: ?batchsize = 10.000
0.034: (supply_raw_material_r r supplier1) [0.001]
	; Control parameter: ?batchsize = 37.000
0.036: (go_to supplier1 customer1) [0.001]
0.038: (deliver_to_customer customer1 i) [0.001]
0.040: (go_to customer1 workshop3) [0.001]
0.042: (produce_m m r s workshop3) [0.001]
	; Control parameter: ?batchsize = 10.000
0.044: (go_to workshop3 customer0) [0.001]
0.046: (deliver_to_customer customer0 r) [0.001]
0.048: (go_to customer0 customer3) [0.001]
0.050: (deliver_to_customer customer3 m) [0.001]
;Makespan: 51
;Number of steps 36074
;Solution found in 15.934
...................