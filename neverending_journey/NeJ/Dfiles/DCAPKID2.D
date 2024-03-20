BEGIN ~DCAPKID2~ 87458 // non-zero flags may indicate non-pausing dialogue

IF ~RandomNum(5,1)
GlobalLT("SPRITE_IS_DEADTalona","GLOBAL",5)~ THEN BEGIN 0 // from:
  SAY ~When people die, they turn into skeletons.  I'm going to turn into a skeleton.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
GlobalLT("SPRITE_IS_DEADTalona","GLOBAL",5)~ THEN BEGIN 1 // from:
  SAY ~Don't let the monsters eat us!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
GlobalLT("SPRITE_IS_DEADTalona","GLOBAL",5)~ THEN BEGIN 2 // from:
  SAY ~They think we're yummy.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
GlobalLT("SPRITE_IS_DEADTalona","GLOBAL",5)~ THEN BEGIN 3 // from:
  SAY ~I want to punch the monsters in the eye.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)
GlobalLT("SPRITE_IS_DEADTalona","GLOBAL",5)~ THEN BEGIN 4 // from:
  SAY ~I'm hungry!  I'm thirsty!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,1)
GlobalGT("SPRITE_IS_DEADTalona","GLOBAL",4)~ THEN BEGIN 5 // from:
  SAY ~You kicked 'em in the face!  Hoo!  Ha!  Yah!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)
GlobalGT("SPRITE_IS_DEADTalona","GLOBAL",4)~ THEN BEGIN 6 // from:
  SAY ~Thanks for not letting them turn me into a skeleton.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)
GlobalGT("SPRITE_IS_DEADTalona","GLOBAL",4)~ THEN BEGIN 7 // from:
  SAY ~I get to go home!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)
GlobalGT("SPRITE_IS_DEADTalona","GLOBAL",4)~ THEN BEGIN 8 // from:
  SAY ~Thanks for beating up the monsters.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)
GlobalGT("SPRITE_IS_DEADTalona","GLOBAL",4)~ THEN BEGIN 9 // from:
  SAY ~Yay!  Yay!  Yay!~
  IF ~~ THEN EXIT
END