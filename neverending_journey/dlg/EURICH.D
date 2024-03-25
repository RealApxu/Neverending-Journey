BEGIN ~EURICH~ 2

IF ~NumberOfTimesTalkedTo(0) !Global("VP_Eurich_Appears","GLOBAL",2)~ THEN BEGIN 0
  SAY ~Tilorn, <PRO_HESHE> is dying again... Oh, no, no. Please, do something.~
  IF ~~ THEN EXTERN ~TILORN~ 24
END

IF ~~ THEN BEGIN 1
  SAY ~Wrong answer. You know we have repeated this scene many times, and still you make the wrong statement at the crucial moment.~
  IF ~~ THEN EXTERN ~LARIA~ 0
END

IF ~Global("VP_Eurich_Appears","GLOBAL",2)~ THEN BEGIN RetKuld0
  SAY ~Hrothgar, my friend, I was looking for you. Hopefully you are fine and <CHARNAME> as well.~
  IF ~~ THEN EXTERN ~HROTHJ~ Eurich0
END

IF ~~ THEN BEGIN RetKuld1
  SAY ~You are most welcome... Hrothgar, you must return to Kuldahar to the same past from where you were teleported here and deal with the Old Enemy. That past has not been written yet for you in this time line, and the ballance between the past and the future should be preserved, as you know.~
  IF ~~ THEN EXTERN ~HROTHJ~ Eurich1
END

IF ~~ THEN BEGIN RetKuld2
  SAY ~Here is another key. You may use it together with your temporal actuator on some portals that you'll surely find during your travels. Farewell, my friend.~
  IF ~~ THEN EXTERN ~HROTHJ~ Eurich2
END