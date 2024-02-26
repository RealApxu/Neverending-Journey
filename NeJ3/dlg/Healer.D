BEGIN ~Healer~

IF ~True()~ THEN BEGIN 0 
  SAY ~You can rest here if you want.~
  IF ~~ THEN REPLY ~Yes, please.~ GOTO 1
  IF ~~ THEN REPLY ~Not at the momet, but thank you.~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY ~As you wish.~
  IF ~~ THEN  DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPHealCt")~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~You are welcome.~
  IF ~~ THEN EXIT
END