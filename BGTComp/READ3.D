BEGIN ~READ3~

IF ~RandomNum(3,1)~ THEN BEGIN 0
  SAY ~Hmmmm.....Oh sorry, didn't mean to ignore you like that, I'm just rather busy right now.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)~ THEN BEGIN 1
  SAY ~Can't talk right now, I'm studying the martial strategy of Rigaerd II.  You know his son, Azoun, borrowed a great deal of his father's strategies.  ~
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)~ THEN BEGIN 2
  SAY ~I'm just a humble reader, there is little that I can tell you about the world outside of Candlekeep.~
  IF ~~ THEN EXIT
END