BEGIN ~EREVAINJ~

IF ~~ THEN BEGIN 0
  SAY ~Oh Sehanine! Why did I agree to travel this way! If I didn't despise the cold enough to have these frost giants kill most us!~
  = ~(Sigh) If we barely made it then surely future travelers would surely perish, I suppose we must defend the innocent and find the source of these attacks.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 113
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 26
  IF ~InParty("Accalia") !Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 31
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ139
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX55
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ579
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ274
END

IF ~~ THEN BEGIN 1
  SAY ~This stone fabric truly resembles a Dragon. What a grand sight! However, such ostentatious displays are likely used to mask how weak the defenses are on the inside. Carry on <CHARNAME>, but I do think that I could handle this locale on my own just fine.~
  IF ~True()~ THEN EXIT
  IF ~InParty("Imoen") !Dead("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ147
  IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX63
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ591
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ288
  IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN EXTERN ~SHARTJ~ dragoneye
  IF ~InParty("Accalia") !Dead("Accalia")~ EXTERN ~ACCALIJ~ 35
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 31
END

IF ~~ THEN BEGIN 2
  SAY ~I admit a strong pull to visit the Severed Hand and to visit a famous locale of my people. However, adventure in <CHARNAME>'s time would be an unprecedented opportunity. Whatever you choose, <CHARNAME>, I shall follow you.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Who_Is_Hrothgar","GLOBAL",2)~ EXTERN ~HROTHJ~ 162
  IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 36
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 36
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ299
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ596
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ155
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX71
END

IF ~~ THEN BEGIN 3
  SAY ~As I said, wherever you go <CHARNAME>, I shall go as well. It has been awhile since adventuring has caught my heart racing so! It shall be quite enlightening to see the world of your time period.~
  IF ~Global("VP_End_IWD","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ NEJ63
  IF ~!Global("VP_End_IWD","GLOBAL",2)~ THEN EXTERN ~HROTHJ~ 403
  IF ~InParty("Dar")~ THEN EXTERN ~PLAYER1~ NEJ64
//IF ~InParty("Accalia") //!Global("VP_End_IWD","GLOBAL",2)~ THEN EXTERN ~ACCALIJ~ 1
//IF ~InParty("Accalia") //Global("VP_End_IWD","GLOBAL",2)~ THEN EXTERN ~ACCALIJ~ 66
  IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ nearportal
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ IWDEREV1
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ IWDEREV1
END

IF ~~ THEN BEGIN 4
  SAY ~That sounds most gruesome actually.~
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ IWDEREV2
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ IWDEREV2
END

IF ~~ THEN BEGIN 5
  SAY ~Rightly so! Getting away from this Icy Anvil will be most welcome!~
  IF ~Global("VP_End_IWD","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ NEJ63
  IF ~!Global("VP_End_IWD","GLOBAL",2)~ THEN EXTERN ~HROTHJ~ 403
  IF ~InParty("Dar")~ THEN EXTERN ~PLAYER1~ NEJ64
//IF ~InParty("Accalia") //!Global("VP_End_IWD","GLOBAL",2)~ THEN EXTERN ~ACCALIJ~ 1
//IF ~InParty("Accalia") //Global("VP_End_IWD","GLOBAL",2)~ THEN EXTERN ~ACCALIJ~ 66
  IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ nearportal
END

IF ~~ THEN BEGIN 6
  SAY ~What strange magic got us here Hrothgar? Such power is common amongst the most powerful of mages. Of which you do not appear to be.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 196
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 43
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ314
  IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 38
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ611
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ171
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX87
END

IF ~Global("VP_SevHand_Comment","LOCALS",1)~ THEN BEGIN 7
  SAY ~It pains me to see such desecration of an elven fortress. How I wish I could view this place in its prime! It would have been a wonder. Now here it lays. No longer the Hand of the Seldarine, but merely the Severed Hand.~
  = ~A once beautiful powerful stronghold blessed by the elven gods themselves and now just an infested ruin. How I wish that I could transform this place brighter than what it was before and say Hail Beauty, Vanimle Aaye, my heart sings to thee, Cormamin lindua ele lle.~
  IF ~~ THEN DO ~SetGlobal("VP_SevHand_Comment","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~We are not going to coerce this dead spirit <CHARNAME>! They have nothing to give us. We are going to help them though!~
  IF ~~ THEN EXTERN ~DDENAINI~ 14
END

IF ~~ THEN BEGIN 9
  SAY ~It angers my soul to see such a monument to the Tel-Quessir desecrated like this. One day my people's numbers will increase again and we will abandon the Retreat. We will reclaim and restore these abandoned locales and make them ours again.~
  = ~This is Hanali Celanil, goddess of love and beauty. That is Labelas Enoreth, god of time and longevity. The rest are more difficult for me to decipher. Damn the beasts responsible for this.~
  IF ~~ THEN DO ~SetGlobal("VP_Denaini_Erevain","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~We have truly done a great deed here <CHARNAME>. Now, the souls of these elves may yet rest and join with the Seldarine. You have my respect. Never again must a thing like this be permitted to happen.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY ~Greetings again Pomab. You seem to be just as out of place this time as when I first met you.~
  IF ~~ THEN EXTERN ~DPOMAB~ 18
END

IF ~~ THEN BEGIN 12
  SAY ~I do love to travel it's true. Your homeland, Calimshan, is one region I've never visited. The dunes, the hot sand, what a sight it must be.~
  IF ~~ THEN EXTERN ~DPOMAB~ 19
END

IF ~~ THEN BEGIN 13
  SAY ~Perhaps one day I'll find my way down there and you will have moved on and be able to give me a tour.~
  IF ~~ THEN EXTERN ~DPOMAB~ 20
END

IF ~~ THEN BEGIN 14
  SAY ~Boorish fool. Your head hurts because nothing is there! Dolle naa lost!~
  IF ~~ THEN EXTERN ~DOGRE~ 9
END

IF ~~ THEN BEGIN 15
  SAY ~Another mindless biir. I should end your misery.~
  IF ~OR(3) !InParty("Dar") Dead("Dar") !See("Dar")~ THEN EXTERN ~DGOBLINC~ 11
  IF ~InParty("Dar") !Dead("Dar") See("Dar")~ THEN EXTERN ~DARJ~ EREVDAR1
END

IF ~~ THEN BEGIN 16
  SAY ~By the Nine Hells I can't! Goblins are almost as vile and treacherous as orcs!~
  IF ~~ THEN EXTERN ~DGOBLINC~ 11
END

IF ~~ THEN BEGIN 17
  SAY ~It is good to see you again Arundel. I wish this visit was under more fortuitous circumstances.~
  IF ~~ THEN EXTERN ~DARUNDEL~ EREVARU1
END

IF ~~ THEN BEGIN 18
  SAY ~It is a great union and vision indeed... for humans. Elves have long accomplished such harmony.~
  IF ~~ THEN EXTERN ~DARUNDEL~ 35
END

IF ~~ THEN BEGIN 19
 SAY ~Let's eliminate them quickly <CHARNAME>!~
  IF ~True()~ THEN DO ~ActionOverride("Gauthig",Enemy()) ActionOverride("Gauthug",Enemy()) ActionOverride("Lodieg",Enemy()) ActionOverride("Urgan",Enemy()) ActionOverride("Varbu",Enemy()) ActionOverride("Guthic",Enemy())~ EXIT
  IF ~See("Sharteel") !Dead("Sharteel")~ THEN EXTERN ~SHARTJ~ Guthic
  IF ~See("Imoen2") !Dead("Imoen2")~ THEN EXTERN ~IMOEN2J~ Guthic
  IF ~See("Imoen") !Dead("Imoen")~ THEN EXTERN ~IMOENJ~ Guthic
END