BEGIN ~DJORILBG~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~I have better things to do than talk with you.  You want something?~
  IF ~~ THEN REPLY ~I知 here to see your leader.~ GOTO 2
  IF ~~ THEN REPLY ~I would like to ask you some questions.~ GOTO 4
  IF ~~ THEN REPLY ~No, farewell.~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY ~Why are you bothering me again?  Go away!~
  IF ~~ THEN REPLY ~I知 here to see your leader.~ GOTO 2
  IF ~~ THEN REPLY ~I would like to ask you some questions.~ GOTO 4
  IF ~~ THEN REPLY ~Very well, farewell.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~See the throne over there and the guy in front of it?  Need another hint?~
  IF ~~ THEN REPLY ~No, I think understand quite well.  Farewell.~ EXIT
  IF ~~ THEN REPLY ~I do not like your attitude.  I think I need to teach you some manners.~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Ha!  I知 going to enjoy this more than you can imagine.  Die, scum!~
  IF ~~ THEN REPLY ~So be it!~ DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Ha!  I don稚 care.  Go bother someone else with your questions.~
  IF ~~ THEN REPLY ~I知 here to see your leader.~ GOTO 2
  IF ~~ THEN REPLY ~I see.  Farewell.~ EXIT
END
