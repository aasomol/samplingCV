(define (problem disc_drone)
(:domain disc_drone)
(:objects 
	loc0 - location
	loc1 - location
	loc2 - location
	loc3 - location
	loc4 - location
	loc5 - location
	loc6 - location
	loc7 - location
	loc8 - location
	loc9 - location
	loc10 - location
	loc11 - location
	loc12 - location
	loc13 - location
	loc14 - location
	loc15 - location
	loc16 - location
	loc17 - location
	loc18 - location
	loc19 - location
	loc20 - location
	loc21 - location
	loc22 - location
	loc23 - location
	loc24 - location
	loc25 - location
	loc26 - location
	loc27 - location
	loc28 - location
	loc29 - location
	loc30 - location
	loc31 - location
	loc32 - location
	loc33 - location
	loc34 - location
	loc35 - location
	loc36 - location
	loc37 - location
	loc38 - location
	loc39 - location
	loc40 - location
	loc41 - location
	loc42 - location
	loc43 - location
	loc44 - location
	loc45 - location
	loc46 - location
	loc47 - location
	loc48 - location
	loc49 - location
	loc50 - location
	loc51 - location
	loc52 - location
	loc53 - location
	loc54 - location
	loc55 - location
	loc56 - location
	loc57 - location
	loc58 - location
	loc59 - location
	loc60 - location
	loc61 - location
	loc62 - location
	loc63 - location
	loc64 - location
	loc65 - location
	loc66 - location
	loc67 - location
	loc68 - location
	loc69 - location
	loc70 - location
	loc71 - location
	loc72 - location
	loc73 - location
	loc74 - location
	loc75 - location
	loc76 - location
	loc77 - location
	loc78 - location
	loc79 - location
	loc80 - location
	loc81 - location
	loc82 - location
	loc83 - location
	loc84 - location
	loc85 - location
	loc86 - location
	loc87 - location
	loc88 - location
	loc89 - location
	loc90 - location
	loc91 - location
	loc92 - location
	loc93 - location
	loc94 - location
	loc95 - location
	loc96 - location
	loc97 - location
	loc98 - location
	loc99 - location
	loc100 - location
	loc101 - location
	loc102 - location
	loc103 - location
	loc104 - location
	loc105 - location
	loc106 - location
	loc107 - location
	loc108 - location
	loc109 - location
	loc110 - location
	loc111 - location
	loc112 - location
	loc113 - location
	loc114 - location
	loc115 - location
	loc116 - location
	loc117 - location
	loc118 - location
	loc119 - location
	loc120 - location
	loc121 - location
	loc122 - location
	loc123 - location
	loc124 - location
)
(:init
	(= (x) 0)
	(= (y) 0)
	(= (z) 0)
	(= (min_x) 0)
	(= (min_y) 0)
	(= (min_z) 0)
	(= (max_x) 5)
	(= (max_y) 5)
	(= (max_z) 5)
	(= (xl loc0) 5)
	(= (yl loc0) 4)
	(= (zl loc0) 2)
	(= (xl loc1) 3)
	(= (yl loc1) 5)
	(= (zl loc1) 0)
	(= (xl loc2) 4)
	(= (yl loc2) 0)
	(= (zl loc2) 1)
	(= (xl loc3) 2)
	(= (yl loc3) 2)
	(= (zl loc3) 5)
	(= (xl loc4) 0)
	(= (yl loc4) 3)
	(= (zl loc4) 3)
	(= (xl loc5) 1)
	(= (yl loc5) 3)
	(= (zl loc5) 0)
	(= (xl loc6) 5)
	(= (yl loc6) 5)
	(= (zl loc6) 3)
	(= (xl loc7) 3)
	(= (yl loc7) 1)
	(= (zl loc7) 5)
	(= (xl loc8) 3)
	(= (yl loc8) 3)
	(= (zl loc8) 2)
	(= (xl loc9) 4)
	(= (yl loc9) 1)
	(= (zl loc9) 2)
	(= (xl loc10) 2)
	(= (yl loc10) 4)
	(= (zl loc10) 5)
	(= (xl loc11) 1)
	(= (yl loc11) 0)
	(= (zl loc11) 1)
	(= (xl loc12) 1)
	(= (yl loc12) 1)
	(= (zl loc12) 0)
	(= (xl loc13) 3)
	(= (yl loc13) 0)
	(= (zl loc13) 3)
	(= (xl loc14) 0)
	(= (yl loc14) 2)
	(= (zl loc14) 4)
	(= (xl loc15) 0)
	(= (yl loc15) 5)
	(= (zl loc15) 3)
	(= (xl loc16) 5)
	(= (yl loc16) 4)
	(= (zl loc16) 4)
	(= (xl loc17) 2)
	(= (yl loc17) 0)
	(= (zl loc17) 1)
	(= (xl loc18) 3)
	(= (yl loc18) 5)
	(= (zl loc18) 2)
	(= (xl loc19) 4)
	(= (yl loc19) 0)
	(= (zl loc19) 3)
	(= (xl loc20) 4)
	(= (yl loc20) 2)
	(= (zl loc20) 0)
	(= (xl loc21) 0)
	(= (yl loc21) 3)
	(= (zl loc21) 5)
	(= (xl loc22) 4)
	(= (yl loc22) 1)
	(= (zl loc22) 4)
	(= (xl loc23) 1)
	(= (yl loc23) 1)
	(= (zl loc23) 2)
	(= (xl loc24) 5)
	(= (yl loc24) 1)
	(= (zl loc24) 1)
	(= (xl loc25) 2)
	(= (yl loc25) 0)
	(= (zl loc25) 3)
	(= (xl loc26) 2)
	(= (yl loc26) 2)
	(= (zl loc26) 0)
	(= (xl loc27) 3)
	(= (yl loc27) 5)
	(= (zl loc27) 4)
	(= (xl loc28) 0)
	(= (yl loc28) 1)
	(= (zl loc28) 1)
	(= (xl loc29) 4)
	(= (yl loc29) 4)
	(= (zl loc29) 5)
	(= (xl loc30) 3)
	(= (yl loc30) 1)
	(= (zl loc30) 0)
	(= (xl loc31) 1)
	(= (yl loc31) 3)
	(= (zl loc31) 4)
	(= (xl loc32) 1)
	(= (yl loc32) 4)
	(= (zl loc32) 3)
	(= (xl loc33) 3)
	(= (yl loc33) 4)
	(= (zl loc33) 5)
	(= (xl loc34) 0)
	(= (yl loc34) 0)
	(= (zl loc34) 2)
	(= (xl loc35) 1)
	(= (yl loc35) 1)
	(= (zl loc35) 4)
	(= (xl loc36) 5)
	(= (yl loc36) 1)
	(= (zl loc36) 3)
	(= (xl loc37) 1)
	(= (yl loc37) 5)
	(= (zl loc37) 4)
	(= (xl loc38) 2)
	(= (yl loc38) 2)
	(= (zl loc38) 2)
	(= (xl loc39) 4)
	(= (yl loc39) 2)
	(= (zl loc39) 4)
	(= (xl loc40) 0)
	(= (yl loc40) 3)
	(= (zl loc40) 0)
	(= (xl loc41) 0)
	(= (yl loc41) 1)
	(= (zl loc41) 3)
	(= (xl loc42) 5)
	(= (yl loc42) 0)
	(= (zl loc42) 4)
	(= (xl loc43) 2)
	(= (yl loc43) 5)
	(= (zl loc43) 4)
	(= (xl loc44) 5)
	(= (yl loc44) 2)
	(= (zl loc44) 1)
	(= (xl loc45) 1)
	(= (yl loc45) 4)
	(= (zl loc45) 5)
	(= (xl loc46) 0)
	(= (yl loc46) 2)
	(= (zl loc46) 1)
	(= (xl loc47) 5)
	(= (yl loc47) 3)
	(= (zl loc47) 2)
	(= (xl loc48) 2)
	(= (yl loc48) 2)
	(= (zl loc48) 4)
	(= (xl loc49) 0)
	(= (yl loc49) 1)
	(= (zl loc49) 5)
	(= (xl loc50) 1)
	(= (yl loc50) 2)
	(= (zl loc50) 1)
	(= (xl loc51) 3)
	(= (yl loc51) 1)
	(= (zl loc51) 4)
	(= (xl loc52) 3)
	(= (yl loc52) 2)
	(= (zl loc52) 3)
	(= (xl loc53) 3)
	(= (yl loc53) 4)
	(= (zl loc53) 0)
	(= (xl loc54) 5)
	(= (yl loc54) 4)
	(= (zl loc54) 3)
	(= (xl loc55) 2)
	(= (yl loc55) 0)
	(= (zl loc55) 0)
	(= (xl loc56) 3)
	(= (yl loc56) 0)
	(= (zl loc56) 5)
	(= (xl loc57) 3)
	(= (yl loc57) 5)
	(= (zl loc57) 1)
	(= (xl loc58) 4)
	(= (yl loc58) 0)
	(= (zl loc58) 2)
	(= (xl loc59) 2)
	(= (yl loc59) 1)
	(= (zl loc59) 1)
	(= (xl loc60) 4)
	(= (yl loc60) 5)
	(= (zl loc60) 1)
	(= (xl loc61) 5)
	(= (yl loc61) 2)
	(= (zl loc61) 5)
	(= (xl loc62) 1)
	(= (yl loc62) 4)
	(= (zl loc62) 0)
	(= (xl loc63) 3)
	(= (yl loc63) 4)
	(= (zl loc63) 2)
	(= (xl loc64) 2)
	(= (yl loc64) 3)
	(= (zl loc64) 1)
	(= (xl loc65) 1)
	(= (yl loc65) 0)
	(= (zl loc65) 5)
	(= (xl loc66) 5)
	(= (yl loc66) 4)
	(= (zl loc66) 5)
	(= (xl loc67) 1)
	(= (yl loc67) 5)
	(= (zl loc67) 1)
	(= (xl loc68) 2)
	(= (yl loc68) 0)
	(= (zl loc68) 2)
	(= (xl loc69) 4)
	(= (yl loc69) 0)
	(= (zl loc69) 4)
	(= (xl loc70) 0)
	(= (yl loc70) 1)
	(= (zl loc70) 0)
	(= (xl loc71) 4)
	(= (yl loc71) 4)
	(= (zl loc71) 4)
	(= (xl loc72) 1)
	(= (yl loc72) 3)
	(= (zl loc72) 3)
	(= (xl loc73) 3)
	(= (yl loc73) 3)
	(= (zl loc73) 5)
	(= (xl loc74) 2)
	(= (yl loc74) 3)
	(= (zl loc74) 3)
	(= (xl loc75) 4)
	(= (yl loc75) 3)
	(= (zl loc75) 5)
	(= (xl loc76) 0)
	(= (yl loc76) 4)
	(= (zl loc76) 1)
	(= (xl loc77) 3)
	(= (yl loc77) 0)
	(= (zl loc77) 0)
	(= (xl loc78) 0)
	(= (yl loc78) 5)
	(= (zl loc78) 0)
	(= (xl loc79) 5)
	(= (yl loc79) 0)
	(= (zl loc79) 3)
	(= (xl loc80) 5)
	(= (yl loc80) 2)
	(= (zl loc80) 0)
	(= (xl loc81) 2)
	(= (yl loc81) 5)
	(= (zl loc81) 3)
	(= (xl loc82) 3)
	(= (yl loc82) 1)
	(= (zl loc82) 1)
	(= (xl loc83) 3)
	(= (yl loc83) 2)
	(= (zl loc83) 0)
	(= (xl loc84) 1)
	(= (yl loc84) 4)
	(= (zl loc84) 4)
	(= (xl loc85) 5)
	(= (yl loc85) 5)
	(= (zl loc85) 2)
	(= (xl loc86) 0)
	(= (yl loc86) 2)
	(= (zl loc86) 0)
	(= (xl loc87) 2)
	(= (yl loc87) 3)
	(= (zl loc87) 5)
	(= (xl loc88) 2)
	(= (yl loc88) 4)
	(= (zl loc88) 4)
	(= (xl loc89) 3)
	(= (yl loc89) 0)
	(= (zl loc89) 2)
	(= (xl loc90) 0)
	(= (yl loc90) 5)
	(= (zl loc90) 2)
	(= (xl loc91) 2)
	(= (yl loc91) 5)
	(= (zl loc91) 5)
	(= (xl loc92) 1)
	(= (yl loc92) 2)
	(= (zl loc92) 0)
	(= (xl loc93) 5)
	(= (yl loc93) 5)
	(= (zl loc93) 4)
	(= (xl loc94) 0)
	(= (yl loc94) 0)
	(= (zl loc94) 5)
	(= (xl loc95) 4)
	(= (yl loc95) 3)
	(= (zl loc95) 0)
	(= (xl loc96) 1)
	(= (yl loc96) 1)
	(= (zl loc96) 1)
	(= (xl loc97) 0)
	(= (yl loc97) 5)
	(= (zl loc97) 4)
	(= (xl loc98) 2)
	(= (yl loc98) 1)
	(= (zl loc98) 0)
	(= (xl loc99) 4)
	(= (yl loc99) 4)
	(= (zl loc99) 1)
	(= (xl loc100) 4)
	(= (yl loc100) 2)
	(= (zl loc100) 1)
	(= (xl loc101) 4)
	(= (yl loc101) 5)
	(= (zl loc101) 0)
	(= (xl loc102) 3)
	(= (yl loc102) 2)
	(= (zl loc102) 4)
	(= (xl loc103) 3)
	(= (yl loc103) 4)
	(= (zl loc103) 1)
	(= (xl loc104) 4)
	(= (yl loc104) 1)
	(= (zl loc104) 5)
	(= (xl loc105) 4)
	(= (yl loc105) 3)
	(= (zl loc105) 2)
	(= (xl loc106) 5)
	(= (yl loc106) 1)
	(= (zl loc106) 2)
	(= (xl loc107) 1)
	(= (yl loc107) 5)
	(= (zl loc107) 3)
	(= (xl loc108) 2)
	(= (yl loc108) 1)
	(= (zl loc108) 2)
	(= (xl loc109) 5)
	(= (yl loc109) 0)
	(= (zl loc109) 0)
	(= (xl loc110) 2)
	(= (yl loc110) 5)
	(= (zl loc110) 0)
	(= (xl loc111) 2)
	(= (yl loc111) 0)
	(= (zl loc111) 4)
	(= (xl loc112) 4)
	(= (yl loc112) 2)
	(= (zl loc112) 3)
	(= (xl loc113) 3)
	(= (yl loc113) 5)
	(= (zl loc113) 5)
	(= (xl loc114) 3)
	(= (yl loc114) 4)
	(= (zl loc114) 3)
	(= (xl loc115) 2)
	(= (yl loc115) 4)
	(= (zl loc115) 1)
	(= (xl loc116) 4)
	(= (yl loc116) 3)
	(= (zl loc116) 4)
	(= (xl loc117) 1)
	(= (yl loc117) 1)
	(= (zl loc117) 5)
	(= (xl loc118) 5)
	(= (yl loc118) 1)
	(= (zl loc118) 4)
	(= (xl loc119) 2)
	(= (yl loc119) 1)
	(= (zl loc119) 4)
	(= (xl loc120) 2)
	(= (yl loc120) 2)
	(= (zl loc120) 3)
	(= (xl loc121) 0)
	(= (yl loc121) 1)
	(= (zl loc121) 4)
	(= (xl loc122) 4)
	(= (yl loc122) 1)
	(= (zl loc122) 0)
	(= (xl loc123) 2)
	(= (yl loc123) 3)
	(= (zl loc123) 4)
	(= (xl loc124) 2)
	(= (yl loc124) 4)
	(= (zl loc124) 3)
	(= (battery-level) 47)
	(= (battery-level-full) 47)
	(= (low_deltax) 1)
	(= (low_deltay) 1)
	(= (low_deltaz) 1)
	(= (deltax) 1)
	(= (deltay) 1)
	(= (deltaz) 1)
	(= (up_deltax) 5)
	(= (up_deltay) 5)
	(= (up_deltaz) 5)
)
(:goal (and
	(visited loc0)
	(visited loc1)
	(visited loc2)
	(visited loc3)
	(visited loc4)
	(visited loc5)
	(visited loc6)
	(visited loc7)
	(visited loc8)
	(visited loc9)
	(visited loc10)
	(visited loc11)
	(visited loc12)
	(visited loc13)
	(visited loc14)
	(visited loc15)
	(visited loc16)
	(visited loc17)
	(visited loc18)
	(visited loc19)
	(visited loc20)
	(visited loc21)
	(visited loc22)
	(visited loc23)
	(visited loc24)
	(visited loc25)
	(visited loc26)
	(visited loc27)
	(visited loc28)
	(visited loc29)
	(visited loc30)
	(visited loc31)
	(visited loc32)
	(visited loc33)
	(visited loc34)
	(visited loc35)
	(visited loc36)
	(visited loc37)
	(visited loc38)
	(visited loc39)
	(visited loc40)
	(visited loc41)
	(visited loc42)
	(visited loc43)
	(visited loc44)
	(visited loc45)
	(visited loc46)
	(visited loc47)
	(visited loc48)
	(visited loc49)
	(visited loc50)
	(visited loc51)
	(visited loc52)
	(visited loc53)
	(visited loc54)
	(visited loc55)
	(visited loc56)
	(visited loc57)
	(visited loc58)
	(visited loc59)
	(visited loc60)
	(visited loc61)
	(visited loc62)
	(visited loc63)
	(visited loc64)
	(visited loc65)
	(visited loc66)
	(visited loc67)
	(visited loc68)
	(visited loc69)
	(visited loc70)
	(visited loc71)
	(visited loc72)
	(visited loc73)
	(visited loc74)
	(visited loc75)
	(visited loc76)
	(visited loc77)
	(visited loc78)
	(visited loc79)
	(visited loc80)
	(visited loc81)
	(visited loc82)
	(visited loc83)
	(visited loc84)
	(visited loc85)
	(visited loc86)
	(visited loc87)
	(visited loc88)
	(visited loc89)
	(visited loc90)
	(visited loc91)
	(visited loc92)
	(visited loc93)
	(visited loc94)
	(visited loc95)
	(visited loc96)
	(visited loc97)
	(visited loc98)
	(visited loc99)
	(visited loc100)
	(visited loc101)
	(visited loc102)
	(visited loc103)
	(visited loc104)
	(visited loc105)
	(visited loc106)
	(visited loc107)
	(visited loc108)
	(visited loc109)
	(visited loc110)
	(visited loc111)
	(visited loc112)
	(visited loc113)
	(visited loc114)
	(visited loc115)
	(visited loc116)
	(visited loc117)
	(visited loc118)
	(visited loc119)
	(visited loc120)
	(visited loc121)
	(visited loc122)
	(visited loc123)
	(visited loc124)
	(= (x) 0)
	(= (y) 0)
	(= (z) 0)
))
)

