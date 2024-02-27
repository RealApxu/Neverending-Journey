BEGIN ~DYUANSO~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Silence, warm-blood!  The High Ritualist is about to begin our dinnertime prayer.~
  IF ~~ THEN DO ~Enemy()~ EXTERN ~DHIGHRIT~ 0
END