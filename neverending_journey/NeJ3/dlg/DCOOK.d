BEGIN ~DCOOK~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Oy!  What are you doin' in my kitchen?~
  IF ~~ THEN REPLY ~None of your business, fatty.~ GOTO 1
  IF ~~ THEN REPLY ~I'm looking for Marketh.~ GOTO 2
  IF ~~ THEN REPLY ~Oops.  Sorry.  Wrong room.~ DO ~SetGlobal("Fleezum_Call","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY ~Oh, nothing.  Farewell.~ DO ~SetGlobal("Fleezum_Call","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY ~There's no reason to be hostile, mate.  I don' care what you're up to.  Just leave me out of it.~
  IF ~~ THEN REPLY ~Hey, how about I give you an extra fat lip?~ GOTO 4
  IF ~~ THEN REPLY ~Sorry.  I'll be leaving now.~ DO ~SetGlobal("Fleezum_Call","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~Hey now!  Last I knew, Marketh was upstairs.  I'm just 'is cook.  I don't matter for nothin'!  Don't hurt me, mate, please!~
  IF ~~ THEN REPLY ~Sorry, "mate."  I can't let you go crying for help.~ DO ~EscapeArea()~ GOTO 4
  IF ~~ THEN REPLY ~Fine.  Just stay out of trouble.~ DO ~SetGlobal("Fleezum_Call","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY ~Okay.  Farewell.~ DO ~SetGlobal("Fleezum_Call","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Watch out for Fleezum and Flozem, mate.  They'll kill you if you try to start somethin' wit' Marketh.~
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 4
  SAY ~Oy, now, mate.  Don't be hurtin' me.  I won't squawk.  Just leave me be!~
  IF ~~ THEN REPLY ~Farewell.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Okay, mate.  Think I'll do just that.~
  IF ~~ THEN EXIT
END