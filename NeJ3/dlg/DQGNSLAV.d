BEGIN ~DQGNSLAV~

IF ~RandomNum(4,0)
Global("VP_Slave_Released","GLOBAL",0)~ THEN BEGIN 0
  SAY ~A horrible fate awaits us! We are all doomed!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,1)
Global("VP_Slave_Released","GLOBAL",0)~ THEN BEGIN 1
  SAY ~May the Gods bless your quest.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)
Global("VP_Slave_Released","GLOBAL",0)~ THEN BEGIN 2
  SAY ~I would rather kill myself than be enslaved to human scum!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)
Global("VP_Slave_Released","GLOBAL",0)~ THEN BEGIN 3
  SAY ~Don’t fail us. Our freedom is in your hands.~
  IF ~~ THEN EXIT
END

IF ~RandomNumLT(4,5)
Global("VP_Slave_Released","GLOBAL",0)~ THEN BEGIN 4
  SAY ~Leave me be. I am in a terrible mood.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,0)
Global("VP_Slave_Released","GLOBAL",1)~ THEN BEGIN 5
  SAY ~You did it! You have my eternal gratitude!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,1)
Global("VP_Slave_Released","GLOBAL",1)~ THEN BEGIN 6
  SAY ~I’m sorry I doubted you. You did it! You freed us all!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)
Global("VP_Slave_Released","GLOBAL",1)~ THEN BEGIN 7
  SAY ~I can never repay you for what you have done.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)
Global("VP_Slave_Released","GLOBAL",1)~ THEN BEGIN 8
  SAY ~You have earned my undying gratitude and respect. Thank you.~
  IF ~~ THEN EXIT
END

IF ~RandomNumLT(4,5)
Global("VP_Slave_Released","GLOBAL",1)~ THEN BEGIN 9
  SAY ~I don’t know how you did it, and I don’t care. You did it and that’s all that matters!~
  IF ~~ THEN EXIT
END
