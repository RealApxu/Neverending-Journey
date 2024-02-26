BEGIN ~AMNIS~

IF ~RandomNum(5,1)~ THEN BEGIN 0
  SAY ~Why are you not at the fair, citizen?  'Tis but a moment's walk east of Nashkel.~
  IF ~~ THEN JOURNAL ~Nashkel festival.

There is a festival east of Nashkel.  Many people are gathering there.~ EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN 1
  SAY ~Travel lightly, wanderer.  The woods harbor strange things.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN 2
  SAY ~Move along citizen.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)~ THEN BEGIN 3
  SAY ~I'm only a guard, all I know is the rumors flying about town.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)~ THEN BEGIN 4
  SAY ~I'll box your ears if you step an inch closer!~
  IF ~~ THEN EXIT
END