BEGIN ~DGNTSLAV~

IF ~RandomNum(4, 0)GlobalLT("Kill_Frost","GLOBAL",  3)~ THEN BEGIN 0
  SAY ~A horrible fate awaits us!  We are all doomed!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 1)GlobalLT("Kill_Frost","GLOBAL",  3)~ THEN BEGIN 1
  SAY ~No!  Not me!  I don�t want to be next!  Get away from me!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 2)GlobalLT("Kill_Frost","GLOBAL",  3)~ THEN BEGIN 2
  SAY ~I would rather kill myself than be sacrificed to some... creature!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 3)GlobalLT("Kill_Frost","GLOBAL",  3)~ THEN BEGIN 3
  SAY ~I - I -- I don�t want to be sacrificed.  Can you help me?~
  IF ~~ THEN EXIT
END

IF ~RandomNumLT(4, 5)GlobalLT("Kill_Frost","GLOBAL",  3)~ THEN BEGIN 4
  SAY ~Leave me be.  I have nothing to say.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 0)Global("Kill_Frost","GLOBAL",  3)~ THEN BEGIN 5
  SAY ~I hear you are trying to help us?  I wish you the luck of Tymora, friend.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 1)Global("Kill_Frost","GLOBAL",  3)~ THEN BEGIN 6
  SAY ~May the Gods bless your quest.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 2)Global("Kill_Frost","GLOBAL",  3)~ THEN BEGIN 7
  SAY ~Don�t fail us.  Our lives are in your hands.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 3)Global("Kill_Frost","GLOBAL",  3)~ THEN BEGIN 8
  SAY ~If you fail, we will all surely die... but then I guess you�ll be dead as well... Sorry.~
  IF ~~ THEN EXIT
END

IF ~RandomNumLT(4, 5)Global("Kill_Frost","GLOBAL",  3)~ THEN BEGIN 9
  SAY ~You�re going to try to kill the beast?  You are either brave or foolish... Oh, sorry.  Thank you for your help.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 0)Global("Kill_Frost","GLOBAL",  4)~ THEN BEGIN 10
  SAY ~You did it!  You have my eternal gratitude!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 1)Global("Kill_Frost","GLOBAL",  4)~ THEN BEGIN 11
  SAY ~I�m sorry I doubted you.  You did it!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 2)Global("Kill_Frost","GLOBAL",  4)~ THEN BEGIN 12
  SAY ~I can never repay you for what you have done.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 3)Global("Kill_Frost","GLOBAL",  4)~ THEN BEGIN 13
  SAY ~You have earned my undying gratitude and respect.  Thank you.~
  IF ~~ THEN EXIT
END

IF ~RandomNumLT(4, 5)Global("Kill_Frost","GLOBAL",  4)~ THEN BEGIN 14
  SAY ~I don�t know how you did it, and I don�t care.  You did it and that�s all that matters!~
  IF ~~ THEN EXIT
END
