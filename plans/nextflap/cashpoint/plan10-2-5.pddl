;Parsing time: 0
;Preprocessing time: 0
;Grounding time: 0
;SAS translation time: 0
;Filter repeated states: 1
;H: 12 (0)
;H: 11 (9)
;H: 10 (8)
;H: 9 (7)
;H: 8 (6)
;H: 7 (5)
;H: 6 (4)
;H: 5 (2)
;H: 3 (2)
;H: 2 (1)
;H: 1 (1)
.;H: 0 (0)
.0.000: (withdraw location7 currency0) [0.001]
	; Control parameter: ?cash = 130.000
0.002: (buy_with_cash item0 location7 currency0) [0.001]
0.004: (buy_with_cash item4 location7 currency0) [0.001]
0.006: (goto location7 location3) [0.001]
0.008: (buy_with_cash item1 location3 currency0) [0.001]
0.010: (save_for_later currency0) [0.001]
0.012: (goto location3 location4) [0.001]
0.014: (goto location4 location5) [0.001]
0.016: (goto location5 location7) [0.001]
0.018: (withdraw location7 currency1) [0.001]
	; Control parameter: ?cash = 184.000
0.020: (save_for_later currency1) [0.001]
0.022: (goto location7 location4) [0.001]
0.024: (buy_with_cash item3 location4 currency1) [0.001]
0.026: (goto location4 location5) [0.001]
0.028: (buy_with_cash item2 location5 currency1) [0.001]
;Makespan: 29
;Number of steps 129
;Solution found in 0.053
......0.000: (withdraw location7 currency0) [0.001]
	; Control parameter: ?cash = 130.000
0.002: (buy_with_cash item0 location7 currency0) [0.001]
0.004: (save_for_later currency0) [0.001]
0.006: (withdraw location7 currency1) [0.001]
	; Control parameter: ?cash = 184.000
0.008: (goto location7 location3) [0.001]
0.010: (save_for_later currency1) [0.001]
0.012: (goto location3 location4) [0.001]
0.014: (buy_with_cash item3 location4 currency1) [0.001]
0.016: (goto location4 location5) [0.001]
0.018: (buy_with_cash item2 location5 currency1) [0.001]
0.020: (goto location5 location3) [0.001]
0.022: (buy_with_cash item1 location3 currency0) [0.001]
0.024: (goto location3 location7) [0.001]
0.026: (buy_with_cash item4 location7 currency0) [0.001]
;Makespan: 27
;Number of steps 9294
;Solution found in 0.515
...0.000: (withdraw location7 currency0) [0.001]
	; Control parameter: ?cash = 130.000
0.002: (buy_with_cash item0 location7 currency0) [0.001]
0.004: (buy_with_cash item4 location7 currency0) [0.001]
0.006: (withdraw location7 currency1) [0.001]
	; Control parameter: ?cash = 184.000
0.008: (goto location7 location3) [0.001]
0.010: (save_for_later currency1) [0.001]
0.012: (goto location3 location4) [0.001]
0.014: (buy_with_cash item3 location4 currency1) [0.001]
0.016: (goto location4 location5) [0.001]
0.018: (buy_with_cash item2 location5 currency1) [0.001]
0.020: (goto location5 location3) [0.001]
0.022: (buy_with_cash item1 location3 currency0) [0.001]
0.024: (save_for_later currency0) [0.001]
;Makespan: 25
;Number of steps 12247
;Solution found in 0.747
