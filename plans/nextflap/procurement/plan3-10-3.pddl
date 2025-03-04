;Parsing time: 0
;Preprocessing time: 0
;Grounding time: 0
;SAS translation time: 0.002
;Filter repeated states: 1
;H: 45 (0)
;H: 41 (19)
;H: 40 (18)
;H: 39 (14)
;H: 38 (13)
;H: 37 (9)
;H: 36 (8)
;H: 35 (8)
;H: 34 (7)
;H: 33 (7)
;H: 32 (7)
;H: 31 (6)
;H: 30 (6)
;H: 29 (6)
;H: 27 (5)
;H: 24 (5)
;H: 23 (4)
;H: 22 (4)
;H: 20 (4)
;H: 19 (3)
;H: 18 (3)
;H: 16 (3)
;H: 15 (2)
;H: 14 (2)
;H: 13 (1)
;H: 12 (1)
;H: 7 (1)
;H: 5 (1)
;H: 3 (1)
;H: 1 (1)
.;H: 0 (0)
.0.000: (go_to customer5 supplier0) [0.001]
0.002: (supply_raw_material_q q supplier0) [0.001]
	; Control parameter: ?batchsize = 100.000
0.004: (go_to supplier0 customer0) [0.001]
0.006: (go_to customer0 customer1) [0.001]
0.008: (go_to customer1 customer2) [0.001]
0.010: (go_to customer2 customer3) [0.001]
0.012: (deliver_to_customer customer3 q) [0.001]
0.014: (go_to customer3 customer4) [0.001]
0.016: (go_to customer4 customer6) [0.001]
0.018: (go_to customer6 customer7) [0.001]
0.020: (go_to customer7 customer8) [0.001]
0.022: (go_to customer8 customer9) [0.001]
0.024: (go_to customer9 supplier0) [0.001]
0.026: (supply_raw_material_g g supplier0) [0.001]
	; Control parameter: ?batchsize = 4.000
0.028: (go_to supplier0 customer9) [0.001]
0.030: (deliver_to_customer customer9 g) [0.001]
0.032: (go_to customer9 supplier2) [0.001]
0.034: (supply_raw_material_n n supplier2) [0.001]
	; Control parameter: ?batchsize = 37.000
0.036: (go_to supplier2 customer4) [0.001]
0.038: (deliver_to_customer customer4 n) [0.001]
0.040: (go_to customer4 supplier2) [0.001]
0.042: (supply_raw_material_d d supplier2) [0.001]
	; Control parameter: ?batchsize = 6.000
0.044: (go_to supplier2 customer2) [0.001]
0.046: (deliver_to_customer customer2 d) [0.001]
0.048: (go_to customer2 supplier1) [0.001]
0.050: (supply_raw_material_o o supplier1) [0.001]
	; Control parameter: ?batchsize = 14.000
0.052: (go_to supplier1 customer5) [0.001]
0.054: (deliver_to_customer customer5 o) [0.001]
0.056: (go_to customer5 supplier2) [0.001]
0.058: (supply_raw_material_p p supplier2) [0.001]
	; Control parameter: ?batchsize = 9.000
0.060: (go_to supplier2 customer7) [0.001]
0.062: (deliver_to_customer customer7 p) [0.001]
0.064: (go_to customer7 workshop1) [0.001]
0.066: (produce_k k n o p workshop1) [0.001]
	; Control parameter: ?batchsize = 4.000
0.068: (go_to workshop1 supplier1) [0.001]
0.070: (supply_raw_material_j j supplier1) [0.001]
	; Control parameter: ?batchsize = 29.000
0.072: (go_to supplier1 customer0) [0.001]
0.074: (deliver_to_customer customer0 j) [0.001]
0.076: (go_to customer0 workshop1) [0.001]
0.078: (produce_f f j k workshop1) [0.001]
	; Control parameter: ?batchsize = 4.000
0.080: (go_to workshop1 customer6) [0.001]
0.082: (deliver_to_customer customer6 f) [0.001]
0.084: (go_to customer6 supplier1) [0.001]
0.086: (supply_raw_material_r r supplier1) [0.001]
	; Control parameter: ?batchsize = 84.000
0.088: (go_to supplier1 customer1) [0.001]
0.090: (deliver_to_customer customer1 r) [0.001]
0.092: (go_to customer1 supplier0) [0.001]
0.094: (supply_raw_material_q q supplier0) [0.001]
	; Control parameter: ?batchsize = 36.000
0.096: (go_to supplier0 supplier2) [0.001]
0.098: (supply_raw_material_s s supplier2) [0.001]
	; Control parameter: ?batchsize = 52.000
0.100: (go_to supplier2 workshop0) [0.001]
0.102: (produce_l l q workshop0) [0.001]
	; Control parameter: ?batchsize = 65.000
0.104: (produce_m m r s workshop0) [0.001]
	; Control parameter: ?batchsize = 26.000
0.106: (produce_h h l m workshop0) [0.001]
	; Control parameter: ?batchsize = 13.000
0.108: (go_to workshop0 customer8) [0.001]
0.110: (deliver_to_customer customer8 h) [0.001]
;Makespan: 111
;Number of steps 57007
;Solution found in 77.814
