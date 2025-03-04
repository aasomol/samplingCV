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
	location20 - location
	location21 - location
	location22 - location
	location23 - location
	location24 - location
	location25 - location
	location26 - location
	location27 - location
	location28 - location
	location29 - location
	location30 - location
	location31 - location
	location32 - location
	location33 - location
	location34 - location
	location35 - location
	location36 - location
	location37 - location
	location38 - location
	location39 - location
	location40 - location
	location41 - location
	location42 - location
	location43 - location
	location44 - location
	location45 - location
	location46 - location
	location47 - location
	location48 - location
	location49 - location
	currency0 - currency
	currency1 - currency
	currency2 - currency
	currency3 - currency
	currency4 - currency
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
	(at location31)
	(canwithdraw location31)
	(canwithdraw location31)
	(canwithdraw location31)
	(canwithdraw location31)
	(canwithdraw location31)
	(canwithdraw location31)
	(canwithdraw location31)
	(canwithdraw location31)
	(canwithdraw location31)
	(canwithdraw location31)
	(canwithdraw location31)
	(canwithdraw location31)
	(canwithdraw location31)
	(canwithdraw location31)
	(canwithdraw location31)
	(canwithdraw location31)
	(canbuy location6 item0)
	(canbuy location15 item1)
	(canbuy location34 item2)
	(canbuy location27 item3)
	(canbuy location17 item4)
	(canbuy location40 item5)
	(canbuy location37 item6)
	(canbuy location45 item7)
	(canbuy location44 item8)
	(canbuy location11 item9)
	(canbuy location45 item10)
	(canbuy location27 item11)
	(canbuy location10 item12)
	(canbuy location40 item13)
	(canbuy location5 item14)
	(canbuy location31 item15)
	(canbuy location38 item16)
	(canbuy location31 item17)
	(canbuy location17 item18)
	(canbuy location25 item19)
	(canbuy location13 item20)
	(canbuy location5 item21)
	(canbuy location27 item22)
	(canbuy location18 item23)
	(canbuy location40 item24)
	(canbuy location46 item25)
	(canbuy location46 item26)
	(canbuy location41 item27)
	(canbuy location38 item28)
	(canbuy location10 item29)
	(canbuy location36 item30)
	(canbuy location41 item31)
	(canbuy location18 item32)
	(canbuy location6 item33)
	(canbuy location44 item34)
	(canbuy location21 item35)
	(canbuy location3 item36)
	(canbuy location31 item37)
	(canbuy location11 item38)
	(canbuy location24 item39)
	(canbuy location30 item40)
	(canbuy location30 item41)
	(canbuy location32 item42)
	(canbuy location43 item43)
	(canbuy location5 item44)
	(canbuy location43 item45)
	(canbuy location24 item46)
	(canbuy location31 item47)
	(canbuy location37 item48)
	(canbuy location30 item49)
	(currencyOf item0 currency3)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(currencyOf item3 currency4)
	(currencyOf item4 currency4)
	(currencyOf item5 currency2)
	(currencyOf item6 currency4)
	(currencyOf item7 currency3)
	(currencyOf item8 currency4)
	(currencyOf item9 currency0)
	(currencyOf item10 currency0)
	(currencyOf item11 currency3)
	(currencyOf item12 currency0)
	(currencyOf item13 currency2)
	(currencyOf item14 currency0)
	(currencyOf item15 currency4)
	(currencyOf item16 currency4)
	(currencyOf item17 currency0)
	(currencyOf item18 currency0)
	(currencyOf item19 currency4)
	(currencyOf item20 currency4)
	(currencyOf item21 currency1)
	(currencyOf item22 currency1)
	(currencyOf item23 currency4)
	(currencyOf item24 currency2)
	(currencyOf item25 currency0)
	(currencyOf item26 currency2)
	(currencyOf item27 currency3)
	(currencyOf item28 currency3)
	(currencyOf item29 currency3)
	(currencyOf item30 currency4)
	(currencyOf item31 currency2)
	(currencyOf item32 currency1)
	(currencyOf item33 currency2)
	(currencyOf item34 currency1)
	(currencyOf item35 currency1)
	(currencyOf item36 currency4)
	(currencyOf item37 currency2)
	(currencyOf item38 currency1)
	(currencyOf item39 currency1)
	(currencyOf item40 currency1)
	(currencyOf item41 currency2)
	(currencyOf item42 currency0)
	(currencyOf item43 currency2)
	(currencyOf item44 currency0)
	(currencyOf item45 currency3)
	(currencyOf item46 currency0)
	(currencyOf item47 currency3)
	(currencyOf item48 currency2)
	(currencyOf item49 currency0)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (inpocket currency2) 0)
	(= (inpocket currency3) 0)
	(= (inpocket currency4) 0)
	(= (currency_goal currency0) 35)
	(= (currency_goal currency1) 20)
	(= (currency_goal currency2) 33)
	(= (currency_goal currency3) 44)
	(= (currency_goal currency4) 51)
	(= (price item0) 30)
	(= (price item1) 66)
	(= (price item2) 43)
	(= (price item3) 50)
	(= (price item4) 16)
	(= (price item5) 67)
	(= (price item6) 10)
	(= (price item7) 18)
	(= (price item8) 23)
	(= (price item9) 29)
	(= (price item10) 81)
	(= (price item11) 61)
	(= (price item12) 71)
	(= (price item13) 70)
	(= (price item14) 63)
	(= (price item15) 36)
	(= (price item16) 82)
	(= (price item17) 98)
	(= (price item18) 13)
	(= (price item19) 39)
	(= (price item20) 57)
	(= (price item21) 66)
	(= (price item22) 84)
	(= (price item23) 72)
	(= (price item24) 14)
	(= (price item25) 86)
	(= (price item26) 36)
	(= (price item27) 95)
	(= (price item28) 62)
	(= (price item29) 45)
	(= (price item30) 77)
	(= (price item31) 62)
	(= (price item32) 88)
	(= (price item33) 59)
	(= (price item34) 30)
	(= (price item35) 76)
	(= (price item36) 33)
	(= (price item37) 20)
	(= (price item38) 64)
	(= (price item39) 58)
	(= (price item40) 99)
	(= (price item41) 40)
	(= (price item42) 99)
	(= (price item43) 77)
	(= (price item44) 59)
	(= (price item45) 19)
	(= (price item46) 65)
	(= (price item47) 24)
	(= (price item48) 43)
	(= (price item49) 94)
	(= (balance currency0) 1353)
	(= (balance currency1) 878)
	(= (balance currency2) 782)
	(= (balance currency3) 597)
	(= (balance currency4) 819)
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
	(have_enough currency2)
	(have_enough currency3)
	(have_enough currency4)
))
)

