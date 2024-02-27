BEGIN ~MCOOK~

IF WEIGHT #1 ~True()
~ THEN BEGIN 0
  SAY ~Is there a reason why yer in my kitchen?  Cause Martha here don't like people messin' with her kitchen; ain't that right Martha?~
  IF ~~ THEN EXTERN ~FECOOK~ 0
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 1
  SAY ~I like to cook, but other than that, I don't know much.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~I wouldn't trust you as far as I can spit!~
  IF ~~ THEN EXIT
END