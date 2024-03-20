BEGIN ~WASLEEP~

IF ~RandomNum(2,1)~ THEN BEGIN 0
  SAY ~<CHARNAME>, I must ask you not to sully our grounds by camping within the keep. Winthrop will gladly give you a room at a very reasonable price.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~RandomNum(2,2)~ THEN BEGIN 1
  SAY ~Really <CHARNAME>, must you sleep out in the open? Please, go see Winthrop in the inn if you need a place to rest.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END