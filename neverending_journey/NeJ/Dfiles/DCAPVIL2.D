BEGIN ~DCAPVIL2~ 87469 // non-zero flags may indicate non-pausing dialogue

IF ~RandomNum(10,1) GlobalLT("SPRITE_IS_DEADTalona","GLOBAL",5)~ THEN BEGIN 0 // from:
  SAY ~I can't believe we're going to be sacrificed to some foul goddess.  I feel sick.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,2) GlobalLT("SPRITE_IS_DEADTalona","GLOBAL",5)~ THEN BEGIN 1 // from:
  SAY ~*sob*  *sob*~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,3) GlobalLT("SPRITE_IS_DEADTalona","GLOBAL",5)~ THEN BEGIN 2 // from:
  SAY ~Good thing I'm out of shape.  Maybe they'll pick me last.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,4) GlobalLT("SPRITE_IS_DEADTalona","GLOBAL",5)~ THEN BEGIN 3 // from:
  SAY ~This wasn't how I expected the trading season to end.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,5) GlobalLT("SPRITE_IS_DEADTalona","GLOBAL",5)~ THEN BEGIN 4 // from:
  SAY ~Trolls.  Can't live with 'em... yeah, you just can't live with 'em.  I hate those stinkin' trolls.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,6) GlobalLT("SPRITE_IS_DEADTalona","GLOBAL",5)~ THEN BEGIN 5 // from:
  SAY ~Priests of Talona *indeed!*~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,7) GlobalLT("SPRITE_IS_DEADTalona","GLOBAL",5)~ THEN BEGIN 6 // from:
  SAY ~Tymora, grant me the luck to get out of this.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,8) GlobalLT("SPRITE_IS_DEADTalona","GLOBAL",5)~ THEN BEGIN 7 // from:
  SAY ~We're going to die.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,9) GlobalLT("SPRITE_IS_DEADTalona","GLOBAL",5)~ THEN BEGIN 8 // from:
  SAY ~I wish someone would cut that idiot high priest's head right off.  "Blah, blah, blah.  Pestilence and disease forever."  Poison goddess, shmoison goddess.  I'll *give* you a poison goddess!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,10) GlobalLT("SPRITE_IS_DEADTalona","GLOBAL",5)~ THEN BEGIN 9 // from:
  SAY ~The waiting is the worst part of this.  Oh, and being ritually sacrificed and eaten.  I'm not too fond of that, either.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,1) GlobalGT("SPRITE_IS_DEADTalona","GLOBAL",4)~ THEN BEGIN 10 // from:
  SAY ~You killed 'em!  You actually did it!  Ha HA!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,2) GlobalGT("SPRITE_IS_DEADTalona","GLOBAL",4)~ THEN BEGIN 11 // from:
  SAY ~Oh, thank you!  Thank you!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,3) GlobalGT("SPRITE_IS_DEADTalona","GLOBAL",4)~ THEN BEGIN 12 // from:
  SAY ~We're free... we're finally free!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,4) GlobalGT("SPRITE_IS_DEADTalona","GLOBAL",4)~ THEN BEGIN 13 // from:
  SAY ~Thanks for getting rid of those foul abominations.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,5) GlobalGT("SPRITE_IS_DEADTalona","GLOBAL",4)~ THEN BEGIN 14 // from:
  SAY ~Whew.  Thank Waukeen we're out of that.  I sure hope someone knows the way down to the village.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,6) GlobalGT("SPRITE_IS_DEADTalona","GLOBAL",4)~ THEN BEGIN 15 // from:
  SAY ~I can't wait to get back to Kuldahar!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,7) GlobalGT("SPRITE_IS_DEADTalona","GLOBAL",4)~ THEN BEGIN 16 // from:
  SAY ~That priest's lucky you came when you did.  I was about to sneak out of this room and snap his neck.  He wouldn't have even had a fighting chance.  He's lucky, I say.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,8) GlobalGT("SPRITE_IS_DEADTalona","GLOBAL",4)~ THEN BEGIN 17 // from:
  SAY ~I've been dreaming about my bed back in town.  I'll sleep soundly tonight.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,9) GlobalGT("SPRITE_IS_DEADTalona","GLOBAL",4)~ THEN BEGIN 18 // from:
  SAY ~I'll never forget this horrid place.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,10) GlobalGT("SPRITE_IS_DEADTalona","GLOBAL",4)~ THEN BEGIN 19 // from:
  SAY ~That'll show 'em.  Good job.~
  IF ~~ THEN EXIT
END