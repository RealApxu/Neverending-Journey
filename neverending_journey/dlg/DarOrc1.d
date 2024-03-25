BEGIN ~DARORC1~

IF ~IsGabber("Dar")~ THEN BEGIN 0
  SAY ~I know you Half Orc. You�re the one known as Dar, I will speak with you. I have news that may be of interest to you.~
  IF ~~ THEN EXTERN ~DARJ~ 78
END

IF ~~ THEN BEGIN 1
  SAY ~It concerns a group of your kind that were settled in this area, along with others, the likes of Orcs and Goblins. All so called trying to atone for the evils done by their kin in the past by teaching peace and self-sacrifice.~
  IF ~~ THEN EXTERN ~DARJ~ 79
END

IF ~~ THEN BEGIN 2
  SAY ~Hear me out and I�ll say what I know. Those settlers had supposedly sent a prophet to Candlekeep to seek what they called the Wisdom but he never returned. Probably found life more to his liking in Candlekeep if you ask me!~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Next thing you know the settlement was sacked by the more brutal tribes of their races and those that refused to return to the old ways were tortured and enslaved. That my friend Dar is the extent of what I know. Check out the area and find the truth for yourself.~
  IF ~~ THEN DO ~SetGlobal("VP_Dar_Quest","GLOBAL",1) RevealAreaOnMap("AR8700") ActionOverride("DarOrc2",EscapeArea()) ActionOverride("DarOrc3",EscapeArea()) EscapeArea()~ EXIT
END

IF ~True()~ THEN BEGIN 4
  SAY ~Me talk to Dar.~
  IF ~InParty("Dar")~ THEN EXIT
  IF ~!InParty("Dar")~ THEN DO ~SetGlobal("VP_Dar_Quest","GLOBAL",1) RevealAreaOnMap("AR8700") ActionOverride("DarOrc2",EscapeArea()) ActionOverride("DarOrc3",EscapeArea()) EscapeArea()~ EXIT
END