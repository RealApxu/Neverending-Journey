BEGIN ~DARP~

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 0
  SAY ~It is good to see you again <CHARNAME>, I have eagerly awaited your return. Do you seek me out because you wish me to travel with you once more?~  [DAR_L01]
  IF ~~ THEN REPLY ~I do indeed need your talents and your strong arm Dar, that is if you are willing to join with me again?~ GOTO 3
  IF ~~ THEN REPLY ~I have no need of you at the moment Dar, but I was passing and thought to see how you had settled. You appear content with your life here?~ GOTO 4
END

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 1
  SAY ~So, is this where we part company my friend? Are you sure you no longer have need of me?~ [DAR_L02]
  IF ~~ THEN REPLY ~Of course I still have need of you Dar. I did not intend asking you to leave. Please stay?~ GOTO 9
  IF ~Global("VP_In_IWD_Part1","GLOBAL",1)~ THEN REPLY ~For the moment it is best that we go our separate ways Dar.~ GOTO 5
  IF ~!Global("VP_DrBook_Found","GLOBAL",2) !Global("VP_Dar_Quest","GLOBAL",20) Global("VP_In_IWD_Part1","GLOBAL",0) Global("VP_InHalruaa","GLOBAL",0) Global("VP_OnIsland","GLOBAL",0) !InWatchersKeep() !AreaCheck("AR0301") !AreaCheck("AR0302") !AreaCheck("AR0303") !AreaCheck("AR0304") !AreaCheck("AR0305") !AreaCheck("AR0306") !AreaCheck("AR0307") !AreaCheck("AR0410") !AreaCheck("AR0411") !AreaCheck("AR0412") !AreaCheck("AR0413") !AreaCheck("AR0414") !AreaCheck("AR0509") !AreaCheck("AR0510") !AreaCheck("AR0601") !AreaCheck("AR0602") !AreaCheck("AR0603") !AreaCheck("AR0604") !AreaCheck("AR0605") !AreaCheck("AR0606") !AreaCheck("AR0801") !AreaCheck("AR0803") !AreaCheck("AR1102") !AreaCheck("AR1107") !AreaCheck("AR1300") !AreaCheck("AR1301") !AreaCheck("AR1302") !AreaCheck("AR1303") !AreaCheck("AR1501") !AreaCheck("AR1502") !AreaCheck("AR1503") !AreaCheck("AR1504") !AreaCheck("AR1505") !AreaCheck("AR1506") !AreaCheck("AR1507") !AreaCheck("AR1508") !AreaCheck("AR1509") !AreaCheck("AR1510") !AreaCheck("AR1511") !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516") !AreaCheck("AR2100") !AreaCheck("AR2101") !AreaCheck("AR2102") !AreaCheck("AR2200") !AreaCheck("AR2202") !AreaCheck("AR2203") !AreaCheck("AR2204") !AreaCheck("AR2205") !AreaCheck("AR2206") !AreaCheck("AR2207") !AreaCheck("AR2208") !AreaCheck("AR2209") !AreaCheck("AR2210") !AreaCheck("AR2300") !AreaCheck("AR2400") !AreaCheck("AR2401") !AreaCheck("AR2402") !AreaCheck("AR2900") !AreaCheck("AR2901") !AreaCheck("AR2902") !AreaCheck("AR2903") !AreaCheck("AR2904") !AreaCheck("AR2905") !AreaCheck("AR2906")~ THEN REPLY ~For the moment it is best that we go our separate ways Dar.~ GOTO 8
  IF ~Global("VP_DrBook_Found","GLOBAL",2) Global("VP_Dar_Quest","GLOBAL",20) Global("VP_In_IWD_Part1","GLOBAL",0) Global("VP_InHalruaa","GLOBAL",0) Global("VP_OnIsland","GLOBAL",0) !InWatchersKeep() !AreaCheck("AR0301") !AreaCheck("AR0302") !AreaCheck("AR0303") !AreaCheck("AR0304") !AreaCheck("AR0305") !AreaCheck("AR0306") !AreaCheck("AR0307") !AreaCheck("AR0410") !AreaCheck("AR0411") !AreaCheck("AR0412") !AreaCheck("AR0413") !AreaCheck("AR0414") !AreaCheck("AR0509") !AreaCheck("AR0510") !AreaCheck("AR0601") !AreaCheck("AR0602") !AreaCheck("AR0603") !AreaCheck("AR0604") !AreaCheck("AR0605") !AreaCheck("AR0606") !AreaCheck("AR0801") !AreaCheck("AR0803") !AreaCheck("AR1102") !AreaCheck("AR1107") !AreaCheck("AR1300") !AreaCheck("AR1301") !AreaCheck("AR1302") !AreaCheck("AR1303") !AreaCheck("AR1501") !AreaCheck("AR1502") !AreaCheck("AR1503") !AreaCheck("AR1504") !AreaCheck("AR1505") !AreaCheck("AR1506") !AreaCheck("AR1507") !AreaCheck("AR1508") !AreaCheck("AR1509") !AreaCheck("AR1510") !AreaCheck("AR1511") !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516") !AreaCheck("AR2100") !AreaCheck("AR2101") !AreaCheck("AR2102") !AreaCheck("AR2200") !AreaCheck("AR2202") !AreaCheck("AR2203") !AreaCheck("AR2204") !AreaCheck("AR2205") !AreaCheck("AR2206") !AreaCheck("AR2207") !AreaCheck("AR2208") !AreaCheck("AR2209") !AreaCheck("AR2210") !AreaCheck("AR2300") !AreaCheck("AR2400") !AreaCheck("AR2401") !AreaCheck("AR2402") !AreaCheck("AR2900") !AreaCheck("AR2901") !AreaCheck("AR2902") !AreaCheck("AR2903") !AreaCheck("AR2904") !AreaCheck("AR2905") !AreaCheck("AR2906")~ THEN REPLY ~For the moment it is best that we go our separate ways Dar.~ GOTO 16
  IF ~Global("VP_In_IWD_Part1","GLOBAL",0) OR(71)  Global("VP_InHalruaa","GLOBAL",1)  Global("VP_OnIsland","GLOBAL",1)  InWatchersKeep()  AreaCheck("AR0301")  AreaCheck("AR0302")  AreaCheck("AR0303")  AreaCheck("AR0304")  AreaCheck("AR0305")  AreaCheck("AR0306")  AreaCheck("AR0307")  AreaCheck("AR0410")  AreaCheck("AR0411")  AreaCheck("AR0412")  AreaCheck("AR0413")  AreaCheck("AR0414")  AreaCheck("AR0509")  AreaCheck("AR0510")  AreaCheck("AR0601")  AreaCheck("AR0602")  AreaCheck("AR0603")  AreaCheck("AR0604")  AreaCheck("AR0605")  AreaCheck("AR0606")  AreaCheck("AR0801")  AreaCheck("AR0803")  AreaCheck("AR1102")  AreaCheck("AR1107")  AreaCheck("AR1300")  AreaCheck("AR1301")  AreaCheck("AR1302")  AreaCheck("AR1303")  AreaCheck("AR1501")  AreaCheck("AR1502")  AreaCheck("AR1503")  AreaCheck("AR1504")  AreaCheck("AR1505")  AreaCheck("AR1506")  AreaCheck("AR1507")  AreaCheck("AR1508")  AreaCheck("AR1509")  AreaCheck("AR1510")  AreaCheck("AR1511")  AreaCheck("AR1512")  AreaCheck("AR1513")  AreaCheck("AR1514")  AreaCheck("AR1515")  AreaCheck("AR1516")  AreaCheck("AR2100")  AreaCheck("AR2101")  AreaCheck("AR2102")  AreaCheck("AR2200")  AreaCheck("AR2202")  AreaCheck("AR2203")  AreaCheck("AR2204")  AreaCheck("AR2205")  AreaCheck("AR2206")  AreaCheck("AR2207")  AreaCheck("AR2208")  AreaCheck("AR2209")  AreaCheck("AR2210")  AreaCheck("AR2300")  AreaCheck("AR2400")  AreaCheck("AR2401")  AreaCheck("AR2402")  AreaCheck("AR2900")  AreaCheck("AR2901")  AreaCheck("AR2902")  AreaCheck("AR2903")  AreaCheck("AR2904")  AreaCheck("AR2905")  AreaCheck("AR2906")~ THEN REPLY ~For the moment it is best that we go our separate ways Dar.~ GOTO 7
END

IF ~HappinessLT(Myself,-299)~ THEN BEGIN 2
  SAY ~Your evil ways disgust me. You should tread carefully from now on. I have followed you and fought by your side in the hopes of seeing a spark of goodness in your soul that could be nurtured. I have been blind in my loyalty to you!~ [DAR_L03]
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 3
  SAY ~I welcome the chance to travel with you again <CHARNAME> Life is tedious here compared to the time I spent in your company, or perhaps it is that I no longer crave that place to settle as much as I once did. Come my friend let us not tarry, the road awaits us.~ [DAR_L04]
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~As you can see, I have settled very well thank you <CHARNAME>. So well in fact that you can most assuredly find me here if you find you have a need for me at some future date. Until such a time arises, I bid you farewell <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~I�m saddened you feel as you do but I well understand your reluctance to take  me into your group. I will continue my road alone and wish you well on yours. Should you need my help soon, you will find me in Kuldahar.~ [DAR_L06]
  IF ~~ THEN REPLY ~We�ll meet you there if have need of your services.~ GOTO 6
  IF ~~ THEN REPLY ~You can�t go there. Why don�t you just wait right here, and if we need you again we�ll come back for you.~ GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY ~Good luck, my friend.~ [DAR_L07]
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("TT2100",2990,790,14)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Then come back when you can. I will wait if you are sure to return.~ [DAR_L09]
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~Then I shall perhaps settle here, maybe I can make a home here. I thank you for taking me into your group and giving me the chance that I may never have had. If you have further need of me, <CHARNAME> I shall be here.~
  IF ~~ THEN REPLY ~Then this is where I will seek you out should I require your aid again. Farewell my friend.~ GOTO 10
  IF ~~ THEN REPLY ~It would be easier for me to find you if you could find an inn or tavern to await my return.~ GOTO 11
  IF ~~ THEN REPLY ~Stay where you will, I doubt I shall have need of you again Dar. Farewell.~ GOTO 12
END

IF ~~ THEN BEGIN 9
  SAY ~Then let us continue on our road my friend and think no more of parting company.~
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~I wish you luck <CHARNAME> and I hope it is not too long before our paths cross again  May Ilmater watch over you as you travel.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY ~If that is your wish. I hope it is not too long before our paths cross again. I wish you luck and may Ilmater watch over you as you travel.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR0406",1570,1685,2)~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY ~Nonetheless, I shall be here should you have a change of heart <CHARNAME>. I wish you luck and may Ilmater watch over you as you travel.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~I now see there is nothing but your own self importance and the lust for power. I will no longer stand by and watch as you bring misery to all in your way. I see more orcish savagery in you than I, who carry the blood.~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~I must and will take my leave of you <CHARNAME>, I doubt we shall meet again.~
  IF ~~ THEN REPLY ~Come Dar, do not play the temperamental half breed with me! If you are not happy with the way I do things you should have said. I would have let you go earlier.~ GOTO 15
  IF ~~ THEN REPLY ~Fine with me. I was getting more than a little tired of those reproachful looks you keep throwing my way. I must say with your heritage I expected more support and less disapproval!~ GOTO 15
  IF ~~ THEN REPLY ~What brought this on? You  never showed signs of discontent before. Well, maybe there was the odd word or look now and again, but to say the fault was mine, now that is a bit much!~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~You really cannot see further than your own desires can you <CHARNAME>? Ilmater taught that my duty is to help the weak and oppressed, not take advantage of them! I cannot follow you and retain my honour, so this is farewell.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY ~Then I thank you for taking me into your group and giving me the chance that I may never have had. I will make my way back to my people and look for them to see how they have fared. You never know, this may be the home that I have long searched for.~
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) EscapeArea()~ EXIT
END