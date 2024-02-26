BEGIN ~DFLOZEM~

IF ~NumTimesTalkedTo(0)
!Global("Flozem_Gone","GLOBAL",1)~ THEN BEGIN 0
  SAY ~Greetings.~
  IF ~~ THEN REPLY ~Who are you?~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~I'm Flozem.  Who are you?~
  IF ~~ THEN REPLY ~I'm <CHARNAME>.~ GOTO 2
  IF ~~ THEN REPLY ~What kind of a mother names her child "Flozem?"~ GOTO 3
  IF ~Global("Flozem_Portrait","GLOBAL",1)~ THEN REPLY ~You're the one who drew the portrait of Marketh, aren't you?~ GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY ~Hmm.  Nice to meet you, <CHARNAME>.  What are you doing in here?~
  IF ~~ THEN REPLY ~I'm looking for Marketh.~ GOTO 5
  IF ~~ THEN REPLY ~Nothing.  I'll be leaving now.  Farewell.~ GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY ~My mother didn't name me.  I was named by the head mistress of an orphanage.  I still hate that bitch.  What are you doing in here?~
  IF ~Global("Know_Marketh","GLOBAL",1)~ THEN REPLY ~I'm looking for Marketh.~ GOTO 5
  IF ~~ THEN REPLY ~Nothing.  I'll be leaving now.  Farewell.~ GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY ~Yeah...  So what?~
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
Gender(LastTalkedToBy,MALE)~ THEN REPLY ~So, I think you should pursue it as a career.  You have a lot of talent.  Trust me, I'm a man of the art world.~ DO ~SetGlobal("Flozem_Gone","GLOBAL",1)~ GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)
Gender(LastTalkedToBy,FEMALE)~ THEN REPLY ~So, I think you should pursue it as a career.  You have a lot of talent.  Trust me, I'm a woman of the art world.~ DO ~SetGlobal("Flozem_Gone","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY ~Uh, well.  I just thought it was nice, that's all.~ GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY ~Oh, sure.  He's upstairs, in the bedroom to the north.~
  IF ~~ THEN REPLY ~Thanks.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~Sure.  See you later.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Really?  I've thought about it before, but... I never dreamed I could actually make money doing it.  Tempus knows I'm never going to get anywhere by hanging out in the bowels of this mountain with Marketh and my idiot brother.  That's it.  You convinced me.  I'm getting out of this place.  Farewell.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~Thanks.  What are you doing in here, anyway?~
  IF ~Global("Know_Marketh","GLOBAL",1)~ THEN REPLY ~I'm looking for Marketh.~ GOTO 5
  IF ~~ THEN REPLY ~Nothing.  I'll be leaving now.  Farewell.~ GOTO 6
END

IF ~NumTimesTalkedToGT(0)
!Global("Flozem_Gone","GLOBAL",1)~ THEN BEGIN 9
  SAY ~Again, greetings.  Can I help you with something?~
  IF ~Global("Flozem_Portrait","GLOBAL",1)~ THEN REPLY ~You're the one who drew the portrait of Marketh, aren't you?~ GOTO 4
  IF ~~ THEN REPLY ~No, not right now.  Farewell, Flozem.~ EXIT
END
