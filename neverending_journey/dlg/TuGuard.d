BEGIN ~TUGUARD~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~One moment... (*looks you over*)... More newcomers by the looks of you. Well, before you venture further, there are a couple of things you need to know, for your own safety of course.~
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~I see that you are suitably attired. Whilst you are on academy grounds robes and only robes will be worn at all times. No armour or weaponry of any sort is permitted. Gates of the Academy are locked at night, moreover no student is allowed to wander on Academy grounds at night.~
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~Precautions have been taken to ensure that none violate these rules. Any foolish to attempt to do so, will result in a most unpleasant and instant death! You have been warned, now you may carry on about your business.~
  IF ~True()~ THEN EXIT
  IF ~InParty("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ161
  IF ~InParty("Melora")~ THEN EXTERN ~MELORAJ~ 13
  IF ~InParty("Edwin")~ THEN EXTERN ~EDWINJ~ NEJ190
END

IF ~!NumberOfTimesTalkedTo(0) TimeGT(DUSK_START) TimeLT(DAWN_START)~ THEN BEGIN 3
  SAY ~You are not allowed to enter the Academy at night.~
  IF ~~ THEN EXIT
END

IF ~!NumberOfTimesTalkedTo(0) TimeLT(DUSK_START) TimeGT(DAWN_START)~ THEN BEGIN 4
  SAY ~Welcome to the Academy of Halruaa!~
  IF ~~ THEN EXIT
END