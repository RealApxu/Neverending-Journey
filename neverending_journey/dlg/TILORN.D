BEGIN ~TILORN~

IF ~~ THEN BEGIN 0
  SAY ~Hrothgar, well met my friend. It is wonderful to see you again and I see that you have <CHARNAME> with you. That is good.~ [tilorn05]
  IF ~~ THEN EXTERN ~HROTHJ~ 56
END

IF ~~ THEN BEGIN 1
  SAY ~In time, Hrothgar, in time. First introduce me properly to <CHARNAME>.~ [tilorn06]
  IF ~~ THEN EXTERN ~HROTHJ~ 57
END

IF ~~ THEN BEGIN 2
  SAY ~Well met, <CHARNAME>. It is good to see that Hrothgar has trusted and capable allies to aid him in his quest. He is indeed fortunate.~ [tilorn07]
  IF ~~ THEN EXTERN ~PLAYER1~ NEJ74
END

IF ~~ THEN BEGIN 3
  SAY ~Do not worry so much over things that you do not know, <CHARNAME>. Hrothgar is a brave and honourable man, you are safe under his guidance and you can trust him completely.~ [tilorn08]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~Your instincts have led you right this far, never doubt those instincts, <CHARNAME>, trust in them.~ [tilorn09]
  IF ~~ THEN REPLY ~More obscurity, Tilorn, as if I have not had enough from Hrothgar. Are you at least going say why it is that you are here and obviously waiting for us?~ EXTERN ~HROTHJ~ 58
  IF ~~ THEN REPLY ~You and Hrothgar put a great deal of emphasis on the word "trust", Tilorn, yet neither of you are prepared to trust me and let me in on what it is that you are doing. Does trust not work two ways?~ EXTERN ~HROTHJ~ 58
  IF ~~ THEN REPLY ~"Trust"! There is that word again! "Trust" Hrothgar! "Trust" my instincts! Both my "trust" and my patience are wearing a bit thin with all this secrecy! Now Tilorn, why is it that you have turned up here and what do you know of these keys that Hrothgar searches for so vehemently?~ EXTERN ~HROTHJ~ 58
  IF ~~ THEN REPLY ~Like Hrothgar, you dance around my questions, Tilorn, this in itself tells me to be wary of you and has nothing to do with what my "instincts" say. Is there some conspiracy between you and Hrothgar that brings you here?~ EXTERN ~HROTHJ~ 58
END

IF ~~ THEN BEGIN 5
  SAY ~Of course, Hrothgar. (*Turning to you.*) I see that you have many questions, <CHARNAME>. Questions that for the moment I am unable to answer...~ [tilorn11]
  IF ~~ THEN REPLY ~Unable to or will n...~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~(*Abruptly interrupts you, his voicing taking on a severe tone.*) <CHARNAME>, if you will let me finish I will answer you as to why I am here!~ [tilorn12]
  IF ~~ THEN EXTERN ~PLAYER1~ NEJ75
END

IF ~~ THEN BEGIN 7
  SAY ~Good. I see that I have your attention. Now, it is my belief that these ruins where we now stand should not be ruins, Ulcaster Academy should stand here intact along with all the knowledge that its walls contained. Knowledge that I feel is crucial to understanding how The Realms of today are shaped.~ [tilorn13]
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~If the fall of Ulcaster and everything that resulted from its destruction can be prevented from taking place then we will have made a start in setting things straight.~ [tilorn14]
  IF ~~ THEN REPLY ~Setting things straight, Tilorn? What an odd thing to say. What things are you wanting to set straight? Furthermore, how do you intend to go about preventing something that happened many years in the past?~ GOTO 9
  IF ~~ THEN REPLY ~You say that this is what you believe, Tilorn, you do not say that this is what you know. So, who are you to say that the past should be changed because of what you believe? Surely, if such a thing were possible then it is best left to the gods to decide if it should be done?~ GOTO 9
  IF ~~ THEN REPLY ~You are not making any more sense than Hrothgar did when he started talking of the wrong place and the wrong time, Tilorn. How can a man possibly change what has already come to pass?~ GOTO 9
  IF ~~ THEN REPLY ~You sound very much like Hrothgar, Tilorn! Explain what you mean by "if the fall of Ulcaster can be prevented?"~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY ~I do not expect you to understand that when I say, if it is what I believe then it is almost certainly so. The past can be changed, but not on a whim, <CHARNAME>, it is not something to be undertaken lightly.~ [tilorn15]
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY ~I have thought long and hard on what I am about to ask of you, but I feel that it is the necessary course to take. I ask that you go back to the past, to The Academy of Halruaa. A school of specialist magic and the place where the destruction of Ulcaster was instigated by its mages.~ [tilorn16]
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~It is imperative that you find and prevent what took place at Halruaa that resulted in the downfall of Ulcaster.~ [tilorn10]
  IF ~~ THEN EXTERN ~HROTHJ~ 59
END

IF ~~ THEN BEGIN 12
  SAY ~Hrothgar is right, <CHARNAME>, but we must attempt it all the same. I have been to Halruaa myself and was unable to prevent the disaster. I arrived too late and found that events had already begun. All I found was the confirmation of what I have already told you.~ [tilorn17]
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY ~Ulcaster must be saved, the balance between the magics, like balance in all things, must be preserved and that can only be done by correcting the point at which it went awry.~ [tilorn18]
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~You must find what tipped the balance in their favour, <CHARNAME>, and as I have said, correct it. Speak to whoever you feel you need to but be careful with your dealings with any wizard that you encounter.~ [tilorn19]
  IF ~True()~ THEN GOTO 15
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ545
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 11
END

IF ~~ THEN BEGIN 15
  SAY ~I have the means to send you to Halruaa, all that it needs is for you to agree to aid me in this.~ [tilorn30]
  IF ~~ THEN REPLY ~You have the means to send us into the past, Tilorn! What manner of person are you that can do such a thing?~ GOTO 16
  IF ~~ THEN REPLY ~You speak so casually of sending us into the past, Tilorn, as though it is something that you have done often. Is that so?~ GOTO 16
  IF ~~ THEN REPLY ~Now hold on a minute, Tilorn! Send us back to the past! Can you also bring us back to here? Can you, because I sure as hell do not relish being trapped in some place that puts Irenicus out of my reach?~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~True, it is no simple thing to do, <CHARNAME>, but I can deliver you safely to Halruaa and bring you safely back to the present time when the task is completed. How it is that I can do this is not for me to say. Are you prepared to help me?~ [tilorn20]
  IF ~~ THEN REPLY ~You appear to have the same sense of right about you as Hrothgar does, Tilorn, I see no reason for mistrust in either of you. I will quell my curiosity for the time being and aid you.~ GOTO 17
  IF ~~ THEN REPLY ~I will aid you, Tilorn, and hope that you will trust me enough to give me some answers soon.~ GOTO 17
  IF ~~ THEN REPLY ~Cast your magic, Tilorn, or whatever it is that you have to do to transport us to this Halruaa. We shall see what we shall see, when and 'if' we arrive at the right time or even the right place.~ GOTO 17
  IF ~~ THEN REPLY ~This is madness, Tilorn! You stretch the meaning of the word 'trust' too far! I will not embark on so foolish a mission because it is what you believe should be done. I will return and seek out Irenicus before the chance is lost. If it is your decision to follow Tilorn, Hrothgar, then I will say goodbye to you both.~ GOTO 20
  IF ~~ THEN REPLY ~I told Hrothgar that I would travel with him as far as Ulcaster, Tilorn. Well I am here and I find myself still without answers as to why. You, Tilorn, and Hrothgar are very much the same, in what way I am still unsure, but I see no answers forthcoming from either of you. I have delayed my search for Imoen too long, this is as far as that trust you both asked for goes. If you feel that you must follow Tilorn, Hrothagr, then I bid you both farewell.~ GOTO 20
END

IF ~~ THEN BEGIN 17
  SAY ~Before I transport you there is one last thing to be done. You cannot enter Halruaa armed as you are, to do so would result in instant death the moment you set foot on academy grounds.~ [tilorn23]
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY ~Instead you must leave your armour and your weapons here among the ruins, and whilst you are on Halruaa grounds you must wear these robes that I have procured for you. Only robes and weapons that a mage can use are allowed. ~ [tilorn31]
  IF ~True()~ THEN GOTO 19
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ261
  IF ~InParty("Kachiko") InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ59
  IF ~InParty("Yoshimo") InParty("Kachiko") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ153
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ 36
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ 8
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ159
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ NEJ207
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ NEJ322
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ NEJ253
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ223
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ NEJ189
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ189
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ NEJ311
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~VICONIJ~ NEJ187
  IF ~InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ NEJ118
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~AERIEJ~ NEJ223
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN EXTERN ~TAFFICJ~ halruaa
END

IF ~~ THEN BEGIN 19
  SAY ~Now, make haste, secure a safe place for your equipment and return when you are done.~ [tilorn32]
  IF ~OR(3) !InParty("Sharteel") Dead("Sharteel") StateCheck("Sharteel",STATE_SLEEPING)~ THEN DO ~SetGlobal("VP_Move_To_Halruaa","GLOBAL",1) GiveItemCreate("TulRobe",Player1,0,0,0) GiveItemCreate("TulRobe",Player2,0,0,0) GiveItemCreate("TulRobe",Player3,0,0,0) GiveItemCreate("TulRobe",Player4,0,0,0) GiveItemCreate("TulRobe",Player5,0,0,0) GiveItemCreate("TulRobe",Player6,0,0,0)~ EXIT
  IF ~InParty("Sharteel") !Dead("Sharteel") !StateCheck("Sharteel",STATE_SLEEPING)~ THEN EXTERN ~SHARTJ~ leavarmo
END

IF ~~ THEN BEGIN 20
  SAY ~Then it is for Hrothgar and myself that the task falls upon. We cannot delay if we are to arrive at Halruaa in time. Come Hrothgar.~ [tilorn22]
  IF ~~ THEN EXTERN ~HROTHJ~ 61
END

IF WEIGHT #0 ~Global("VP_Move_To_Halruaa","GLOBAL",1) OR(6) HasWeaponEquiped(Player1) HasWeaponEquiped(Player2) HasWeaponEquiped(Player3) HasWeaponEquiped(Player4) HasWeaponEquiped(Player5) HasWeaponEquiped(Player6)~ THEN BEGIN 21
  SAY ~You must leave all your armour and your weapons here among the ruins. Only robes and weapons that a mage can use are allowed. Please, secure a safe place for your equipment and return when you are done.~
  IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("VP_Move_To_Halruaa","GLOBAL",1) !HasWeaponEquiped(Player1) !HasWeaponEquiped(Player2) !HasWeaponEquiped(Player3) !HasWeaponEquiped(Player4) !HasWeaponEquiped(Player5) !HasWeaponEquiped(Player6)~ THEN BEGIN 22
  SAY ~Is it done?~ [tilorn24]
  IF ~~ THEN REPLY ~At least, I hope so.~ GOTO 23
  IF ~~ THEN REPLY ~No. I need more time to prepare for such a harsh road.~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY ~Good. Then no more talk, ready yourselves for the next place that you see will be the Academy of Halruaa.~ [tilorn33]
  IF ~~ THEN DO ~SetGlobal("VP_Move_To_Halruaa","GLOBAL",2) SetGlobal("VP_InHalruaa","GLOBAL",1) ClearAllActions() StartCutSceneMode() TakePartyItemAll("AROW01") TakePartyItemAll("AROW02") TakePartyItemAll("AROW03") TakePartyItemAll("AROW04") TakePartyItemAll("AROW05") TakePartyItemAll("AROW06") TakePartyItemAll("AROW07") TakePartyItemAll("AROW08") TakePartyItemAll("AROW09") TakePartyItemAll("AROW10") TakePartyItemAll("AROW11") TakePartyItemAll("AROW12") TakePartyItemAll("AROW13") TakePartyItemAll("AROW14") TakePartyItemAll("AROW15") TakePartyItemAll("AROW16") TakePartyItemAll("AROWTRN") TakePartyItemAll("AROW1A") TakePartyItemAll("AROWKC") TakePartyItemAll("AX1H01") TakePartyItemAll("AX1H02") TakePartyItemAll("AX1H03") TakePartyItemAll("AX1H04") TakePartyItemAll("AX1H05") TakePartyItemAll("AX1H06") TakePartyItemAll("AX1H07") TakePartyItemAll("AX1H08") TakePartyItemAll("AX1H09") TakePartyItemAll("AX1H10") TakePartyItemAll("AX1H11") TakePartyItemAll("AX1H12") TakePartyItemAll("AX1H13") TakePartyItemAll("AX1H14") TakePartyItemAll("AX1H15") TakePartyItemAll("AX1H16") TakePartyItemAll("AX1H17") TakePartyItemAll("BLUN01") TakePartyItemAll("BLUN02") TakePartyItemAll("BLUN03") TakePartyItemAll("BLUN04") TakePartyItemAll("BLUN05") TakePartyItemAll("BLUN06") TakePartyItemAll("BLUN07") TakePartyItemAll("BLUN08") TakePartyItemAll("BLUN09") TakePartyItemAll("BLUN10") TakePartyItemAll("BLUN11") TakePartyItemAll("BLUN12") TakePartyItemAll("BLUN13") TakePartyItemAll("BLUN14") TakePartyItemAll("BLUN15") TakePartyItemAll("BLUN16") TakePartyItemAll("BLUN17") TakePartyItemAll("BLUN18") TakePartyItemAll("BLUN19") TakePartyItemAll("BLUN20") TakePartyItemAll("BLUN21") TakePartyItemAll("BLUN22") TakePartyItemAll("BLUN23") TakePartyItemAll("BLUN24") TakePartyItemAll("BLUN25") TakePartyItemAll("BLUN26") TakePartyItemAll("BLUN27") TakePartyItemAll("BLUN28") TakePartyItemAll("BLUN29") TakePartyItemAll("BLUN30") TakePartyItemAll("BLUN31") TakePartyItemAll("BLUN32") TakePartyItemAll("BLUN33") TakePartyItemAll("BLUN34") TakePartyItemAll("BLUN35") TakePartyItemAll("BOLT01") TakePartyItemAll("BOLT02") TakePartyItemAll("BOLT03") TakePartyItemAll("BOLT04") TakePartyItemAll("BOLT05") TakePartyItemAll("BOLT06") TakePartyItemAll("BOLT07") TakePartyItemAll("BOLT08") TakePartyItemAll("BOLT09") TakePartyItemAll("BOW01") TakePartyItemAll("BOW02") TakePartyItemAll("BOW03") TakePartyItemAll("BOW04") TakePartyItemAll("BOW05") TakePartyItemAll("BOW06") TakePartyItemAll("BOW07") TakePartyItemAll("BOW08") TakePartyItemAll("BOW09") TakePartyItemAll("BOW10") TakePartyItemAll("BOW11") TakePartyItemAll("BOW12") TakePartyItemAll("BOW13") TakePartyItemAll("BOW14") TakePartyItemAll("BOW15") TakePartyItemAll("BOW16") TakePartyItemAll("BOW17") TakePartyItemAll("BOW18") TakePartyItemAll("BOW19") TakePartyItemAll("BOW20") TakePartyItemAll("BOW21") TakePartyItemAll("BOW22") TakePartyItemAll("BOW23") TakePartyItemAll("BOW24") TakePartyItemAll("BOW25") TakePartyItemAll("BOW26") TakePartyItemAll("BOW98") TakePartyItemAll("BOW99") TakePartyItemAll("CHAN01") TakePartyItemAll("CHAN02") TakePartyItemAll("CHAN03") TakePartyItemAll("CHAN04") TakePartyItemAll("CHAN05") TakePartyItemAll("CHAN06") TakePartyItemAll("CHAN07") TakePartyItemAll("CHAN08") TakePartyItemAll("CHAN09") TakePartyItemAll("CHAN10") TakePartyItemAll("CHAN11") TakePartyItemAll("CHAN12") TakePartyItemAll("CHAN13") TakePartyItemAll("CHAN14") TakePartyItemAll("CHAN15") TakePartyItemAll("CHAN16") TakePartyItemAll("CHAN17") TakePartyItemAll("CHAN18") TakePartyItemAll("CHAN19") TakePartyItemAll("CHAN20") TakePartyItemAll("CHAN21") TakePartyItemAll("HALB01") TakePartyItemAll("HALB02") TakePartyItemAll("HALB03") TakePartyItemAll("HALB04") TakePartyItemAll("HALB05") TakePartyItemAll("HALB06") TakePartyItemAll("HALB07") TakePartyItemAll("HALB08") TakePartyItemAll("HALB09") TakePartyItemAll("HALB10") TakePartyItemAll("HALB11") TakePartyItemAll("HALB12") TakePartyItemAll("HAMM01") TakePartyItemAll("HAMM02") TakePartyItemAll("HAMM03") TakePartyItemAll("HAMM04") TakePartyItemAll("HAMM05") TakePartyItemAll("HAMM06") TakePartyItemAll("HAMM07") TakePartyItemAll("HAMM08") TakePartyItemAll("HAMM09") TakePartyItemAll("HAMM10") TakePartyItemAll("HAMM11") TakePartyItemAll("HAMM12") TakePartyItemAll("HELM01") TakePartyItemAll("HELM02") TakePartyItemAll("HELM03") TakePartyItemAll("HELM04") TakePartyItemAll("HELM05") TakePartyItemAll("HELM06") TakePartyItemAll("HELM07") TakePartyItemAll("HELM08") TakePartyItemAll("HELM09") TakePartyItemAll("HELM10") TakePartyItemAll("HELM11") TakePartyItemAll("HELM12") TakePartyItemAll("HELM13") TakePartyItemAll("HELM14") TakePartyItemAll("HELM15") TakePartyItemAll("HELM16") TakePartyItemAll("HELM17") TakePartyItemAll("HELM21") TakePartyItemAll("HELM31") TakePartyItemAll("HELM32") TakePartyItemAll("HELM33") TakePartyItemAll("LEAT01") TakePartyItemAll("LEAT01") TakePartyItemAll("LEAT02") TakePartyItemAll("LEAT03") TakePartyItemAll("LEAT04") TakePartyItemAll("LEAT05") TakePartyItemAll("LEAT06") TakePartyItemAll("LEAT07") TakePartyItemAll("LEAT08") TakePartyItemAll("LEAT09") TakePartyItemAll("LEAT10") TakePartyItemAll("LEAT11") TakePartyItemAll("LEAT12") TakePartyItemAll("LEAT13") TakePartyItemAll("LEAT14") TakePartyItemAll("LEAT15") TakePartyItemAll("LEAT16") TakePartyItemAll("LEAT17") TakePartyItemAll("LEAT18") TakePartyItemAll("LEAT19") TakePartyItemAll("LEAT20") TakePartyItemAll("LEAT21") TakePartyItemAll("LEAT22") TakePartyItemAll("LEAT23") TakePartyItemAll("LEAT24") TakePartyItemAll("PLAT01") TakePartyItemAll("PLAT02") TakePartyItemAll("PLAT04") TakePartyItemAll("PLAT05") TakePartyItemAll("PLAT06") TakePartyItemAll("PLAT07") TakePartyItemAll("PLAT08") TakePartyItemAll("PLAT09") TakePartyItemAll("PLAT10") TakePartyItemAll("PLAT11") TakePartyItemAll("PLAT12") TakePartyItemAll("PLAT13") TakePartyItemAll("PLAT14") TakePartyItemAll("PLAT15") TakePartyItemAll("PLAT16") TakePartyItemAll("PLAT17") TakePartyItemAll("PLAT18") TakePartyItemAll("PLAT19") TakePartyItemAll("PLAT20") TakePartyItemAll("PLAT21") TakePartyItemAll("PLAT22") TakePartyItemAll("PLAT23") TakePartyItemAll("PLAT98") TakePartyItemAll("PLAT99") TakePartyItemAll("SHLD01") TakePartyItemAll("SHLD02") TakePartyItemAll("SHLD03") TakePartyItemAll("SHLD04") TakePartyItemAll("SHLD05") TakePartyItemAll("SHLD06") TakePartyItemAll("SHLD07") TakePartyItemAll("SHLD08") TakePartyItemAll("SHLD09") TakePartyItemAll("SHLD10") TakePartyItemAll("SHLD11") TakePartyItemAll("SHLD12") TakePartyItemAll("SHLD13") TakePartyItemAll("SHLD14") TakePartyItemAll("SHLD15") TakePartyItemAll("SHLD16") TakePartyItemAll("SHLD17") TakePartyItemAll("SHLD18") TakePartyItemAll("SHLD19") TakePartyItemAll("SHLD20") TakePartyItemAll("SHLD21") TakePartyItemAll("SHLD22") TakePartyItemAll("SHLD23") TakePartyItemAll("SHLD24") TakePartyItemAll("SHLD25") TakePartyItemAll("SHLD26") TakePartyItemAll("SHLD27") TakePartyItemAll("SHLD28") TakePartyItemAll("SHLD29") TakePartyItemAll("SHLD30") TakePartyItemAll("SHLD31") TakePartyItemAll("SHLD32") TakePartyItemAll("SHLD99") TakePartyItemAll("SPER01") TakePartyItemAll("SPER02") TakePartyItemAll("SPER03") TakePartyItemAll("SPER04") TakePartyItemAll("SPER05") TakePartyItemAll("SPER06") TakePartyItemAll("SPER07") TakePartyItemAll("SPER08") TakePartyItemAll("SPER09") TakePartyItemAll("SPER10") TakePartyItemAll("SPER11") TakePartyItemAll("SPER12") TakePartyItemAll("SW1H01") TakePartyItemAll("SW1H02") TakePartyItemAll("SW1H03") TakePartyItemAll("SW1H04") TakePartyItemAll("SW1H05") TakePartyItemAll("SW1H06") TakePartyItemAll("SW1H07") TakePartyItemAll("SW1H08") TakePartyItemAll("SW1H09") TakePartyItemAll("SW1H10") TakePartyItemAll("SW1H11") TakePartyItemAll("SW1H12") TakePartyItemAll("SW1H13") TakePartyItemAll("SW1H14") TakePartyItemAll("SW1H15") TakePartyItemAll("SW1H16") TakePartyItemAll("SW1H17") TakePartyItemAll("SW1H18") TakePartyItemAll("SW1H19") TakePartyItemAll("SW1H20") TakePartyItemAll("SW1H21") TakePartyItemAll("SW1H22") TakePartyItemAll("SW1H23") TakePartyItemAll("SW1H24") TakePartyItemAll("SW1H25") TakePartyItemAll("SW1H26") TakePartyItemAll("SW1H27") TakePartyItemAll("SW1H28") TakePartyItemAll("SW1H29") TakePartyItemAll("SW1H30") TakePartyItemAll("SW1H31") TakePartyItemAll("SW1H32") TakePartyItemAll("SW1H33") TakePartyItemAll("SW1H34") TakePartyItemAll("SW1H35") TakePartyItemAll("SW1H36") TakePartyItemAll("SW1H37") TakePartyItemAll("SW1H38") TakePartyItemAll("SW1H39") TakePartyItemAll("SW1H40") TakePartyItemAll("SW1H41") TakePartyItemAll("SW1H42") TakePartyItemAll("SW1H43") TakePartyItemAll("SW1H44") TakePartyItemAll("SW1H45") TakePartyItemAll("SW1H46") TakePartyItemAll("SW1H47") TakePartyItemAll("SW1H48") TakePartyItemAll("SW1H49") TakePartyItemAll("SW1H50") TakePartyItemAll("SW1H51") TakePartyItemAll("SW1H52") TakePartyItemAll("SW1H53") TakePartyItemAll("SW1H54") TakePartyItemAll("SW1H55") TakePartyItemAll("SW1H56") TakePartyItemAll("SW1H57") TakePartyItemAll("SW1H58") TakePartyItemAll("SW1H59") TakePartyItemAll("SW1H60") TakePartyItemAll("SW1H61") TakePartyItemAll("SW1H62") TakePartyItemAll("SW1H63") TakePartyItemAll("SW1H64") TakePartyItemAll("SW1H65") TakePartyItemAll("SW1H66") TakePartyItemAll("SW1H67") TakePartyItemAll("SW1H68") TakePartyItemAll("SW1H69") TakePartyItemAll("SW1H70") TakePartyItemAll("SW1H71") TakePartyItemAll("SW1H72") TakePartyItemAll("SW1H73") TakePartyItemAll("SW1H74") TakePartyItemAll("SW1H75") TakePartyItemAll("SW1H76") TakePartyItemAll("SW1H77") TakePartyItemAll("SW1H98") TakePartyItemAll("SW1H99") TakePartyItemAll("SW2H01") TakePartyItemAll("SW2H02") TakePartyItemAll("SW2H03") TakePartyItemAll("SW2H05") TakePartyItemAll("SW2H06") TakePartyItemAll("SW2H07") TakePartyItemAll("SW2H08") TakePartyItemAll("SW2H09") TakePartyItemAll("SW2H10") TakePartyItemAll("SW2H11") TakePartyItemAll("SW2H12") TakePartyItemAll("SW2H13") TakePartyItemAll("SW2H14") TakePartyItemAll("SW2H15") TakePartyItemAll("SW2H16") TakePartyItemAll("SW2H17") TakePartyItemAll("SW2H18") TakePartyItemAll("SW2H19") TakePartyItemAll("SW2H20") TakePartyItemAll("SW2H21") TakePartyItemAll("SW2H99") TakePartyItemAll("XBOW01") TakePartyItemAll("XBOW02") TakePartyItemAll("XBOW03") TakePartyItemAll("XBOW04") TakePartyItemAll("XBOW05") TakePartyItemAll("XBOW06") TakePartyItemAll("XBOW07") TakePartyItemAll("XBOW08") TakePartyItemAll("XBOW09") TakePartyItemAll("XBOW10") TakePartyItemAll("XBOW12") TakePartyItemAll("XBOW13") TakePartyItemAll("XBOW14") TakePartyItemAll("XBOW15") TakePartyItemAll("XBOW15EN") TakePartyItemAll("XBOW16") TakePartyItemAll("XBOW17") TakePartyItemAll("XBOW18") TakePartyItemAll("2HAXE") TakePartyItemAll("AXECHAR") TakePartyItemAll("AXENEJ01") TakePartyItemAll("BAG05TS") TakePartyItemAll("BEETSHLD") TakePartyItemAll("BESS") TakePartyItemAll("BigShBul") TakePartyItemAll("BigShuta") TakePartyItemAll("BLACKNIG") TakePartyItemAll("BLCKBOW") TakePartyItemAll("BOH01") TakePartyItemAll("BOWHAMM") TakePartyItemAll("BOWMESS") TakePartyItemAll("BowMess2") TakePartyItemAll("BRUENAXE") TakePartyItemAll("CAIRN") TakePartyItemAll("CFSWORD") TakePartyItemAll("CHAINBM") TakePartyItemAll("CHAN99") TakePartyItemAll("CYNICIS") TakePartyItemAll("DAISY") TakePartyItemAll("DARCHAIN") TakePartyItemAll("DARSHLD") TakePartyItemAll("DAXE") TakePartyItemAll("DOVES") TakePartyItemAll("DPLATE") TakePartyItemAll("DRAGARM") TakePartyItemAll("DSHLD") TakePartyItemAll("FKILLER") TakePartyItemAll("GIVING") TakePartyItemAll("HAMMCOMM") TakePartyItemAll("HELLPIK") TakePartyItemAll("HELMDED") TakePartyItemAll("HELMDEF") TakePartyItemAll("HELMLA") TakePartyItemAll("HrotAxe") TakePartyItemAll("FLAMSW1H") TakePartyItemAll("JHOSWD2") TakePartyItemAll("KASWOR01") TakePartyItemAll("KASWOR02") TakePartyItemAll("KelChan") TakePartyItemAll("KingMask") TakePartyItemAll("KISSGF") TakePartyItemAll("KRESWRD") TakePartyItemAll("Lilarco2") TakePartyItemAll("MAILLIF") TakePartyItemAll("MoonBlad") TakePartyItemAll("MOURNER") TakePartyItemAll("MYRLOCH") TakePartyItemAll("MYSTERY") TakePartyItemAll("NATURE") TakePartyItemAll("NPBOW") TakePartyItemAll("npchan") TakePartyItemAll("npplat") TakePartyItemAll("NPSHLD") TakePartyItemAll("NPSW01") TakePartyItemAll("NPSW03") TakePartyItemAll("npsw04") TakePartyItemAll("NYMSHLD") TakePartyItemAll("PEST") TakePartyItemAll("PIKEMAN") TakePartyItemAll("PLAT97") TakePartyItemAll("PLATBLK") TakePartyItemAll("RISW1H01") TakePartyItemAll("RISW1H02") TakePartyItemAll("RYXYR") TakePartyItemAll("SCEPTRE") TakePartyItemAll("SHLDBCH") TakePartyItemAll("SILEAT") TakePartyItemAll("SIMACE1") TakePartyItemAll("SIMACE2") TakePartyItemAll("SIMACE3") TakePartyItemAll("SW1HERRT") TakePartyItemAll("SW1HSEEK") TakePartyItemAll("SW2HSAR") TakePartyItemAll("SWANARM") TakePartyItemAll("TOMB") TakePartyItemAll("U1HAM5B") TakePartyItemAll("U1HAX3B") TakePartyItemAll("UBSWD4A") TakePartyItemAll("UBSWD5B") TakePartyItemAll("UFLAL2B") TakePartyItemAll("ULSWD3A") TakePartyItemAll("ULSWD3B") TakePartyItemAll("UMHULK") TakePartyItemAll("UNKENIN") TakePartyItemAll("UNVENG") TakePartyItemAll("VALIANT") TakePartyItemAll("VPSword") TakePartyItemAll("WA2DAK") TakePartyItemAll("WA2DAK2") TakePartyItemAll("WA2DAK3") TakePartyItemAll("WA2DAK4") TakePartyItemAll("WA2DAK5") TakePartyItemAll("WA2HALB") TakePartyItemAll("WA2HELM") TakePartyItemAll("WA2PLAT") TakePartyItemAll("WA2S1H") TakePartyItemAll("WA2SHIEL") TakePartyItemAll("WAAXE") TakePartyItemAll("WAFLAIL") TakePartyItemAll("WAMACE") TakePartyItemAll("WANINJA") TakePartyItemAll("WAS2H") TakePartyItemAll("WASPEAR") TakePartyItemAll("WASTAR") TakePartyItemAll("WAWAK") TakePartyItemAll("WUHALTAI") TakePartyItemAll("WuJen") TakePartyItemAll("YOSHKAT") TakePartyItemAll("ZZ57PJ") TakePartyItemAll("ZZA7CH") TakePartyItemAll("ZZC8HB") TakePartyItemAll("ZZD5WOH") TakePartyItemAll("ZZF6AL") TakePartyItemAll("ZZF6AS") TakePartyItemAll("ZZG7TS") StartCutScene("VPCutH05")~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY ~I cannot... (*sighs*) It's too late, my friend.~ [tilorn01]
  IF ~~ THEN DO ~PlaySound("EFF_M17B") ScreenShake([50.50],30)~ EXTERN ~EURICH~ 1
END

IF ~~ THEN BEGIN 25
  SAY ~Why are you all so persistent? Even if I resurrect <PRO_HIMHER>, <PRO_HESHE> won't remember a thing.~ [tilorn02]
  IF ~~ THEN EXTERN ~LARIA~ 3
END

IF ~~ THEN BEGIN 26
  SAY ~Damn! We never have a single chance to reject our fate. We are inflicted by <PRO_HIMHER>, and we need <PRO_HIMHER>, yet we cannot break the cycle, and we cannot preserve it without this damned artifact.~ [tilorn03]
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY ~In the name of the Brotherhood of Moon, we return you to your agony, which occasionally resembles "life".~ [tilorn04]
  IF ~~ THEN DO ~ScreenShake([50.50],15) ClearAllActions() StartCutSceneMode() StartCutScene("VP_Mov05")~ EXIT
END

IF ~!Global("VP_Leaving_Halruaa","GLOBAL",0)~ THEN BEGIN 28
  SAY ~(*Angrily*) Mages and their damn pride! Magic is indeed a terrible force if wielded indiscriminately. I look at the destruction around us and pray today's mages have learnt from past mistakes, this should never have happened!~
  IF ~~ THEN EXTERN ~HROTHJ~ 339
END

IF ~~ THEN BEGIN 29
  SAY ~No Hrothgar, I still believe Ulcaster himself somehow knew of the crisis we would be facing today. With the untimely destruction of his academy, any written records of his were lost, as were the memories of the ghost Ulcaster.~
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY ~I cannot and will not believe that it was coincidence the Halruaa mages struck when they did, instead, it is my belief that their hand was forced to prevent us obtaining knowledge vital to our cause. Curses on Halruaa, we should have been able to prevent this!~
  IF ~~ THEN EXTERN ~HROTHJ~ 342
END

IF ~~ THEN BEGIN 31
  SAY ~(*Turning to you*)... Forgive my outburst <CHARNAME>. Hrothgar is right, I suppose I always knew the quest was ultimately futile and, what I like to call the *pasenture* or the *past-present-future*, could not be changed in our favour but I had to try...~
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY ~But when I found and took the second key from Halruaa, I was not able to discover how it had come to be at the academy. I had hoped, that my taking the key and your search for relevant information, our combined actions would send a quiver through the time line.~
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY ~Even a minor tremor, I thought, might be enough to alter the future in some significant way... I was wrong... now the mission becomes yours and Hrothgar's.~
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY ~All hope for the multi-universe I place in your hands, keep it safe, Hrothgar will explain. Remember that as long as there is hope there will be *the future* we require, where I am sure we will meet again.~
  = ~By the way, Hrothgar, our mutual friend Eurich asked that I give you this fire transducer for your gun.~
  = ~Farewell and good luck in your search.~
  IF ~PartyHasItem("Leveller")~ THEN EXTERN ~HROTHJ~ 341
  IF ~!PartyHasItem("Leveller")~ THEN DO ~GiveItemCreate("KeyTilor",Player1,0,0,0) GiveItemCreate("BigShFir","Hrothgar",0,0,0) SetGlobal("VP_Leaving_Halruaa","GLOBAL",7) SetGlobal("VP_InHalruaa","GLOBAL",0) RealSetGlobalTimer("VP_Eurich_Timer","GLOBAL",1800) SetGlobal("VP_Eurich_Appears","GLOBAL",1) AddXPObject(Player1,38500) AddXPObject(Player2,38500) AddXPObject(Player3,38500) AddXPObject(Player4,38500) AddXPObject(Player5,38500) AddXPObject(Player6,38500) EscapeArea()~ JOURNAL ~"Pasenture"... a strange term for Tilorn to use? Yet he spoke of it as though it were just another state in which time exists, a state that I of this time, have no comprehension of but one he is obviously accustomed to making references to.
Does this mean that the future has been changed before by his brethren's excursions into the past? If it is so then I can't help but wonder what else they have altered in the past to suit their needs in the future, and more importantly, have they deliberately manipulated my path to steer me unto them? What effect has their meddling had on my own destiny?
It has always seemed to me that my life was not my own, that my path was set no matter which way I chose... set by the gods or by fate whatever you choose to call it. Or so I thought but now, now I am not so sure.
If the past can be tampered with so easily by these... these travellers in time then how am I to know what is real and what is not?
Does all that I believe in have any place in this reality... does it even matter what I believe anymore? Am I but a pawn to be used and manipulated by those wishing to harness the divine power that I carry within?
How many times I ask, how many times have I been turned around?
DAMN Bhaal and his cursed blood... DAMN him and the life it has brought me to!
DAMN Bhaal and his cursed blood... DAMN him and the life it has brought me to... and DAMN these Moonknights, who believe they have the right to pick and choose the events they feel should have an alternative course!! What exactly is it, that gives them the right, or the authority?!?~ EXIT
END

IF ~~ THEN BEGIN 35
  SAY ~(*Turning the artifact over in his hands*)... If it was crafted by the mages of Halruaa to be used against Ulcaster, then it is almost certainly a weapon from hell itself!~
  IF ~~ THEN DO ~TakePartyItemAll("Leveller")~ GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY ~You have my assurance my friend, it will never be deployed against this world or any other. Once again I bid you all farewell.~
  IF ~~ THEN DO ~GiveItemCreate("KeyTilor",Player1,0,0,0) GiveItemCreate("BigShFir","Hrothgar",0,0,0) SetGlobal("VP_Leaving_Halruaa","GLOBAL",7) SetGlobal("VP_InHalruaa","GLOBAL",0) RealSetGlobalTimer("VP_Eurich_Timer","GLOBAL",1800) SetGlobal("VP_Eurich_Appears","GLOBAL",1) AddXPObject(Player1,57300) AddXPObject(Player2,57300) AddXPObject(Player3,57300) AddXPObject(Player4,57300) AddXPObject(Player5,57300) AddXPObject(Player6,57300) EscapeArea()~ JOURNAL ~"Pasenture"... a strange term for Tilorn to use? Yet he spoke of it as though it were just another state in which time exists, a state that I of this time, have no comprehension of but one he is obviously accustomed to making references to.
Does this mean that the future has been changed before by his brethren's excursions into the past? If it is so then I can't help but wonder what else they have altered in the past to suit their needs in the future, and more importantly, have they deliberately manipulated my path to steer me unto them? What effect has their meddling had on my own destiny?
It has always seemed to me that my life was not my own, that my path was set no matter which way I chose... set by the gods or by fate whatever you choose to call it. Or so I thought but now, now I am not so sure.
If the past can be tampered with so easily by these... these travellers in time then how am I to know what is real and what is not?
Does all that I believe in have any place in this reality... does it even matter what I believe anymore? Am I but a pawn to be used and manipulated by those wishing to harness the divine power that I carry within?
How many times I ask, how many times have I been turned around?
DAMN Bhaal and his cursed blood... DAMN him and the life it has brought me to!
DAMN Bhaal and his cursed blood... DAMN him and the life it has brought me to... and DAMN these Moonknights, who believe they have the right to pick and choose the events they feel should have an alternative course!! What exactly is it, that gives them the right, or the authority?!?~ EXIT
END