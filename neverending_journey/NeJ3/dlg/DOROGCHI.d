BEGIN ~DOROGCHI~

IF ~True()~ THEN BEGIN 0
  SAY ~Who are you?  What you do here?~
  IF ~Global("Saablic_Quest","GLOBAL",1)~ THEN REPLY ~I am looking for the orog chieftain.~ GOTO 1
  IF ~~ THEN REPLY ~Just passing through.~ GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY ~You have found him.  What do you want?~
  IF ~~ THEN REPLY ~I have come to obtain your badge.~ GOTO 2
  IF ~~ THEN REPLY ~I suggest you defend yourself.~ DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~You will get nothing, and you will die.~
  IF ~~ THEN REPLY ~I beg to differ.~ DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~The wizard?!  Where IS he?!~
  IF ~~ THEN REPLY ~In these caves, just north of here.~ GOTO 4
  IF ~~ THEN REPLY ~Sorry, I can't tell you that.~ GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY ~You!  You stay here while we kill him.~
  IF ~~ THEN REPLY ~Okay.~ DO ~SetGlobal("Attack_Saablic","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Then you will die now.~
  IF ~~ THEN REPLY ~I don't think so.~ DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~Nobody passes through.  You die.~
  IF ~~ THEN REPLY ~We'll see about that.~ DO ~Enemy()~ EXIT
END
