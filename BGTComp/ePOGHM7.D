EXTEND_BOTTOM POGHM7 0
  IF ~OR(2)
Global("VP_In_BG1","GLOBAL",0)
GlobalGT("ENDOFBG1","GLOBAL",1)~ THEN REPLY ~Have you seen Gorion today?~ GOTO NEJ5
END

APPEND ~POGHM7~

IF ~~ THEN BEGIN NEJ5
  SAY ~Gorion is waiting for you on the fifth floor.~
  IF ~~ THEN EXIT
END
END