;Parsing time: 0
;Preprocessing time: 0
;Grounding time: 0
;SAS translation time: 0
;Filter repeated states: 1
;H: 13 (0)
;H: 11 (2)
;H: 8 (2)
;H: 7 (1)
;H: 6 (1)
;H: 4 (1)
;H: 3 (1)
;H: 1 (1)
.;H: 0 (0)
.0.000: (go_to workshop1 customer0) [0.001]
0.002: (go_to customer0 customer1) [0.001]
0.004: (go_to customer1 supplier1) [0.001]
0.006: (supply_raw_material_s s supplier1) [0.001]
	; Control parameter: ?batchsize = 4.000
0.008: (go_to supplier1 supplier0) [0.001]
0.010: (supply_raw_material_q q supplier0) [0.001]
	; Control parameter: ?batchsize = 10.000
0.012: (supply_raw_material_r r supplier0) [0.001]
	; Control parameter: ?batchsize = 13.000
0.014: (go_to supplier0 customer0) [0.001]
0.016: (deliver_to_customer customer0 r) [0.001]
0.018: (go_to customer0 workshop0) [0.001]
0.020: (produce_l l q workshop0) [0.001]
	; Control parameter: ?batchsize = 5.000
0.022: (go_to workshop0 workshop1) [0.001]
0.024: (produce_m m r s workshop1) [0.001]
	; Control parameter: ?batchsize = 2.000
0.026: (produce_h h l m workshop1) [0.001]
	; Control parameter: ?batchsize = 1.000
0.028: (go_to workshop1 customer1) [0.001]
0.030: (deliver_to_customer customer1 h) [0.001]
;Makespan: 31
;Number of steps 197
;Solution found in 0.101
