BEGIN ~DFROSTBI~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Hmm.  What here?  It not slave... it not giant...  What it is?  What it wants?~
  IF ~~ THEN REPLY ~I would ask you some questions.~ GOTO 2
  IF ~~ THEN REPLY ~Nothing for now.  Farewell.~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY ~It here again.  What it wants?~
  IF ~~ THEN REPLY ~I would like to ask you some questions.~ GOTO 2
  IF ~~ THEN REPLY ~Nothing for now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Questions it has.  Ask...~
  IF ~~ THEN REPLY ~Who are you?~ GOTO 3
  IF ~~ THEN REPLY ~Just what kind of creature are you?~ GOTO 4
  IF ~~ THEN REPLY ~Your lair is littered with human bones.  Why?~ GOTO 5
  IF ~Global("Know_Sacrifices","GLOBAL", 1)~ THEN REPLY ~Joril Frostbeard says he sends you slaves as sacrifices.  Is that true?~ GOTO 8
  IF ~Global("Kill_Frost","GLOBAL", 3)~ THEN REPLY ~I am looking for the creature that the slaves are being sacrificed to. Is that you?~ GOTO 9
  IF ~~ THEN REPLY ~Never mind.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~I Frostbite.  It not knows?  Now it does...~
  IF ~~ THEN REPLY ~I see.  Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~Farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~I Frostbite... Other names not have.  No matter names other than Frostbite...~
  IF ~~ THEN REPLY ~I have some more questions for you.~ GOTO 2
  IF ~~ THEN REPLY ~Farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Human... food.  Frostbite eats.  Clan eats.~
  IF ~~ THEN REPLY ~You eat humans?~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~Human... elf... gnome... not matters.  All food.~
  IF ~~ THEN REPLY ~Well, that must come to an end. ~ GOTO 7
  IF ~~ THEN REPLY ~I see.  Let me ask you something else.~ GOTO 2
END

IF ~~ THEN BEGIN 7
  SAY ~End?  Not tell Frostbite end!  It want end?  Frostbite gives it end!  Die!~
  IF ~~ THEN REPLY ~So be it!~ DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~Joril send.  Yes... Food.  Frostbite eats.  Clan eats.  Yes...~
  IF ~~ THEN REPLY ~Well, that must come to an end. ~ GOTO 7
  IF ~~ THEN REPLY ~I see.  Let me ask you something else.~ GOTO 2
END

IF ~~ THEN BEGIN 9
  SAY ~Yes... Joril send.  Yes... Food.  Frostbite eats.  Clan eats.  Yes...~
  IF ~~ THEN REPLY ~Well, that must come to an end. ~ GOTO 7
  IF ~~ THEN REPLY ~I see.  Let me ask you something else.~ GOTO 2
END