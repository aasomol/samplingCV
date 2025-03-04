;Parsing time: 0
;Preprocessing time: 0
;Grounding time: 0
;SAS translation time: 0
;Filter repeated states: 1
;H: 8 (0)
;H: 7 (3)
;H: 5 (2)
;H: 4 (1)
;H: 3 (1)
;H: 1 (1)
.;H: 0 (0)
.0.000: (go_to workshop2 customer0) [0.001]
0.002: (go_to customer0 customer1) [0.001]
0.004: (go_to customer1 supplier1) [0.001]
0.006: (supply_raw_material_r r supplier1) [0.001]
	; Control parameter: ?batchsize = 9.000
0.008: (go_to supplier1 customer1) [0.001]
0.010: (deliver_to_customer customer1 r) [0.001]
0.012: (go_to customer1 supplier0) [0.001]
0.014: (supply_raw_material_q q supplier0) [0.001]
	; Control parameter: ?batchsize = 5.000
0.016: (go_to supplier0 customer0) [0.001]
0.018: (deliver_to_customer customer0 q) [0.001]
;Makespan: 19
;Number of steps 41
;Solution found in 0.047
