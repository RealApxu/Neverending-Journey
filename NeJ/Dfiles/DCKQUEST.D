BEGIN ~DCKQUEST~

IF ~RandomNum(5,0)
!Global("LKingDead","GLOBAL",1)~ THEN BEGIN 0
  SAY ~When people die, they turn into skeletons.  I'm going to turn into a skeleton.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,1)
!Global("LKingDead","GLOBAL",1)~ THEN BEGIN 1
  SAY ~Don't let the monsters eat us!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
!Global("LKingDead","GLOBAL",1)~ THEN BEGIN 2
  SAY ~They think we're yummy.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
!Global("LKingDead","GLOBAL",1)~ THEN BEGIN 3
  SAY ~I want to punch the monsters in the eye.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
!Global("LKingDead","GLOBAL",1)~ THEN BEGIN 4
  SAY ~I'm hungry!  I'm thirsty!~
  IF ~~ THEN EXIT
END

IF ~Global("Liz_King_Quest","GLOBAL",1)~ THEN BEGIN 5
  SAY ~I don't like this place.~
  IF ~~ THEN EXIT
END

IF ~Global("LKingDead","GLOBAL",1)~ THEN BEGIN 6
  SAY ~Thank you for saving us from the icky lizards.  I'm going to go home now.  Bye bye!~
  IF ~~ THEN REPLY ~Farewell, kid.~ DO ~AddXPObject(Player1,21500)
AddXPObject(Player2,21500)
AddXPObject(Player3,21500)
AddXPObject(Player4,21500)
AddXPObject(Player5,21500)
AddXPObject(Player6,21500)
SetGlobal("Liz_King_Quest","GLOBAL",1)
EscapeArea()~ SOLVED_JOURNAL ~Find the missing people of Kuldahar.

After killing the Lizard King, we encountered a little girl in front of a decline leading to a deeper level of Dragon's Eye.  She thanked us for killing the lizard men and told us that she was going to go home.~ EXIT
END