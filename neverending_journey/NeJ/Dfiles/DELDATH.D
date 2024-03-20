BEGIN ~DELDATH~ 87831 // non-zero flags may indicate non-pausing dialogue

IF ~RandomNum(10, 1)~ THEN BEGIN 0 // from:
  SAY ~Greetings, friend.  May Eldath's peace be upon you.~ 
  IF ~~ THEN EXIT
END

IF ~RandomNum(10, 2)~ THEN BEGIN 1 // from:
  SAY ~Ah, how I wish the angry beasts above would settle down and leave each other alone.~ 
  IF ~~ THEN EXIT
END

IF ~RandomNum(10, 3)~ THEN BEGIN 2 // from:
  SAY ~The path of war can only lead to suffering.  Peace be with you always.~ 
  IF ~~ THEN EXIT
END

IF ~RandomNum(10, 4)~ THEN BEGIN 3 // from:
  SAY ~Tranquility is the state of nature.  Remember this...~ 
  IF ~~ THEN EXIT
END

IF ~RandomNum(10, 5)~ THEN BEGIN 4 // from:
  SAY ~Water overcomes by gentle flowing.  In striking, it only loses its form, forever losing pieces of itself.~ 
  IF ~~ THEN EXIT
END

IF ~RandomNum(10, 6)~ THEN BEGIN 5 // from:
  SAY ~Our work here in the Dragon's Eye is very important.  Please excuse me.~ 
  IF ~~ THEN EXIT
END

IF ~RandomNum(10, 7)~ THEN BEGIN 6 // from:
  SAY ~Why did the Talonites have to come *here?*  Oh, good grief!~ 
  IF ~~ THEN EXIT
END

IF ~RandomNum(10, 8)~ THEN BEGIN 7 // from:
  SAY ~The gases from the volcano turn the water into acid.  It's quite disconcerting for us.  I'm sure you understand.~ 
  IF ~~ THEN EXIT
END

IF ~RandomNum(10, 9)~ THEN BEGIN 8 // from:
  SAY ~The climate of the Spine of the World invigorates me!  Too bad I can't leave without trolls trying to bite my head off.~ 
  IF ~~ THEN EXIT
END

IF ~RandomNum(10, 10)~ THEN BEGIN 9 // from:
  SAY ~We hope you enjoy your stay, friends.~ 
  IF ~~ THEN EXIT
END