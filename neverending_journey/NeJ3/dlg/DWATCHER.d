BEGIN ~DWATCHER~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Huh?  What you want?~
  IF ~~ THEN REPLY ~I was wondering what you are doing.~ GOTO 2
  IF ~~ THEN REPLY ~Nothing, farewell for now.~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY ~Huh?  You again.  What you want now?~
  IF ~!Global("Whale_Watching","GLOBAL",1)~ THEN REPLY ~I was wondering what you are doing.~ GOTO 2
  IF ~Global("Whale_Watching","GLOBAL",1)~ THEN REPLY ~Still watching the whale, I see.~ GOTO 6
  IF ~~ THEN REPLY ~Nothing, farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~I... I never see such a creature.  It beautiful... Looking at it make me feel... I not know how feel...~
  IF ~~ THEN REPLY ~It is a whale, by the way.~ DO ~SetGlobal("Whale_Watching","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY ~Very well, farewell.~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~It...  A whale?~
  IF ~~ THEN REPLY ~Yes.  They live in the unfrozen waters of the ocean.~ GOTO 4
  IF ~~ THEN REPLY ~Farewell.~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Unfrozen...  Life for me always frozen...  If not for this place I never know of such creatures...~
  IF ~~ THEN REPLY ~Have you looked at the other displays?~ GOTO 5
  IF ~~ THEN REPLY ~Farewell.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Yes...  I look.  They not make me feel way this one do...   I always come back to this one...  You go now.  Leave me be...~
  IF ~~ THEN REPLY ~Very well.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~Yes...  I look still.  I always come back to this one...  You go now.  Leave me be...~
  IF ~~ THEN REPLY ~Very well.  Farewell.~ EXIT
END
