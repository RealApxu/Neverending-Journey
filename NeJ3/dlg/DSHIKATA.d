BEGIN ~DSHIKATA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~How dare you trespass in the domain of Marketh?  I am Shikata, most powerful king of the salamanders.  You will suffer for your transgression.~
  IF ~~ THEN REPLY ~You think I'm scared just because you're some sort of tribal leader?  Get out of my way before I have to throw you and your brothers all over this cave.~ DO ~Enemy()~ GOTO 1
  IF ~~ THEN REPLY ~Stand aside, fiend.  You'll not prevent me from dispensing justice on those who have perpetrated malfeasance under the guise of righteousness.~ DO ~Enemy()~ GOTO 2
  IF ~~ THEN REPLY ~Whoops.  I'm sorry, you're right.  I'll just leave, okay?~ DO ~Enemy()~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY ~I will enjoy hearing the bravado burn out of your blackening lungs, small one.  YAH!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Oh, but I shall.  When I am done killing you, your body shall be cast into the flames for our spirits to feast upon.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~I think not, small one.  You will die like all the others.  Come closer.  Feel the heat of my spirit on your face before it consumes you.~
  IF ~~ THEN EXIT
END
