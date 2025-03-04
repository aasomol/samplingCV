;Parsing time: 0
;Preprocessing time: 0
;Grounding time: 0
;SAS translation time: 0
;Filter repeated states: 1
;H: 24 (0)
;H: 23 (9)
;H: 20 (5)
;H: 18 (5)
;H: 17 (4)
;H: 16 (4)
;H: 14 (4)
;H: 12 (4)
;H: 11 (3)
;H: 10 (3)
;H: 8 (3)
;H: 7 (2)
;H: 6 (2)
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
0.010: (go_to customer4 supplier1) [0.001]
0.012: (supply_raw_material_p p supplier1) [0.001]
	; Control parameter: ?batchsize = 8.000
0.014: (go_to supplier1 supplier2) [0.001]
0.016: (supply_raw_material_n n supplier2) [0.001]
	; Control parameter: ?batchsize = 42.000
0.018: (supply_raw_material_o o supplier2) [0.001]
	; Control parameter: ?batchsize = 14.000
0.020: (go_to supplier2 customer2) [0.001]
0.022: (deliver_to_customer customer2 p) [0.001]
0.024: (go_to customer2 supplier3) [0.001]
0.026: (supply_raw_material_j j supplier3) [0.001]
	; Control parameter: ?batchsize = 35.000
0.028: (go_to supplier3 workshop2) [0.001]
0.030: (produce_k k n o p workshop2) [0.001]
	; Control parameter: ?batchsize = 7.000
0.032: (go_to workshop2 customer1) [0.001]
0.034: (deliver_to_customer customer1 j) [0.001]
0.036: (go_to customer1 workshop0) [0.001]
0.038: (produce_f f j k workshop0) [0.001]
	; Control parameter: ?batchsize = 7.000
0.040: (go_to workshop0 customer0) [0.001]
0.042: (deliver_to_customer customer0 f) [0.001]
0.044: (go_to customer0 supplier2) [0.001]
0.046: (supply_raw_material_d d supplier2) [0.001]
	; Control parameter: ?batchsize = 6.000
0.048: (go_to supplier2 customer4) [0.001]
0.050: (deliver_to_customer customer4 d) [0.001]
0.052: (go_to customer4 supplier2) [0.001]
0.054: (supply_raw_material_s s supplier2) [0.001]
	; Control parameter: ?batchsize = 11.000
0.056: (go_to supplier2 customer3) [0.001]
0.058: (deliver_to_customer customer3 s) [0.001]
;Makespan: 59
;Number of steps 701
;Solution found in 0.587
..................................