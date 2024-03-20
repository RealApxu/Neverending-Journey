BEGIN ~DMALAVON~

IF ~True()~ THEN BEGIN 0
  SAY ~Ah, what an excellent job you did disposing of my simulacrum!  It took me a long time to make him.  The Auril's servants will be hard to replace, but money is no object when the suffering of others is the greatest reward.  Ha ha ha!~
  IF ~~ THEN DO ~Enemy()~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~Saablic Tan always thought *he* was the master of magic.  Always turning me away, always sending his precious, stinking orogs after my little umber hulks, training them to kill my pets on sight!  I had the last laugh, though, when I turned *him* into an umber hulk and placed him among his twisted creations.~
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~And now, for meddling in my affairs, *you* will suffer a similar fate.  You've butchered my servants and wrecked my home.  The tide turns... NOW!~
  IF ~~ THEN EXIT
END
