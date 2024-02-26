BEGIN ~DOSENTRY~

IF ~True()~ THEN BEGIN 0
  SAY ~You halt.~
  IF ~~ THEN REPLY ~Greetings.~ GOTO 1
  IF ~~ THEN REPLY ~What’s going on?~ GOTO 1
  IF ~~ THEN REPLY ~No.~ GOTO 2
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY ~You trespass on orog territory.  ~
  IF ~~ THEN REPLY ~I didn’t mean to trespass.~ GOTO 2
  IF ~~ THEN REPLY ~I’ll be leaving, then.~ GOTO 2
  IF ~~ THEN REPLY ~So?~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~No matter. You die now.~
  IF ~~ THEN REPLY ~We’ll see about that.~ DO ~SetGlobal("VP_MyGroup_Attacked","MYAREA",1)
Enemy()~ EXIT
  IF ~~ THEN REPLY ~What, just you?  Hahaha!~ DO ~SetGlobal("VP_MyGroup_Attacked","MYAREA",1)
Enemy()~ EXIT
END
