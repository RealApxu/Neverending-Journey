BEGIN ~WATCH9~

IF ~RandomNum(4,1)~ THEN BEGIN 0
  SAY ~Hmph. The twerp's grown up, I see.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN 1
  SAY ~<CHARNAME>, where've you been all my life? This place has fallen apart without you around to run errands all the time.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN 2
  SAY ~Hull's got to stop holding his meadfests. My head is killing me!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN 3
  SAY ~Welcome home, <CHARNAME>.~
  IF ~~ THEN EXIT
END