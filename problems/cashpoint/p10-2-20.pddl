(define (problem cashpoint)
(:domain cashpoint)
(:objects 
	location0 - location
	location1 - location
	location2 - location
	location3 - location
	location4 - location
	location5 - location
	location6 - location
	location7 - location
	location8 - location
	location9 - location
	currency0 - currency
	currency1 - currency
	item0 - item
	item1 - item
	item2 - item
	item3 - item
	item4 - item
	item5 - item
	item6 - item
	item7 - item
	item8 - item
	item9 - item
	item10 - item
	item11 - item
	item12 - item
	item13 - item
	item14 - item
	item15 - item
	item16 - item
	item17 - item
	item18 - item
	item19 - item
)
(:init
	(available)
	(at location0)
	(canwithdraw location0)
	(canwithdraw location0)
	(canwithdraw location0)
	(canbuy location8 item0)
	(canbuy location8 item1)
	(canbuy location6 item2)
	(canbuy location0 item3)
	(canbuy location4 item4)
	(canbuy location8 item5)
	(canbuy location5 item6)
	(canbuy location8 item7)
	(canbuy location7 item8)
	(canbuy location8 item9)
	(canbuy location6 item10)
	(canbuy location2 item11)
	(canbuy location4 item12)
	(canbuy location4 item13)
	(canbuy location7 item14)
	(canbuy location8 item15)
	(canbuy location8 item16)
	(canbuy location5 item17)
	(canbuy location5 item18)
	(canbuy location8 item19)
	(currencyOf item0 currency1)
	(currencyOf item1 currency1)
	(currencyOf item2 currency0)
	(currencyOf item3 currency0)
	(currencyOf item4 currency0)
	(currencyOf item5 currency1)
	(currencyOf item6 currency0)
	(currencyOf item7 currency1)
	(currencyOf item8 currency1)
	(currencyOf item9 currency0)
	(currencyOf item10 currency1)
	(currencyOf item11 currency0)
	(currencyOf item12 currency1)
	(currencyOf item13 currency1)
	(currencyOf item14 currency1)
	(currencyOf item15 currency0)
	(currencyOf item16 currency0)
	(currencyOf item17 currency1)
	(currencyOf item18 currency1)
	(currencyOf item19 currency0)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 11)
	(= (currency_goal currency1) 31)
	(= (price item0) 57)
	(= (price item1) 91)
	(= (price item2) 32)
	(= (price item3) 21)
	(= (price item4) 29)
	(= (price item5) 85)
	(= (price item6) 46)
	(= (price item7) 56)
	(= (price item8) 27)
	(= (price item9) 70)
	(= (price item10) 32)
	(= (price item11) 81)
	(= (price item12) 20)
	(= (price item13) 77)
	(= (price item14) 35)
	(= (price item15) 12)
	(= (price item16) 28)
	(= (price item17) 52)
	(= (price item18) 91)
	(= (price item19) 97)
	(= (balance currency0) 640)
	(= (balance currency1) 981)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(bought item3)
	(bought item4)
	(bought item5)
	(bought item6)
	(bought item7)
	(bought item8)
	(bought item9)
	(bought item10)
	(bought item11)
	(bought item12)
	(bought item13)
	(bought item14)
	(bought item15)
	(bought item16)
	(bought item17)
	(bought item18)
	(bought item19)
	(have_enough currency0)
	(have_enough currency1)
))
)

