BEGIN ~DGENMONI~

IF ~RandomNum(4,0)~ THEN BEGIN 0
  SAY ~Nothing to you I say.  Go away...~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,1)~ THEN BEGIN 1
  SAY ~Hsssssss.  Hate this place.  Want to leave... Want you to leave.  Hssssss.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN 2
  SAY ~I not bother you.  You not bother me.  ~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN 3
  SAY ~What in nine hells is this place...?  Bah, you not know either...~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN 4
  SAY ~You no touch me, warm blood.  Heat of your body offend... hurt... Go away!  Hssssss!~
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 5
  SAY ~Leave.  Me have nothing to say to you.~
  IF ~~ THEN EXIT
END