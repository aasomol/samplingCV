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
	location10 - location
	location11 - location
	location12 - location
	location13 - location
	location14 - location
	location15 - location
	location16 - location
	location17 - location
	location18 - location
	location19 - location
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
	(at location16)
	(canwithdraw location16)
	(canwithdraw location16)
	(canwithdraw location16)
	(canwithdraw location16)
	(canwithdraw location16)
	(canwithdraw location16)
	(canbuy location18 item0)
	(canbuy location13 item1)
	(canbuy location19 item2)
	(canbuy location13 item3)
	(canbuy location10 item4)
	(canbuy location0 item5)
	(canbuy location10 item6)
	(canbuy location15 item7)
	(canbuy location9 item8)
	(canbuy location18 item9)
	(canbuy location9 item10)
	(canbuy location19 item11)
	(canbuy location17 item12)
	(canbuy location10 item13)
	(canbuy location9 item14)
	(canbuy location1 item15)
	(canbuy location17 item16)
	(canbuy location14 item17)
	(canbuy location19 item18)
	(canbuy location7 item19)
	(canbuy location7 item20)
	(canbuy location18 item21)
	(canbuy location15 item22)
	(canbuy location7 item23)
	(canbuy location19 item24)
	(canbuy location0 item25)
	(canbuy location16 item26)
	(canbuy location16 item27)
	(canbuy location3 item28)
	(canbuy location0 item29)
	(canbuy location16 item30)
	(canbuy location10 item31)
	(canbuy location14 item32)
	(canbuy location10 item33)
	(canbuy location18 item34)
	(canbuy location16 item35)
	(canbuy location7 item36)
	(canbuy location15 item37)
	(canbuy location19 item38)
	(canbuy location17 item39)
	(canbuy location13 item40)
	(canbuy location19 item41)
	(canbuy location1 item42)
	(canbuy location10 item43)
	(canbuy location13 item44)
	(canbuy location1 item45)
	(canbuy location13 item46)
	(canbuy location17 item47)
	(canbuy location16 item48)
	(canbuy location18 item49)
	(currencyOf item0 currency1)
	(currencyOf item1 currency1)
	(currencyOf item2 currency1)
	(currencyOf item3 currency0)
	(currencyOf item4 currency0)
	(currencyOf item5 currency0)
	(currencyOf item6 currency0)
	(currencyOf item7 currency0)
	(currencyOf item8 currency0)
	(currencyOf item9 currency1)
	(currencyOf item10 currency0)
	(currencyOf item11 currency1)
	(currencyOf item12 currency0)
	(currencyOf item13 currency1)
	(currencyOf item14 currency1)
	(currencyOf item15 currency0)
	(currencyOf item16 currency1)
	(currencyOf item17 currency1)
	(currencyOf item18 currency0)
	(currencyOf item19 currency1)
	(currencyOf item20 currency1)
	(currencyOf item21 currency0)
	(currencyOf item22 currency0)
	(currencyOf item23 currency1)
	(currencyOf item24 currency1)
	(currencyOf item25 currency0)
	(currencyOf item26 currency0)
	(currencyOf item27 currency1)
	(currencyOf item28 currency1)
	(currencyOf item29 currency1)
	(currencyOf item30 currency0)
	(currencyOf item31 currency0)
	(currencyOf item32 currency0)
	(currencyOf item33 currency1)
	(currencyOf item34 currency1)
	(currencyOf item35 currency1)
	(currencyOf item36 currency1)
	(currencyOf item37 currency1)
	(currencyOf item38 currency1)
	(currencyOf item39 currency1)
	(currencyOf item40 currency0)
	(currencyOf item41 currency0)
	(currencyOf item42 currency0)
	(currencyOf item43 currency0)
	(currencyOf item44 currency0)
	(currencyOf item45 currency0)
	(currencyOf item46 currency0)
	(currencyOf item47 currency1)
	(currencyOf item48 currency0)
	(currencyOf item49 currency0)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 18)
	(= (currency_goal currency1) 14)
	(= (price item0) 72)
	(= (price item1) 66)
	(= (price item2) 90)
	(= (price item3) 72)
	(= (price item4) 25)
	(= (price item5) 17)
	(= (price item6) 89)
	(= (price item7) 50)
	(= (price item8) 22)
	(= (price item9) 95)
	(= (price item10) 96)
	(= (price item11) 48)
	(= (price item12) 96)
	(= (price item13) 89)
	(= (price item14) 87)
	(= (price item15) 65)
	(= (price item16) 93)
	(= (price item17) 50)
	(= (price item18) 19)
	(= (price item19) 71)
	(= (price item20) 96)
	(= (price item21) 17)
	(= (price item22) 97)
	(= (price item23) 29)
	(= (price item24) 70)
	(= (price item25) 84)
	(= (price item26) 42)
	(= (price item27) 75)
	(= (price item28) 49)
	(= (price item29) 40)
	(= (price item30) 26)
	(= (price item31) 58)
	(= (price item32) 27)
	(= (price item33) 40)
	(= (price item34) 48)
	(= (price item35) 91)
	(= (price item36) 85)
	(= (price item37) 22)
	(= (price item38) 96)
	(= (price item39) 12)
	(= (price item40) 28)
	(= (price item41) 96)
	(= (price item42) 95)
	(= (price item43) 78)
	(= (price item44) 86)
	(= (price item45) 24)
	(= (price item46) 98)
	(= (price item47) 10)
	(= (price item48) 55)
	(= (price item49) 54)
	(= (balance currency0) 2301)
	(= (balance currency1) 2307)
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

