;Parsing time: 0
;Preprocessing time: 0
;Grounding time: 0
;SAS translation time: 0
;Filter repeated states: 1
;H: 28 (0)
;H: 21 (4)
;H: 20 (3)
;H: 19 (2)
;H: 18 (1)
;H: 12 (1)
;H: 9 (1)
;H: 7 (1)
;H: 5 (1)
;H: 3 (1)
;H: 1 (1)
.;H: 0 (0)
.0.000: (go_to supplier1 supplier3) [0.001]
0.002: (supply_raw_material_q q supplier3) [0.001]
	; Control parameter: ?batchsize = 100.000
0.004: (go_to supplier3 customer0) [0.001]
0.006: (deliver_to_customer customer0 q) [0.001]
0.008: (go_to customer0 customer1) [0.001]
0.010: (go_to customer1 supplier3) [0.001]
0.012: (supply_raw_material_q q supplier3) [0.001]
	; Control parameter: ?batchsize = 15.000
0.014: (go_to supplier3 supplier1) [0.001]
0.016: (supply_raw_material_r r supplier1) [0.001]
	; Control parameter: ?batchsize = 66.000
0.018: (go_to supplier1 supplier2) [0.001]
0.020: (supply_raw_material_s s supplier2) [0.001]
	; Control parameter: ?batchsize = 44.000
0.022: (go_to supplier2 workshop1) [0.001]
0.024: (produce_l l q workshop1) [0.001]
	; Control parameter: ?batchsize = 55.000
0.026: (produce_m m r s workshop1) [0.001]
	; Control parameter: ?batchsize = 22.000
0.028: (go_to workshop1 supplier0) [0.001]
0.030: (supply_raw_material_i i supplier0) [0.001]
	; Control parameter: ?batchsize = 22.000
0.032: (go_to supplier0 workshop0) [0.001]
0.034: (produce_h h l m workshop0) [0.001]
	; Control parameter: ?batchsize = 11.000
0.036: (go_to workshop0 workshop1) [0.001]
0.038: (produce_c c h i workshop1) [0.001]
	; Control parameter: ?batchsize = 11.000
0.040: (go_to workshop1 customer1) [0.001]
0.042: (deliver_to_customer customer1 c) [0.001]
;Makespan: 43
;Number of steps 1981
;Solution found in 0.775
