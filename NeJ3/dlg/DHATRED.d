BEGIN ~DHATRED~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~What you want?~
  IF ~~ THEN REPLY ~I was wondering what you are doing.~ GOTO 2
  IF ~~ THEN REPLY ~Nothing, farewell for now.~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY ~Now what?~
  IF ~~ THEN REPLY ~I was wondering what you are doing.~ GOTO 2
  IF ~~ THEN REPLY ~Nothing, farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~I hate this place.  It make no sense.~
  IF ~~ THEN REPLY ~What makes no sense?~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~These... displays.  All displays.  Why?  What it for?  It make no sense.~
  IF ~~ THEN REPLY ~These creatures were once alive and swimming freely.  People would come here to appreciate their beauty.~ GOTO 4
  IF ~~ THEN REPLY ~I have been asking myself the same question.~ GOTO 5
  IF ~~ THEN REPLY ~Farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Bah!  Appreciate beauty now.  All dead!  Bah!  Dead!  I like dead...~
  IF ~~ THEN REPLY ~I see.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Bah!  You not help.  Go away.~
  IF ~~ THEN REPLY ~Very well, farewell.~ EXIT
END
