BEGIN ~DDUGSLAV~

IF ~RandomNum(4, 0)GlobalLT("Get_Key","GLOBAL",  3)~ THEN BEGIN 0
  SAY ~I don't know who you are but stay away from me!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 1)GlobalLT("Get_Key","GLOBAL",  3)~ THEN BEGIN 1
  SAY ~I'm tired, I'm hungry, and I see no end in sight.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 2)GlobalLT("Get_Key","GLOBAL",  3)~ THEN BEGIN 2
  SAY ~Forgive me, but I doubt I can help you.  Please talk to Gareth.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 3)GlobalLT("Get_Key","GLOBAL",  3)~ THEN BEGIN 3
  SAY ~We are in need of aid.  If you can help us, talk to Gareth.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 4)GlobalLT("Get_Key","GLOBAL",  3)~ THEN BEGIN 4
  SAY ~Leave me be.  I have nothing to say.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 0)Global("Get_Key","GLOBAL",  3)~ THEN BEGIN 5
  SAY ~I hear you are trying to help us?  So, you don't work for the salamanders...~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 1)Global("Get_Key","GLOBAL",  3)~ THEN BEGIN 6
  SAY ~May the Gods bless your quest.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 2)Global("Get_Key","GLOBAL",  3)~ THEN BEGIN 7
  SAY ~Don't fail us.  Our lives are in your hands.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 3)Global("Get_Key","GLOBAL",  3)~ THEN BEGIN 8
  SAY ~Hmm.  You've taken quite a load upon your shoulders.  I commend you for that.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 4)Global("Get_Key","GLOBAL",  3)~ THEN BEGIN 9
  SAY ~I've nothing to say until you can pull this off.  Until then, farewell.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 0)Global("Get_Key","GLOBAL",  4)~ THEN BEGIN 10
  SAY ~You did it!  You have my eternal gratitude!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 1)Global("Get_Key","GLOBAL",  4)~ THEN BEGIN 11
  SAY ~I'm sorry I doubted you.  You did it!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 2)Global("Get_Key","GLOBAL",  4)~ THEN BEGIN 12
  SAY ~I can never repay you for what you have done.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 3)Global("Get_Key","GLOBAL",  4)~ THEN BEGIN 13
  SAY ~You have earned my undying gratitude and respect.  Thank you.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4, 4)Global("Get_Key","GLOBAL",  4)~ THEN BEGIN 14
  SAY ~I don't know how you did it, and I don't care.  You did it and that's all that matters!~
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 15
  SAY ~This slave has nothing to say to you.~
  IF ~~ THEN EXIT
END
