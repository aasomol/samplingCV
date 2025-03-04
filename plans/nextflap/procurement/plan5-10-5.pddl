;Parsing time: 0
;Preprocessing time: 0
;Grounding time: 0
;SAS translation time: 0.002
;Filter repeated states: 1
;H: 45 (0)
;H: 43 (10)
;H: 42 (9)
;H: 41 (9)
;H: 40 (8)
;H: 39 (8)
;H: 38 (8)
;H: 37 (7)
;H: 36 (7)
;H: 35 (6)
;H: 34 (6)
;H: 33 (6)
;H: 32 (5)
;H: 31 (5)
;H: 28 (5)
;H: 27 (4)
;H: 26 (4)
;H: 25 (4)
;H: 24 (3)
;H: 23 (3)
;H: 22 (2)
;H: 21 (2)
;H: 16 (2)
;H: 14 (2)
;H: 11 (2)
;H: 7 (2)
;H: 5 (2)
;H: 4 (1)
;H: 3 (1)
;H: 1 (1)
.;H: 0 (0)
.0.000: (go_to customer9 customer0) [0.001]
0.002: (go_to customer0 customer1) [0.001]
0.004: (go_to customer1 customer2) [0.001]
0.006: (go_to customer2 customer3) [0.001]
0.008: (go_to customer3 customer4) [0.001]
0.010: (go_to customer4 customer5) [0.001]
0.012: (go_to customer5 customer6) [0.001]
0.014: (go_to customer6 customer7) [0.001]
0.016: (go_to customer7 customer8) [0.001]
0.018: (go_to customer8 supplier0) [0.001]
0.020: (supply_raw_material_e e supplier0) [0.001]
	; Control parameter: ?batchsize = 8.000
0.022: (go_to supplier0 customer8) [0.001]
0.024: (deliver_to_customer customer8 e) [0.001]
0.026: (go_to customer8 supplier3) [0.001]
0.028: (supply_raw_material_i i supplier3) [0.001]
	; Control parameter: ?batchsize = 24.000
0.030: (go_to supplier3 customer2) [0.001]
0.032: (deliver_to_customer customer2 i) [0.001]
0.034: (go_to customer2 supplier2) [0.001]
0.036: (supply_raw_material_j j supplier2) [0.001]
	; Control parameter: ?batchsize = 11.000
0.038: (go_to supplier2 customer6) [0.001]
0.040: (deliver_to_customer customer6 j) [0.001]
0.042: (go_to customer6 supplier3) [0.001]
0.044: (supply_raw_material_p p supplier3) [0.001]
	; Control parameter: ?batchsize = 18.000
0.046: (go_to supplier3 customer7) [0.001]
0.048: (deliver_to_customer customer7 p) [0.001]
0.050: (go_to customer7 supplier1) [0.001]
0.052: (supply_raw_material_d d supplier1) [0.001]
	; Control parameter: ?batchsize = 2.000
0.054: (go_to supplier1 customer3) [0.001]
0.056: (deliver_to_customer customer3 d) [0.001]
0.058: (go_to customer3 supplier1) [0.001]
0.060: (supply_raw_material_n n supplier1) [0.001]
	; Control parameter: ?batchsize = 89.000
0.062: (supply_raw_material_o o supplier1) [0.001]
	; Control parameter: ?batchsize = 26.000
0.064: (go_to supplier1 customer5) [0.001]
0.066: (deliver_to_customer customer5 n) [0.001]
0.068: (go_to customer5 workshop3) [0.001]
0.070: (produce_k k n o p workshop3) [0.001]
	; Control parameter: ?batchsize = 13.000
0.072: (go_to workshop3 customer1) [0.001]
0.074: (deliver_to_customer customer1 k) [0.001]
0.076: (go_to customer1 supplier1) [0.001]
0.078: (supply_raw_material_r r supplier1) [0.001]
	; Control parameter: ?batchsize = 43.000
0.080: (go_to supplier1 customer9) [0.001]
0.082: (deliver_to_customer customer9 r) [0.001]
0.084: (go_to customer9 supplier4) [0.001]
0.086: (supply_raw_material_s s supplier4) [0.001]
	; Control parameter: ?batchsize = 28.000
0.088: (go_to supplier4 supplier2) [0.001]
0.090: (supply_raw_material_q q supplier2) [0.001]
	; Control parameter: ?batchsize = 94.000
0.092: (go_to supplier2 workshop1) [0.001]
0.094: (produce_m m r s workshop1) [0.001]
	; Control parameter: ?batchsize = 14.000
0.096: (go_to workshop1 workshop4) [0.001]
0.098: (produce_l l q workshop4) [0.001]
	; Control parameter: ?batchsize = 47.000
0.100: (go_to workshop4 workshop3) [0.001]
0.102: (produce_h h l m workshop3) [0.001]
	; Control parameter: ?batchsize = 7.000
0.104: (go_to workshop3 customer4) [0.001]
0.106: (deliver_to_customer customer4 l) [0.001]
0.108: (go_to customer4 workshop0) [0.001]
0.110: (produce_c c h i workshop0) [0.001]
	; Control parameter: ?batchsize = 7.000
0.112: (go_to workshop0 customer0) [0.001]
0.114: (deliver_to_customer customer0 c) [0.001]
;Makespan: 115
;Number of steps 16880
;Solution found in 34.453
