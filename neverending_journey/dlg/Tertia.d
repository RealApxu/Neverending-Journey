BEGIN ~TERTIA~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Students! What do you think you are doing here? Would you care to explain what you are doing outside academy grounds?~
  IF ~~ THEN REPLY ~We are on a field trip, collecting spell components but we have not come across anything of use.~ GOTO 1
  IF ~~ THEN REPLY ~I had no idea students were not permitted off academy grounds.~ GOTO 2
  IF ~~ THEN REPLY ~Is there some reason students are not permitted to be here?~ GOTO 2
  IF ~~ THEN REPLY ~I had some free time so I thought I would take a closer look at my surroundings.~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY ~All the spell components necessary for your studies can be obtained on academy grounds. You have no reason to be here, it is not safe.~
  IF ~~ THEN REPLY ~I was not told of any such dangers when I arrived, so I am not deliberately ignoring anyone's warnings.~ GOTO 3
  IF ~~ THEN REPLY ~Not safe you say, in that case, I will return immediately.~ GOTO 3
  IF ~~ THEN REPLY ~I was about to return anyway. Nothing out here to see but sand.~ GOTO 3
  IF ~~ THEN REPLY ~Does that mean students are permitted to be here but, as you put it, *it is not safe* for them to be so?~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~For their own safety, all students are made aware of the dangers of wandering out of the gates. Why have you chosen to disregard our warnings?~
  IF ~~ THEN REPLY ~I was not told of any such dangers when I arrived, so I am not deliberately ignoring anyone's warnings.~ GOTO 3
  IF ~~ THEN REPLY ~Not safe you say, in that case, I will return immediately.~ GOTO 3
  IF ~~ THEN REPLY ~I was about to return anyway. Nothing out here to see but sand.~ GOTO 3
  IF ~~ THEN REPLY ~Does that mean students are permitted to be here but, as you put it, *it is not safe* for them to be so?~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~I do not like your tone and you have a strange attitude for a student. What is your name?~
  IF ~~ THEN REPLY ~My name is <CHARNAME>. I apologise if I sounded disrespectful but I did not realise there was any danger in being here. I will be making my way back to the academy now. Farewell.~ GOTO 4
  IF ~~ THEN REPLY ~My name is <CHARNAME>, and I cannot help that you do not like my attitude. Probably best I be returning to the academy now. Farewell.~ GOTO 4
  IF ~~ THEN REPLY ~I am <CHARNAME>, and as I have said, I am returning to the academy now. I am tired of looking at sand.~ GOTO 4
  IF ~~ THEN REPLY ~I am <CHARNAME>, and I do not hold with being told where it is or is not safe for me to be. Now, if you will excuse me, I have done with looking around and was about to return to the academy.~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~Wait a moment! I have not finished speaking with you yet. I sense something in your manner that I have not seen in students before. Come closer so we may truth read you.~
  IF ~True()~ THEN GOTO 5
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 62
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ262
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ154
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ548
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ 9
END

IF ~~ THEN BEGIN 5
  SAY ~Your hesitation has given me the time to glimpse your real purpose in coming to Halruaa. You are not students but spies for Ulcaster! Fools! Did you really think you could deceive us?~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~Now you will pay the price for your deception! (*Turning to one of the accompanying mages*) Run Lon, call for guards.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaAlarm","MYAREA",1) ActionOverride("TuMage2",MoveToPointNoInterrupt([1056.2791])) Shout(99) Enemy()~ EXIT
END