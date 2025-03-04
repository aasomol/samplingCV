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
	item20 - item
	item21 - item
	item22 - item
	item23 - item
	item24 - item
	item25 - item
	item26 - item
	item27 - item
	item28 - item
	item29 - item
	item30 - item
	item31 - item
	item32 - item
	item33 - item
	item34 - item
	item35 - item
	item36 - item
	item37 - item
	item38 - item
	item39 - item
	item40 - item
	item41 - item
	item42 - item
	item43 - item
	item44 - item
	item45 - item
	item46 - item
	item47 - item
	item48 - item
	item49 - item
)
(:init
	(available)
	(at location2)
	(canwithdraw location2)
	(canwithdraw location2)
	(canwithdraw location2)
	(canbuy location7 item0)
	(canbuy location7 item1)
	(canbuy location7 item2)
	(canbuy location3 item3)
	(canbuy location8 item4)
	(canbuy location7 item5)
	(canbuy location8 item6)
	(canbuy location5 item7)
	(canbuy location9 item8)
	(canbuy location7 item9)
	(canbuy location3 item10)
	(canbuy location4 item11)
	(canbuy location8 item12)
	(canbuy location5 item13)
	(canbuy location3 item14)
	(canbuy location4 item15)
	(canbuy location8 item16)
	(canbuy location5 item17)
	(canbuy location8 item18)
	(canbuy location9 item19)
	(canbuy location7 item20)
	(canbuy location8 item21)
	(canbuy location1 item22)
	(canbuy location1 item23)
	(canbuy location7 item24)
	(canbuy location9 item25)
	(canbuy location1 item26)
	(canbuy location8 item27)
	(canbuy location3 item28)
	(canbuy location3 item29)
	(canbuy location8 item30)
	(canbuy location5 item31)
	(canbuy location8 item32)
	(canbuy location9 item33)
	(canbuy location9 item34)
	(canbuy location4 item35)
	(canbuy location1 item36)
	(canbuy location1 item37)
	(canbuy location7 item38)
	(canbuy location4 item39)
	(canbuy location8 item40)
	(canbuy location5 item41)
	(canbuy location5 item42)
	(canbuy location8 item43)
	(canbuy location8 item44)
	(canbuy location4 item45)
	(canbuy location4 item46)
	(canbuy location8 item47)
	(canbuy location4 item48)
	(canbuy location8 item49)
	(currencyOf item0 currency1)
	(currencyOf item1 currency1)
	(currencyOf item2 currency0)
	(currencyOf item3 currency0)
	(currencyOf item4 currency1)
	(currencyOf item5 currency1)
	(currencyOf item6 currency0)
	(currencyOf item7 currency0)
	(currencyOf item8 currency1)
	(currencyOf item9 currency0)
	(currencyOf item10 currency1)
	(currencyOf item11 currency0)
	(currencyOf item12 currency1)
	(currencyOf item13 currency1)
	(currencyOf item14 currency0)
	(currencyOf item15 currency0)
	(currencyOf item16 currency1)
	(currencyOf item17 currency1)
	(currencyOf item18 currency1)
	(currencyOf item19 currency0)
	(currencyOf item20 currency0)
	(currencyOf item21 currency0)
	(currencyOf item22 currency0)
	(currencyOf item23 currency1)
	(currencyOf item24 currency1)
	(currencyOf item25 currency0)
	(currencyOf item26 currency1)
	(currencyOf item27 currency1)
	(currencyOf item28 currency0)
	(currencyOf item29 currency0)
	(currencyOf item30 currency0)
	(currencyOf item31 currency0)
	(currencyOf item32 currency1)
	(currencyOf item33 currency1)
	(currencyOf item34 currency1)
	(currencyOf item35 currency0)
	(currencyOf item36 currency0)
	(currencyOf item37 currency1)
	(currencyOf item38 currency0)
	(currencyOf item39 currency0)
	(currencyOf item40 currency0)
	(currencyOf item41 currency1)
	(currencyOf item42 currency0)
	(currencyOf item43 currency0)
	(currencyOf item44 currency0)
	(currencyOf item45 currency1)
	(currencyOf item46 currency0)
	(currencyOf item47 currency1)
	(currencyOf item48 currency1)
	(currencyOf item49 currency1)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 98)
	(= (currency_goal currency1) 23)
	(= (price item0) 32)
	(= (price item1) 95)
	(= (price item2) 76)
	(= (price item3) 30)
	(= (price item4) 99)
	(= (price item5) 99)
	(= (price item6) 31)
	(= (price item7) 25)
	(= (price item8) 10)
	(= (price item9) 26)
	(= (price item10) 32)
	(= (price item11) 80)
	(= (price item12) 97)
	(= (price item13) 65)
	(= (price item14) 26)
	(= (price item15) 87)
	(= (price item16) 88)
	(= (price item17) 29)
	(= (price item18) 12)
	(= (price item19) 54)
	(= (price item20) 14)
	(= (price item21) 59)
	(= (price item22) 56)
	(= (price item23) 58)
	(= (price item24) 16)
	(= (price item25) 93)
	(= (price item26) 60)
	(= (price item27) 70)
	(= (price item28) 16)
	(= (price item29) 62)
	(= (price item30) 84)
	(= (price item31) 62)
	(= (price item32) 70)
	(= (price item33) 20)
	(= (price item34) 41)
	(= (price item35) 98)
	(= (price item36) 30)
	(= (price item37) 58)
	(= (price item38) 30)
	(= (price item39) 93)
	(= (price item40) 52)
	(= (price item41) 88)
	(= (price item42) 93)
	(= (price item43) 35)
	(= (price item44) 61)
	(= (price item45) 27)
	(= (price item46) 64)
	(= (price item47) 94)
	(= (price item48) 59)
	(= (price item49) 83)
	(= (balance currency0) 2302)
	(= (balance currency1) 2138)
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
	(bought item20)
	(bought item21)
	(bought item22)
	(bought item23)
	(bought item24)
	(bought item25)
	(bought item26)
	(bought item27)
	(bought item28)
	(bought item29)
	(bought item30)
	(bought item31)
	(bought item32)
	(bought item33)
	(bought item34)
	(bought item35)
	(bought item36)
	(bought item37)
	(bought item38)
	(bought item39)
	(bought item40)
	(bought item41)
	(bought item42)
	(bought item43)
	(bought item44)
	(bought item45)
	(bought item46)
	(bought item47)
	(bought item48)
	(bought item49)
	(have_enough currency0)
	(have_enough currency1)
))
)

