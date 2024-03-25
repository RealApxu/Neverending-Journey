 BEGIN ~RayVon~

IF ~~ THEN BEGIN 0
  SAY ~Do not fret so, Ayana. We are awaiting word that the last of our forces are ready to move. Then we launch our assault. Ulcaster cannot prevail.~
  IF ~~ THEN DO ~SetGlobal("VP_Leaving_Halruaa","GLOBAL",1) SetGlobalTimer("VP_RayVon_Attacks","GLOBAL",TWELVE_DAYS) RealSetGlobalTimer("VP_Hrothar_Timer","GLOBAL",5) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT23")~ EXIT
END

IF ~Global("VP_Leaving_Halruaa","GLOBAL",4)~ THEN BEGIN 1
  SAY ~I will speak with you! It has been brought to my attention that you have been asking questions about matters that do not concern you. Unless you give me a satisfactory explanation as to why you are here, you will be treated as enemies of Halruaa and duly dealt with!~
  IF ~OR(2)  !InParty("Yoshimo") Dead("Yoshimo") OR(2)  !InParty("Kachiko") Dead("Kachiko") OR(2)  !InParty("Minsc") Dead("Minsc") OR(2)  !InParty("Jaheira") Dead("Jaheira") OR(2)  !InParty("Dar") Dead("Dar") OR(2)  !InParty("Hrothgar") Dead("Hrothgar") OR(2)  !InParty("Melora") Dead("Melora") OR(2)  !InParty("Taffic") Dead("Taffic") OR(2)  !InParty("Leina") Dead("Leina") OR(2)  !InParty("Edwin") Dead("Edwin")~ THEN REPLY ~Curses! This I do not need!~ GOTO 2
  IF ~OR(2)  !InParty("Yoshimo") Dead("Yoshimo") OR(2)  !InParty("Kachiko") Dead("Kachiko") OR(2)  !InParty("Minsc") Dead("Minsc") OR(2)  !InParty("Jaheira") Dead("Jaheira") OR(2)  !InParty("Dar") Dead("Dar") OR(2)  !InParty("Hrothgar") Dead("Hrothgar") OR(2)  !InParty("Melora") Dead("Melora") OR(2)  !InParty("Taffic") Dead("Taffic") OR(2)  !InParty("Leina") Dead("Leina") OR(2)  !InParty("Edwin") Dead("Edwin")~ THEN REPLY ~I think the time for talking has just run out!~ GOTO 2
  IF ~OR(2)  !InParty("Yoshimo") Dead("Yoshimo") OR(2)  !InParty("Kachiko") Dead("Kachiko") OR(2)  !InParty("Minsc") Dead("Minsc") OR(2)  !InParty("Jaheira") Dead("Jaheira") OR(2)  !InParty("Dar") Dead("Dar") OR(2)  !InParty("Hrothgar") Dead("Hrothgar") OR(2)  !InParty("Melora") Dead("Melora") OR(2)  !InParty("Taffic") Dead("Taffic") OR(2)  !InParty("Leina") Dead("Leina") OR(2)  !InParty("Edwin") Dead("Edwin")~ THEN REPLY ~I have a bad feeling about this! I just know you are not going to listen to whatever I say!~ GOTO 2
  IF ~OR(2)  !InParty("Yoshimo") Dead("Yoshimo") OR(2)  !InParty("Kachiko") Dead("Kachiko") OR(2)  !InParty("Minsc") Dead("Minsc") OR(2)  !InParty("Jaheira") Dead("Jaheira") OR(2)  !InParty("Dar") Dead("Dar") OR(2)  !InParty("Hrothgar") Dead("Hrothgar") OR(2)  !InParty("Melora") Dead("Melora") OR(2)  !InParty("Taffic") Dead("Taffic") OR(2)  !InParty("Leina") Dead("Leina") OR(2)  !InParty("Edwin") Dead("Edwin")~ THEN REPLY ~I may yet talk us out of this.~ GOTO 2
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ rayvon
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ155
  IF ~InParty("Kachiko") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ60
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ264
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ554
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ rayvon
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 15
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN EXTERN ~TAFFICJ~ rayvon
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ rayvon
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 92
END

IF ~~ THEN BEGIN 2
  SAY ~I grow impatient and will have your answer now!~
  IF ~~ THEN REPLY ~There is nothing sinister in our being here. We are here to learn.~ GOTO 3
  IF ~~ THEN REPLY ~As new students we are curious about our surroundings so we ask questions.~ GOTO 3
  IF ~~ THEN REPLY ~If you will just give me a moment I can explain why we are here.~ GOTO 3
  IF ~~ THEN REPLY ~Now hold on just a darn minute! Not so hasty with you assumptions here!~ GOTO 3
  IF ~~ THEN REPLY ~We are students, nothing more, and I defy you to prove otherwise!~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Please, credit me with intelligence enough to know when you are stalling. I can clearly see that you are not what you pretend to be. I would prefer to know why you are here but it is not that important as you will not be leaving with whatever you came for. I will take your refusal to answer as proof that you are enemies of Halruaa, and as such, your lives are forfeit here and now!~
  IF ~~ THEN DO ~SetGlobal("VP_Leaving_Halruaa","GLOBAL",5) SetGlobal("VP_HalruaaHostile","GLOBAL",1) CreateCreatureObjectDoor("TuMage3",Player1,0,0,0) CreateCreatureObjectDoor("TuMage3",Player1,0,0,0) CreateCreatureObjectDoor("TuMage3",Player1,0,0,0) Enemy()~ EXIT
END