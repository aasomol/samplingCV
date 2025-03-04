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
)
(:init
	(available)
	(at location6)
	(canwithdraw location6)
	(canwithdraw location6)
	(canwithdraw location6)
	(canbuy location6 item0)
	(canbuy location6 item1)
	(canbuy location5 item2)
	(canbuy location5 item3)
	(canbuy location5 item4)
	(canbuy location4 item5)
	(canbuy location0 item6)
	(canbuy location4 item7)
	(canbuy location6 item8)
	(canbuy location9 item9)
	(currencyOf item0 currency1)
	(currencyOf item1 currency0)
	(currencyOf item2 currency1)
	(currencyOf item3 currency1)
	(currencyOf item4 currency1)
	(currencyOf item5 currency0)
	(currencyOf item6 currency1)
	(currencyOf item7 currency1)
	(currencyOf item8 currency1)
	(currencyOf item9 currency0)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 90)
	(= (currency_goal currency1) 83)
	(= (price item0) 72)
	(= (price item1) 99)
	(= (price item2) 67)
	(= (price item3) 22)
	(= (price item4) 99)
	(= (price item5) 46)
	(= (price item6) 75)
	(= (price item7) 56)
	(= (price item8) 23)
	(= (price item9) 23)
	(= (balance currency0) 387)
	(= (balance currency1) 746)
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
	(have_enough currency0)
	(have_enough currency1)
))
)

