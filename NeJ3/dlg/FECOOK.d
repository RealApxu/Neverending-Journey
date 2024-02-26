BEGIN ~FECOOK~

IF WEIGHT #1 ~True()
~ THEN BEGIN 0
  SAY ~Ya, I don't like no snot nosed brats causin' trouble here.  You better scram, 'fore I give you a whippin'.~
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 1
  SAY ~Only stuff I know about, is cooking, baking and how ta run a kitchen.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Get out or be thrown out!~
  IF ~~ THEN EXIT
END
