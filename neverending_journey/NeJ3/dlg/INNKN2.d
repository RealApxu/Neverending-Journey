BEGIN ~INNKN2~

IF ~True()~ THEN BEGIN 0
  SAY ~Ya should do yerself a favor and stay indoors tonight.~
  IF ~~ THEN REPLY ~What can you give me today?~ DO ~StartStore("Inn4801",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~I don't need anything at the moment.~ EXIT
END