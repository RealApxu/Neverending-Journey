BEGIN ~DGENGNT~

IF ~RandomNum(5, 1)~ THEN BEGIN 0
  SAY ~Go away.  You're not one of us, and I have nothing to say to you!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5, 2)~ THEN BEGIN 1
  SAY ~You look like you belong in the slave pens.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5, 3)~ THEN BEGIN 2
  SAY ~Hmm.  I'm busy here.   Go bother someone else, *little* one.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(5, 4)~ THEN BEGIN 3
  SAY ~What do you want?  Wait... I don't care what you want.  Go away.~
  IF ~~ THEN EXIT
END

IF ~RandomNumLT(5, 6)~ THEN BEGIN 4
  SAY ~Beat it, you little worm, or you'll be lining the edge of my axe.~
  IF ~~ THEN EXIT
END
