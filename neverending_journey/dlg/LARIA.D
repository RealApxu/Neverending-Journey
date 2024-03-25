BEGIN ~LARIA~ 2

IF ~~ THEN BEGIN 0
  SAY ~<CHARNAME> is our last guardian! Tilorn, you must save <PRO_HISHER> life!~
  IF ~~ THEN EXTERN ~NIELLIT~ 0
END

IF ~~ THEN BEGIN 1
  SAY ~We must hurry, otherwise we will lose <PRO_HIMHER> forever... I feel it a new instance is coming.~
  IF ~~ THEN EXTERN ~TILORN~ 25
END

IF ~~ THEN BEGIN 2
  SAY ~You forgot about <PRO_HISHER> reflexes, instincts and terrible desire to survive. Even being blind and deaf, <CHARNAME> will find <PRO_HISHER> own way, and will guard the future.~
  IF ~~ THEN DO ~PlaySound("EFF_M89") PlaySound("EFF_M83") ScreenShake([50.50],15)~ EXTERN ~TILORN~ 25
END

IF ~~ THEN BEGIN 3
  SAY ~We must hurry, we do not have time for this... Please, send <PRO_HIMHER> back immediately... dead or alive.~
  IF ~~ THEN EXTERN ~TILORN~ 26
END