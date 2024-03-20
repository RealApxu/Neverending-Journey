BEGIN ~DREBELSA~

IF ~True()~ THEN BEGIN 0
  SAY ~You, Prime Dweller, you have trod the wrong path.  All Primes who attempt to close these portals will die by the elements.~
  IF ~~ THEN REPLY ~Hey, we're not trying to close your portals.~ DO ~Enemy()~ GOTO 1
  IF ~~ THEN REPLY ~If you try to harm me in any way, I'll knock you back to your home plane so fast you'll wish you were encased in ice.~ DO ~Enemy()~ GOTO 2
  IF ~~ THEN REPLY ~Do your worst.  I am not afraid.~ DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY ~Perhaps not... but I am not in the trusting mood today.  I have no pity for you Primes.  Now, taste the flames you so carelessly abuse.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~We shall see about that, boastful one.  If your kind were more respectful of us purebloods, perhaps you would live longer.~
  IF ~~ THEN EXIT
END
