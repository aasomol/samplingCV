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
	(at location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canwithdraw location7)
	(canbuy location30 item0)
	(canbuy location0 item1)
	(canbuy location22 item2)
	(canbuy location28 item3)
	(canbuy location22 item4)
	(canbuy location20 item5)
	(canbuy location29 item6)
	(canbuy location10 item7)
	(canbuy location31 item8)
	(canbuy location38 item9)
	(canbuy location9 item10)
	(canbuy location35 item11)
	(canbuy location20 item12)
	(canbuy location3 item13)
	(canbuy location6 item14)
	(canbuy location47 item15)
	(canbuy location31 item16)
	(canbuy location8 item17)
	(canbuy location31 item18)
	(canbuy location35 item19)
	(canbuy location48 item20)
	(canbuy location29 item21)
	(canbuy location35 item22)
	(canbuy location48 item23)
	(canbuy location18 item24)
	(canbuy location21 item25)
	(canbuy location30 item26)
	(canbuy location37 item27)
	(canbuy location6 item28)
	(canbuy location23 item29)
	(canbuy location37 item30)
	(canbuy location42 item31)
	(canbuy location29 item32)
	(canbuy location42 item33)
	(canbuy location23 item34)
	(canbuy location47 item35)
	(canbuy location24 item36)
	(canbuy location48 item37)
	(canbuy location8 item38)
	(canbuy location0 item39)
	(canbuy location20 item40)
	(canbuy location22 item41)
	(canbuy location29 item42)
	(canbuy location37 item43)
	(canbuy location47 item44)
	(canbuy location29 item45)
	(canbuy location48 item46)
	(canbuy location48 item47)
	(canbuy location29 item48)
	(canbuy location47 item49)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(currencyOf item3 currency1)
	(currencyOf item4 currency1)
	(currencyOf item5 currency0)
	(currencyOf item6 currency1)
	(currencyOf item7 currency1)
	(currencyOf item8 currency1)
	(currencyOf item9 currency0)
	(currencyOf item10 currency0)
	(currencyOf item11 currency1)
	(currencyOf item12 currency1)
	(currencyOf item13 currency0)
	(currencyOf item14 currency0)
	(currencyOf item15 currency0)
	(currencyOf item16 currency1)
	(currencyOf item17 currency1)
	(currencyOf item18 currency0)
	(currencyOf item19 currency0)
	(currencyOf item20 currency0)
	(currencyOf item21 currency0)
	(currencyOf item22 currency1)
	(currencyOf item23 currency0)
	(currencyOf item24 currency0)
	(currencyOf item25 currency1)
	(currencyOf item26 currency0)
	(currencyOf item27 currency1)
	(currencyOf item28 currency0)
	(currencyOf item29 currency0)
	(currencyOf item30 currency1)
	(currencyOf item31 currency0)
	(currencyOf item32 currency1)
	(currencyOf item33 currency1)
	(currencyOf item34 currency1)
	(currencyOf item35 currency1)
	(currencyOf item36 currency1)
	(currencyOf item37 currency1)
	(currencyOf item38 currency0)
	(currencyOf item39 currency0)
	(currencyOf item40 currency0)
	(currencyOf item41 currency1)
	(currencyOf item42 currency1)
	(currencyOf item43 currency1)
	(currencyOf item44 currency1)
	(currencyOf item45 currency1)
	(currencyOf item46 currency1)
	(currencyOf item47 currency0)
	(currencyOf item48 currency1)
	(currencyOf item49 currency0)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 33)
	(= (currency_goal currency1) 23)
	(= (price item0) 25)
	(= (price item1) 42)
	(= (price item2) 34)
	(= (price item3) 40)
	(= (price item4) 56)
	(= (price item5) 70)
	(= (price item6) 75)
	(= (price item7) 16)
	(= (price item8) 98)
	(= (price item9) 29)
	(= (price item10) 70)
	(= (price item11) 15)
	(= (price item12) 11)
	(= (price item13) 79)
	(= (price item14) 100)
	(= (price item15) 24)
	(= (price item16) 97)
	(= (price item17) 64)
	(= (price item18) 12)
	(= (price item19) 16)
	(= (price item20) 33)
	(= (price item21) 50)
	(= (price item22) 57)
	(= (price item23) 90)
	(= (price item24) 87)
	(= (price item25) 45)
	(= (price item26) 51)
	(= (price item27) 76)
	(= (price item28) 57)
	(= (price item29) 17)
	(= (price item30) 72)
	(= (price item31) 78)
	(= (price item32) 96)
	(= (price item33) 17)
	(= (price item34) 42)
	(= (price item35) 68)
	(= (price item36) 96)
	(= (price item37) 32)
	(= (price item38) 25)
	(= (price item39) 11)
	(= (price item40) 98)
	(= (price item41) 16)
	(= (price item42) 41)
	(= (price item43) 95)
	(= (price item44) 10)
	(= (price item45) 32)
	(= (price item46) 29)
	(= (price item47) 18)
	(= (price item48) 64)
	(= (price item49) 97)
	(= (balance currency0) 1869)
	(= (balance currency1) 2074)
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

