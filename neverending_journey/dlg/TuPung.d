BEGIN ~TuPung~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~(*A lone goblin cowering against the wall tries to hide a box behind him and brandishes a short sword.*) Pleess, pleess go! Mashter kill Pung. You go pleess!~
  IF ~~ THEN REPLY ~You are Pung?~ GOTO 1
  IF ~~ THEN REPLY ~Easy there Pung, if you talk to me I will not let this Master kill you.~ GOTO 1
  IF ~~ THEN REPLY ~I will kill you myself if you do not shut up and answer some questions for me goblin. Starting with, who is this master of yours?~ GOTO 1
  IF ~~ THEN REPLY ~You speak well goblin, do you understand as much?~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~Pung find mashter�s fings, mashter sends Pung home, nows you here, mashter kills Pung. Go pleess!~
  IF ~~ THEN REPLY ~Pung please listen, what is it the master is looking for?~ GOTO 2
  IF ~~ THEN REPLY ~Who is this master Pung and where is he?~ GOTO 2
  IF ~~ THEN REPLY ~However did you get here Pung, I see no door?~ GOTO 2
  IF ~~ THEN REPLY ~One more time goblin, who is this master of yours?~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~(*Becoming very agitated*) M... mashter brung Pung. H... him come soon, see fings Pung finds. Pung done good, mashter sends Pung home. Y... you go now, *NOW*.~
  IF ~~ THEN REPLY ~Never mind Pung, I will wait for this master of yours.~ GOTO 3
  IF ~~ THEN REPLY ~This is getting me nowhere. Maybe I could just take a peek at what you have in the box Pung?~ GOTO 3
  IF ~~ THEN REPLY ~Perhaps I will kill you myself, eh Pung? Save your master the job!~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~N... No!~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT05")~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~(*Shrinking back*) M... mashter Pung finds...~
  IF ~~ THEN EXTERN ~BARTLEMY~ 1
END

IF ~~ THEN BEGIN 5
  SAY ~Noo! Mashter musht sends Pung home!!~
  IF ~~ THEN DO ~SetGlobal("VP_Lavallins_Plot","GLOBAL",9) ActionOverride("Bartlemy",Enemy()) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~Yessh, mashter, Pung keeps uvver pretty fing, mashter? You sends Pung home, yessh?~
  IF ~~ THEN DO ~SetGlobal("VP_Lavallins_Plot","GLOBAL",9) GiveItem("TuKey",Player1)~ EXTERN ~BARTLEMY~ 17
END

IF ~~ THEN BEGIN 7
  SAY ~Noo! Mashter musht sends Pung home!!~
  IF ~~ THEN DO ~ActionOverride("Bartlemy",Enemy()) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~Noo! Mashter musht sends Pung home!!~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT39")~ EXIT
END