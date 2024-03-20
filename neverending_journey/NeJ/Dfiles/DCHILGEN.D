BEGIN ~DCHILGEN~ 84541 // non-zero flags may indicate non-pausing dialogue

IF ~RandomNum(10,1)~ THEN BEGIN 0 // from:
  SAY ~I caught a big fish, but it got away.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,2)~ THEN BEGIN 1 // from:
  SAY ~Can I have a piggyback ride?~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,3)~ THEN BEGIN 2 // from:
  SAY ~You remind me of Hrothgar.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,4)~ THEN BEGIN 3 // from:
  SAY ~I'm a great fisherman.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,5)~ THEN BEGIN 4 // from:
  SAY ~Someday I'm gonna grow up to be an adventurer.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,6)~ THEN BEGIN 5 // from:
  SAY ~You wouldn't let the Ice Demons eat me. Would you?~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,7)~ THEN BEGIN 6 // from:
  SAY ~You sure have neat stuff.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,8)~ THEN BEGIN 7 // from:
  SAY ~You come from far away, don'tcha?~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,9)~ THEN BEGIN 8 // from:
  SAY ~Is that a real blade?~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,10)~ THEN BEGIN 9 // from:
  SAY ~Cast a spell for me.~
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 10 // from:
  SAY ~My parents told me not to talk to strangers.~
  IF ~~ THEN EXIT
END