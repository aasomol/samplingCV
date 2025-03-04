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
)
(:init
	(available)
	(at location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canbuy location7 item0)
	(canbuy location3 item1)
	(canbuy location5 item2)
	(canbuy location4 item3)
	(canbuy location7 item4)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(currencyOf item2 currency1)
	(currencyOf item3 currency1)
	(currencyOf item4 currency0)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 56)
	(= (currency_goal currency1) 81)
	(= (price item0) 52)
	(= (price item1) 12)
	(= (price item2) 55)
	(= (price item3) 48)
	(= (price item4) 10)
	(= (balance currency0) 195)
	(= (balance currency1) 276)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(bought item3)
	(bought item4)
	(have_enough currency0)
	(have_enough currency1)
))
)

