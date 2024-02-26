BEGIN ~DADVEN~

IF ~GlobalGT("VP_KnightsHelp","GLOBAL",1)~ THEN BEGIN 0
  SAY ~Well met.~
  IF ~GlobalGT("SPRITE_IS_DEADYUANTI","GLOBAL",28)~ THEN GOTO 1
  IF ~GlobalLT("SPRITE_IS_DEADYUANTI","GLOBAL",29)~ THEN GOTO 3
END
  
IF ~~ THEN BEGIN 1
  SAY ~Thanks for saving me.  I thought we were done for.  Is there anything I can do to repay you?~
  IF ~~ THEN REPLY ~Could you watch over us while we sleep?  It's a long hike up to the mountainside.~ DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY ~How did you wind up here?~ GOTO 2
  IF ~~ THEN REPLY ~Not right now.  Thanks.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~We were traveling in the back of a caravan when we were set upon by a group of people in white robes.  We could hear hissing and screaming coming from all around.  We bloodied ourselves and played dead before they came for us.  This is where we wound up.~
  IF ~~ THEN REPLY ~Interesting.  Can you watch over us while we sleep?~ DO ~RestParty()~ EXIT
  IF ~~ THEN REPLY ~Hmm.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~I can't talk right now.  There are more snake creatures hiding somewhere nearby.  Please, help us defeat them.~
  IF ~~ THEN EXIT
END