BEGIN ~DGNTGRD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~You want something?~
  IF ~~ THEN REPLY ~I'm here to see your leader.~ GOTO 2
  IF ~~ THEN REPLY ~I would like to ask you some questions.~ GOTO 4
  IF ~~ THEN REPLY ~No, farewell.~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY ~Why are you bothering me again?  Go away!~
  IF ~~ THEN REPLY ~I'm here to see your leader.~ GOTO 2
  IF ~~ THEN REPLY ~I would like to ask you some questions.~ GOTO 4
  IF ~~ THEN REPLY ~Very well, farewell.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~So keep looking for him.  You're no concern of mine unless you cause trouble.  Now get moving before I accidentally step on you.~
  IF ~~ THEN REPLY ~Step on me and you will find a thorn in your foot that could prove fatal.~ GOTO 3
  IF ~~ THEN REPLY ~Very well, farewell.~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~Hmm.  I think I'll put that to the test.  Die, scum!~
  IF ~~ THEN REPLY ~So be it!~ DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Oh?  Well, I would like you to go away...  Hmm.  It doesn't look like either one of us is getting what they want.~
  IF ~~ THEN REPLY ~I'm here to see your leader.~ GOTO 2
  IF ~~ THEN REPLY ~I see.  Farewell.~ EXIT
END
