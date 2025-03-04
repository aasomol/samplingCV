;Parsing time: 0
;Preprocessing time: 0
;Grounding time: 0
;SAS translation time: 0.002
;Filter repeated states: 1
;H: 21 (0)
;H: 20 (9)
;H: 18 (5)
;H: 16 (5)
;H: 15 (4)
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
.0.000: (go_to workshop9 customer0) [0.001]
0.002: (go_to customer0 customer1) [0.001]
0.004: (go_to customer1 customer2) [0.001]
0.006: (go_to customer2 customer3) [0.001]
0.008: (go_to customer3 customer4) [0.001]
0.010: (go_to customer4 supplier7) [0.001]
0.012: (supply_raw_material_q q supplier7) [0.001]
	; Control parameter: ?batchsize = 4.000
0.014: (go_to supplier7 supplier5) [0.001]
0.016: (supply_raw_material_i i supplier5) [0.001]
	; Control parameter: ?batchsize = 6.000
0.018: (go_to supplier5 customer2) [0.001]
0.020: (deliver_to_customer customer2 i) [0.001]
0.022: (go_to customer2 workshop7) [0.001]
0.024: (produce_l l q workshop7) [0.001]
	; Control parameter: ?batchsize = 2.000
0.026: (go_to workshop7 customer1) [0.001]
0.028: (deliver_to_customer customer1 l) [0.001]
0.030: (go_to customer1 supplier4) [0.001]
0.032: (supply_raw_material_d d supplier4) [0.001]
	; Control parameter: ?batchsize = 5.000
0.034: (go_to supplier4 customer0) [0.001]
0.036: (deliver_to_customer customer0 d) [0.001]
0.038: (go_to customer0 supplier9) [0.001]
0.040: (supply_raw_material_o o supplier9) [0.001]
	; Control parameter: ?batchsize = 3.000
0.042: (go_to supplier9 customer4) [0.001]
0.044: (deliver_to_customer customer4 o) [0.001]
0.046: (go_to customer4 supplier9) [0.001]
0.048: (supply_raw_material_p p supplier9) [0.001]
	; Control parameter: ?batchsize = 13.000
0.050: (go_to supplier9 customer3) [0.001]
0.052: (deliver_to_customer customer3 p) [0.001]
;Makespan: 53
;Number of steps 290
;Solution found in 0.724
...................