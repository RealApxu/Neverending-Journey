BEGIN ~WATCH2~

IF ~RandomNum(2,1)~ THEN BEGIN 0
  SAY ~Sorry young one, but yer not to be allowed in here.  Now go run along and do somthun' useful.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(2,2)~ THEN BEGIN 1
  SAY ~Friend, even though I am a Watcher, a position that demands respect, I'm still not privy to many secrets.~
  IF ~~ THEN EXIT
END
