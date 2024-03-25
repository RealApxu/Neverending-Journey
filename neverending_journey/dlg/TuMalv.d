BEGIN ~TuMalv~ 1

IF ~NumTimesTalkedTo(0) Global("VP_Break_TransTest","GLOBAL",0)~ THEN BEGIN 0
  SAY ~Ah welcome, welcome. I am Malvolio. The time has come around to test our prodigies already has it? Come, tell me your name?~
  IF ~~ THEN REPLY ~Well met Malvolio. I am <CHARNAME>. Yes it has and I am here for my assessment.~ GOTO 2
  IF ~~ THEN REPLY ~Well met to you Malvolio. I am <CHARNAME>. Test you say, I am always ready for a challenge.~ GOTO 2
  IF ~~ THEN REPLY ~I am <CHARNAME> and I do not need to be tested by you or anyone else.~ GOTO 1
  IF ~~ THEN REPLY ~I am <CHARNAME>. Perhaps you can tell me of your tests another day, I am rather busy at the moment.~ GOTO 1
  IF ~~ THEN REPLY ~It has Malvolio. I am <CHARNAME>, however it is not myself who is seeking your assessment today.~ GOTO npcstest
END

IF ~~ THEN BEGIN 1
  SAY ~(*Crossly*) Then unless you have other business here, stop wasting my time and be on your way.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT29")~ EXIT
END //Quest is lost to PC.

IF ~~ THEN BEGIN 2
  SAY ~I am sure you know why it is necessary to test students at intervals as it was written in your entrance papers, but I will just run it by you again.~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~It is not for us, the tutors benefit we have devised these tests but as a matter of safety for you the student. Magic can be a terrible force if wielded indiscriminately so it is for me to be sure that you can use what you have learnt safely.~
  IF ~~ THEN REPLY ~Then I am eager to prove myself, set your test Malvolio.~ GOTO 4
  IF ~~ THEN REPLY ~I am confident I can do whatever you ask of me, so ask away Malvolio.~ GOTO 4
  IF ~~ THEN REPLY ~This could be fun, ok set your test Malvolio.~ GOTO 4
  IF ~~ THEN REPLY ~I would like to know a little more of what is expected of me before I agree to any sort of test.~ GOTO 12
END

IF ~~ THEN BEGIN 4
  SAY ~Good, good. Now, as a Transmuter, this test is obviously designed to see how you cope in a given situation with your alteration spells at hand. This is what I want you to do.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~The cellar downstairs contains a locked and guarded chest. Your task is to deal with the guardian and remove whatever is in the chest using what alteration spells you have. Are you ready to begin <CHARNAME>?~
  IF ~~ THEN REPLY ~I am ready.~ GOTO 6
  IF ~Class(Player1,MAGE_ALL) !Kit(Player1,MAGESCHOOL_ABJURER)~ THEN REPLY ~I know the appropriate spells but I do not have them memorised.~ GOTO 7
  IF ~OR(2) !Class(Player1,MAGE_ALL) Kit(Player1,MAGESCHOOL_ABJURER)~ THEN REPLY ~I know the appropriate spells but I do not have them memorised.~ GOTO 11
  IF ~OR(2) !Class(Player1,MAGE_ALL) Kit(Player1,MAGESCHOOL_ABJURER)~ THEN REPLY ~No, I have nothing suitable in my spell book at all...~ GOTO 11
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ332
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ234
  IF ~InParty("Kachiko") !Dead("Kachiko") OR(2) !InParty("Yoshimo") Dead("Yoshimo")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ70
  IF ~InParty("Kachiko") !Dead("Kachiko") InParty("Yoshimo") !Dead("Yoshimo")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~YOSHJ~ transmut
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN REPLY ~Taffic, a big job for a little guy. Are you up to it?~ EXTERN ~TAFFICJ~ transmut
  IF ~InParty("Jan") !Dead("Jan")~ THEN REPLY ~Jan, just imagine how smart the name Jan Jansen is going to look on Halruaa's roll of honors when you pass this exam?~ EXTERN ~JANJ~ transmut
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN REPLY ~Edwin, I know you don't think too much to these  mages or their academy, and after all why should you, your intelligence and ingenuity surpasses all here. Just think for a moment though of the immense satisfaction that you'll get from knowing that a red wizard infiltrated and passed their silly exams and them being too witless to see it.~ EXTERN ~EDWINJ~ transmut
  IF ~~ THEN REPLY ~This is a waste of my time Malvolio I have better things to do than play silly games.~ GOTO 1
  IF ~~ THEN REPLY ~Maybe another time will be more convenient for me Malvolio.~ GOTO 13
END

IF ~~ THEN BEGIN 6
  SAY ~Then no more talking, the test begins.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) SetGlobal("VP_Transmuter_Test","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT30")~ EXIT
END //=> Transmuter: Test.

IF ~~ THEN BEGIN 7
  SAY ~And how may I ask did you expect to pass anything without any sort of preparation <CHARNAME>?~
  IF ~~ THEN REPLY ~No excuses the test just slipped my mind.~ GOTO 8
  IF ~~ THEN REPLY ~I memorized what I thought was an appropriate selection of spells but I had no idea what your test would involve.~ GOTO 8
  IF ~~ THEN REPLY ~I don't have crystal ball, how could I have known what spells I would be needing today.~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~Same excuses every time! However I am here to assess your ability to cast spells safely and accurately, it looks as though we will have to use scrolls today, but you will lose marks for this. Now choose two from these here and be quick about it.~
  IF ~~ THEN REPLY ~Slow.~ DO ~GiveItemCreate("SCRL1O",Player1,1,0,0)~ GOTO 9
  IF ~~ THEN REPLY ~Stoneskin.~ DO ~GiveItemCreate("SCRL2B",Player1,1,0,0)~ GOTO 9
  IF ~~ THEN REPLY ~Otiluke's Resilient Sphere.~ DO ~GiveItemCreate("SCRL5J",Player1,1,0,0)~ GOTO 9
  IF ~~ THEN REPLY ~Polymorph Other.~ DO ~GiveItemCreate("SCRL5L",Player1,1,0,0)~ GOTO 9
  IF ~~ THEN REPLY ~Polymorph Self.~ DO ~GiveItemCreate("SCRL5M",Player1,1,0,0)~ GOTO 9
  IF ~~ THEN REPLY ~Burning Hands.~ DO ~GiveItemCreate("SCRL68",Player1,1,0,0)~ GOTO 9
  IF ~~ THEN REPLY ~Teleport Field.~ DO ~GiveItemCreate("SCRL6Q",Player1,1,0,0)~ GOTO 9
  IF ~~ THEN REPLY ~Color Spray.~ DO ~GiveItemCreate("SCRL70",Player1,1,0,0)~ GOTO 9
  IF ~~ THEN REPLY ~Tenser's Transformation.~ DO ~GiveItemCreate("SCRL7G",Player1,1,0,0)~ GOTO 9
  IF ~~ THEN REPLY ~Flesh to Stone.~ DO ~GiveItemCreate("SCRL7H",Player1,1,0,0)~ GOTO 9
  IF ~~ THEN REPLY ~Improved Haste.~ DO ~GiveItemCreate("SCRL7Q",Player1,1,0,0)~ GOTO 9
  IF ~~ THEN REPLY ~Disintegrate.~ DO ~GiveItemCreate("SCRL7T",Player1,1,0,0)~ GOTO 9
  IF ~~ THEN REPLY ~Ruby Ray of Reversal.~ DO ~GiveItemCreate("SCRL8G",Player1,1,0,0)~ GOTO 9
  IF ~~ THEN REPLY ~Sphere of Chaos.~ DO ~GiveItemCreate("SCRL8M",Player1,1,0,0)~ GOTO 9
  IF ~~ THEN REPLY ~Knock.~ DO ~GiveItemCreate("SCRL91",Player1,1,0,0)~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY ~You may choose another one.~
  IF ~~ THEN REPLY ~Slow.~ DO ~GiveItemCreate("SCRL1O",Player1,1,0,0)~ GOTO 10
  IF ~~ THEN REPLY ~Stoneskin.~ DO ~GiveItemCreate("SCRL2B",Player1,1,0,0)~ GOTO 10
  IF ~~ THEN REPLY ~Otiluke's Resilient Sphere.~ DO ~GiveItemCreate("SCRL5J",Player1,1,0,0)~ GOTO 10
  IF ~~ THEN REPLY ~Polymorph Other.~ DO ~GiveItemCreate("SCRL5L",Player1,1,0,0)~ GOTO 10
  IF ~~ THEN REPLY ~Polymorph Self.~ DO ~GiveItemCreate("SCRL5M",Player1,1,0,0)~ GOTO 10
  IF ~~ THEN REPLY ~Burning Hands.~ DO ~GiveItemCreate("SCRL68",Player1,1,0,0)~ GOTO 10
  IF ~~ THEN REPLY ~Teleport Field.~ DO ~GiveItemCreate("SCRL6Q",Player1,1,0,0)~ GOTO 10
  IF ~~ THEN REPLY ~Color Spray.~ DO ~GiveItemCreate("SCRL70",Player1,1,0,0)~ GOTO 10
  IF ~~ THEN REPLY ~Tenser's Transformation.~ DO ~GiveItemCreate("SCRL7G",Player1,1,0,0)~ GOTO 10
  IF ~~ THEN REPLY ~Flesh to Stone.~ DO ~GiveItemCreate("SCRL7H",Player1,1,0,0)~ GOTO 10
  IF ~~ THEN REPLY ~Improved Haste.~ DO ~GiveItemCreate("SCRL7Q",Player1,1,0,0)~ GOTO 10
  IF ~~ THEN REPLY ~Disintegrate.~ DO ~GiveItemCreate("SCRL7T",Player1,1,0,0)~ GOTO 10
  IF ~~ THEN REPLY ~Ruby Ray of Reversal.~ DO ~GiveItemCreate("SCRL8G",Player1,1,0,0)~ GOTO 10
  IF ~~ THEN REPLY ~Sphere of Chaos.~ DO ~GiveItemCreate("SCRL8M",Player1,1,0,0)~ GOTO 10
  IF ~~ THEN REPLY ~Knock.~ DO ~GiveItemCreate("SCRL91",Player1,1,0,0)~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY ~You made your choice, now you may proceed.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) SetGlobal("VP_Transmuter_Test","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT30")~ EXIT
END //=> Transmuter: Test.

IF ~~ THEN BEGIN 11
  SAY ~Then there is no point for us continuing further today. I suggest you come back when you are prepared but make it soon as I have another duty to attend to that will take me away from the academy shortly.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2)~ EXIT
END //Transmuter: Test is postponed

IF ~~ THEN BEGIN 12
  SAY ~(*Eyes you suspiciously*) Agree to be assessed? Now that is not what I would expect to hear from a dedicated student. If not for me to test you, then why are you here <CHARNAME>?~
  IF ~~ THEN REPLY ~I am here to be assessed, I just don't want to agree to it until I know I am prepared.~ GOTO 4
  IF ~~ THEN REPLY ~No... no other reason than your assessment. Let us make a start.~ GOTO 4
  IF ~~ THEN REPLY ~No. I assure you I am here to gain Halruaa's honor, nothing more. Test away.~ GOTO 4
END

IF ~~ THEN BEGIN 13
  SAY ~As you wish, but let me warn you, you may not get another chance at the test for a while as my duties will take me away from the academy shortly and I am not sure when I shall return. Farewell.~
  IF ~~ THEN REPLY ~Farewell Malvolio.~ GOTO 14
  IF ~~ THEN REPLY ~I would not want to miss such an opportunity, so okay, I will take your test now.~ GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY ~Goodbye.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END //Transmuter: Test is rejected

IF ~~ THEN BEGIN 15
  SAY ~Then you know the test are you prepared?~
  IF ~~ THEN REPLY ~I am ready.~ GOTO 6
  IF ~Class(Player1,MAGE_ALL) !Kit(Player1,MAGESCHOOL_ABJURER)~ THEN REPLY ~I know the appropriate spells but I do not have them memorised.~ GOTO 7
  IF ~OR(2) !Class(Player1,MAGE_ALL) Kit(Player1,MAGESCHOOL_ABJURER)~ THEN REPLY ~I know the appropriate spells but I do not have them memorised.~ GOTO 11
  IF ~OR(2) !Class(Player1,MAGE_ALL) Kit(Player1,MAGESCHOOL_ABJURER)~ THEN REPLY ~No, I have nothing suitable in my spell book at all...~ GOTO 11
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ332
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ234
  IF ~InParty("Kachiko") !Dead("Kachiko") OR(2) !InParty("Yoshimo") Dead("Yoshimo")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ70
  IF ~InParty("Kachiko") !Dead("Kachiko") InParty("Yoshimo") !Dead("Yoshimo")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~YOSHJ~ transmut
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN REPLY ~Taffic, a big job for a little guy. Are you up to it?~ EXTERN ~TAFFICJ~ transmut
  IF ~InParty("Jan") !Dead("Jan")~ THEN REPLY ~Jan, just imagine how smart the name Jan Jansen is going to look on Halruaa's roll of honors when you pass this exam? ~ EXTERN ~JANJ~ transmut
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN REPLY ~Edwin, I know you don't think too much to these  mages or their academy, and after all why should you, your intelligence and ingenuity surpasses all here. Just think for a moment though of the immense satisfaction that you'll get from knowing that a red wizard infiltrated and passed their silly exams and them being too witless to see it.~ EXTERN ~EDWINJ~ transmut
  IF ~~ THEN REPLY ~This is a waste of my time Malvolio I have better things to do than play silly games.~ GOTO 1
END

IF ~Global("VP_My_Test","LOCALS",2)~ THEN BEGIN 16
  SAY ~Ah, so you return <CHARNAME>. I take it you have returned better prepared and now have the spells necessary for the task set?~
  IF ~~ THEN REPLY ~I have Malvolio.~ GOTO 17
  IF ~~ THEN REPLY ~Of course Malvolio, I would not be here otherwise.~ GOTO 17
  IF ~~ THEN REPLY ~I do and I assure you, I will not fail.~ GOTO 17
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ332
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ234
  IF ~InParty("Kachiko") !Dead("Kachiko") OR(2) !InParty("Yoshimo") Dead("Yoshimo")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ70
  IF ~InParty("Kachiko") !Dead("Kachiko") InParty("Yoshimo") !Dead("Yoshimo")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~YOSHJ~ transmut
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN REPLY ~Taffic, a big job for a little guy. Are you up to it?~ EXTERN ~TAFFICJ~ transmut
  IF ~InParty("Jan") !Dead("Jan")~ THEN REPLY ~Jan, just imagine how smart the name Jan Jansen is going to look on Halruaa's roll of honors when you pass this exam?~ EXTERN ~JANJ~ transmut
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN REPLY ~Edwin, I know you don't think too much to these  mages or their academy, and after all why should you, your intelligence and ingenuity surpasses all here. Just think for a moment though of the immense satisfaction that you'll get from knowing that a red wizard infiltrated and passed their silly exams and them being too witless to see it.~ EXTERN ~EDWINJ~ transmut
END

IF ~~ THEN BEGIN 17
  SAY ~Then no more talking. <CHARNAME>, the test begins.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) SetGlobal("VP_Transmuter_Test","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT30")~ EXIT
END //=> Transmuter: Test.

IF ~~ THEN BEGIN 18
  SAY ~Then no more talking. Nalia, the test begins.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) SetGlobal("VP_Transmuter_Test","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutN12")~ EXIT
END //=> Transmuter: Test.

IF ~~ THEN BEGIN 19
  SAY ~Then no more talking. Aerie, the test begins.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) SetGlobal("VP_Transmuter_Test","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutA12")~ EXIT
END //=> Transmuter: Test.

IF ~~ THEN BEGIN 20
  SAY ~Then no more talking. Kachiko, the test begins.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) SetGlobal("VP_Transmuter_Test","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutK12")~ EXIT
END //=> Transmuter: Test.

IF ~NumTimesTalkedTo(0) GlobalGT("VP_Break_TransTest","GLOBAL",0)~ THEN BEGIN 21
  SAY ~It seems you have already retrieved the scroll without my permission. Then there is no point for us continuing further today. I'll mark down you for cheating. Farewell.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT29")~ EXIT
END //Quest is lost to PC.

IF ~Global("VP_My_Test","LOCALS",1) GlobalGT("VP_Transmuter_Test","GLOBAL",0) !PartyHasItem("dweowarp")~ THEN BEGIN 22
  SAY ~The task is set <GABBER>. You may proceed in your own time.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",3)~ EXIT
END

IF ~Global("VP_My_Test","LOCALS",3) GlobalGT("VP_Transmuter_Test","GLOBAL",0) !PartyHasItem("dweowarp")~ THEN BEGIN 23
  SAY ~Well, the task seems unbearable for you. Then better luck next time, but for now, I suggest you return to your studies and I will see you again when I return and you may try again. Farewell.~
  IF ~~ THEN REPLY ~Please Malvolio, let me attempt the task once more.~ DO ~SetGlobal("VP_My_Test","LOCALS",4)~ GOTO 24
  IF ~GlobalGT("VP_Transmuter_Test","GLOBAL",1)~ THEN REPLY ~Surely you cannot possibly fail me after only one attempt Malvolio!~ DO ~SetGlobal("VP_My_Test","LOCALS",4)~ GOTO 24
  IF ~GlobalGT("VP_Transmuter_Test","GLOBAL",1)~ THEN REPLY ~Hold a moment, is that it Malvolio? One attempt seems hardly fair.~ DO ~SetGlobal("VP_My_Test","LOCALS",4)~ GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY ~One attempt is all you get. You may try again but not at this time. Now, do as I have said and return to your studies. I will see you again when my other business is concluded. Farewell <GABBER>.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT31")~ EXIT
END

IF ~GlobalGT("VP_Transmuter_Test","GLOBAL",0) PartyHasItem("dweowarp") OR(2) Global("VP_My_Test","LOCALS",1) Global("VP_My_Test","LOCALS",3)~ THEN BEGIN 25
  SAY ~Congratulations <GABBER>, that was very well executed. What you found in the chest is yours to keep. Shall we say, as a small reward. Now, return to your studies and I shall see you again when you are once more ready to advance. Until then, I wish you luck. Farewell for now.~
  IF ~Global("VP_Nalia_TraQuest","GLOBAL",0) Global("VP_Kachi_TraQuest","GLOBAL",0) Global("VP_Aerie_TraQuest","GLOBAL",0) Global("VP_Jan_TraQuest","GLOBAL",0) Global("VP_Edwin_TraQuest","GLOBAL",0) Global("VP_Taffic_TraQuest","GLOBAL",0)~ THEN DO ~AddXPObject(Player1,15500) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT31")~ EXIT
  IF ~OR(2) Name("Nalia",LastTalkedToBy) Global("VP_Nalia_TraQuest","GLOBAL",1)~ THEN DO ~AddXPObject("Nalia",15500) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT31")~ EXIT
  IF ~OR(2) Name("Kachiko",LastTalkedToBy) Global("VP_Kachi_TraQuest","GLOBAL",1)~ THEN DO ~AddXPObject("Kachiko",15500) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT31")~ EXIT
  IF ~OR(2) Name("Aerie",LastTalkedToBy) Global("VP_Aerie_TraQuest","GLOBAL",1)~ THEN DO ~AddXPObject("Aerie",15500) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT31")~ EXIT
  IF ~OR(2) Name("Taffic",LastTalkedToBy) Global("VP_Taffic_TraQuest","GLOBAL",1)~ THEN DO ~AddXPObject("Taffic",15500) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT31")~ EXIT
  IF ~OR(2) Name("Jan",LastTalkedToBy) Global("VP_Jan_TraQuest","GLOBAL",1)~ THEN DO ~AddXPObject("Jan",15500) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT31")~ EXIT
  IF ~OR(2) Name("Edwin",LastTalkedToBy) Global("VP_Edwin_TraQuest","GLOBAL",1)~ THEN DO ~AddXPObject("Edwin",15500) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT31")~ EXIT
END

IF WEIGHT #-1 ~Global("VP_Break_TransTest","GLOBAL",3) GlobalGT("VP_Transmuter_Test","GLOBAL",0) !PartyHasItem("dweowarp") OR(2) Global("VP_My_Test","LOCALS",1) Global("VP_My_Test","LOCALS",3)~ THEN BEGIN 26
  SAY ~I am sorry I had to pull you out of there, but the task was set to test your magical abilities but in no way endanger your life.~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL)~ GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY ~There will be other tests and I am sure you will do better next time. Until then, I suggest you return to your studies to prepare further. Farewell.~
  IF ~Global("VP_Nalia_TraQuest","GLOBAL",0) Global("VP_Kachi_TraQuest","GLOBAL",0) Global("VP_Aerie_TraQuest","GLOBAL",0) Global("VP_Jan_TraQuest","GLOBAL",0) Global("VP_Edwin_TraQuest","GLOBAL",0) Global("VP_Taffic_TraQuest","GLOBAL",0)~ THEN REPLY ~Please Malvolio, let me attempt the task once more.~ DO ~SetGlobal("VP_My_Test","LOCALS",4)~ GOTO 24
  IF ~GlobalGT("VP_Transmuter_Test","GLOBAL",1) Global("VP_Nalia_TraQuest","GLOBAL",0) Global("VP_Kachi_TraQuest","GLOBAL",0) Global("VP_Aerie_TraQuest","GLOBAL",0) Global("VP_Jan_TraQuest","GLOBAL",0) Global("VP_Edwin_TraQuest","GLOBAL",0) Global("VP_Taffic_TraQuest","GLOBAL",0)~ THEN REPLY ~Surely you cannot possibly fail me after only one attempt Malvolio!~ DO ~SetGlobal("VP_My_Test","LOCALS",4)~ GOTO 24
  IF ~GlobalGT("VP_Transmuter_Test","GLOBAL",1) Global("VP_Nalia_TraQuest","GLOBAL",0) Global("VP_Kachi_TraQuest","GLOBAL",0) Global("VP_Aerie_TraQuest","GLOBAL",0) Global("VP_Jan_TraQuest","GLOBAL",0) Global("VP_Edwin_TraQuest","GLOBAL",0) Global("VP_Taffic_TraQuest","GLOBAL",0)~ THEN REPLY ~Hold a moment, is that it Malvolio? One attempt seems hardly fair.~ DO ~SetGlobal("VP_My_Test","LOCALS",4)~ GOTO 24
  IF ~Global("VP_Nalia_TraQuest","GLOBAL",1)~ THEN EXTERN ~NALIAJ~ tranfail
  IF ~Global("VP_Aerie_TraQuest","GLOBAL",1)~ THEN EXTERN ~AERIEJ~ tranfail
  IF ~Global("VP_Kachi_TraQuest","GLOBAL",1)~ THEN EXTERN ~KACHIJ~ tranfail
  IF ~Global("VP_Jan_TraQuest","GLOBAL",1)~ THEN EXTERN ~JANJ~ tranfail
  IF ~Global("VP_Edwin_TraQuest","GLOBAL",1)~ THEN EXTERN ~EDWINJ~ tranfail
  IF ~Global("VP_Taffic_TraQuest","GLOBAL",1)~ THEN EXTERN ~TAFFICJ~ tranfail
  IF ~Global("VP_Jan_TraQuest","GLOBAL",1)~ THEN EXTERN ~JANJ~ tranfail
END

IF WEIGHT #-2 ~Global("VP_Break_TransTest","GLOBAL",3) GlobalGT("VP_Transmuter_Test","GLOBAL",0) PartyHasItem("dweowarp") OR(2) Global("VP_My_Test","LOCALS",1) Global("VP_My_Test","LOCALS",3)~ THEN BEGIN 28
  SAY ~I am sorry I had to pull you out of there, but the task was set to test your magical abilities but in no way endanger your life.~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL)~ GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY ~Anyway against all odds you have done well. What you found in the chest is yours to keep. Shall we say, as a small reward. Now, return to your studies and I will see you again when you are once more ready to advance. Until then, I wish you luck. Farewell for now.~
  IF ~Global("VP_Nalia_TraQuest","GLOBAL",0) Global("VP_Kachi_TraQuest","GLOBAL",0) Global("VP_Aerie_TraQuest","GLOBAL",0) Global("VP_Jan_TraQuest","GLOBAL",0) Global("VP_Edwin_TraQuest","GLOBAL",0) Global("VP_Taffic_TraQuest","GLOBAL",0)~ THEN DO ~AddXPObject(Player1,15500) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT31")~ EXIT
  IF ~OR(2) Name("Nalia",LastTalkedToBy) Global("VP_Nalia_TraQuest","GLOBAL",1)~ THEN DO ~AddXPObject("Nalia",15500) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT31")~ EXIT
  IF ~OR(2) Name("Kachiko",LastTalkedToBy) Global("VP_Kachi_TraQuest","GLOBAL",1)~ THEN DO ~AddXPObject("Kachiko",15500) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT31")~ EXIT
  IF ~OR(2) Name("Aerie",LastTalkedToBy) Global("VP_Aerie_TraQuest","GLOBAL",1)~ THEN DO ~AddXPObject("Aerie",15500) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT31")~ EXIT
  IF ~OR(2) Name("Taffic",LastTalkedToBy) Global("VP_Taffic_TraQuest","GLOBAL",1)~ THEN DO ~AddXPObject("Taffic",15500) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT31")~ EXIT
  IF ~OR(2) Name("Jan",LastTalkedToBy) Global("VP_Jan_TraQuest","GLOBAL",1)~ THEN DO ~AddXPObject("Jan",15500) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT31")~ EXIT
  IF ~OR(2) Name("Edwin",LastTalkedToBy) Global("VP_Edwin_TraQuest","GLOBAL",1)~ THEN DO ~AddXPObject("Edwin",15500) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT31")~ EXIT
END

//Taffic tests
IF ~~ THEN BEGIN taffic
  SAY ~Then no more talking, the test begins.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) SetGlobal("VP_Transmuter_Test","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("VPCuTf12")~ EXIT
END //=> Transmuter: Test.

//Jan tests
IF ~~ THEN BEGIN janjan
  SAY ~Then no more talking. Jan, the test begins.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) SetGlobal("VP_Transmuter_Test","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutJ12")~ EXIT
END //=> Transmuter: Test.

IF ~~ THEN BEGIN npcstest
  SAY ~Then why am I talking to you and not the one who is? No matter, I'll explain the nature of the task that I have set and then I trust the aspiring young mage will decide whether they wish to proceed.~
  = ~The task is designed to show me how well you have learnt your lessons in alteration magic and how well you can deal with a given situation using only those spells.~
  = ~I have set a room aside, in this room is a locked chest and a guardian. The test involves you dealing with the guardian and removing whatever is inside the chest. Now who is going to be performing this task, come speak up?~
  IF ~~ THEN REPLY ~I am ready to pass your exams.~ GOTO 6
  IF ~Class(Player1,MAGE_ALL) !Kit(Player1,MAGESCHOOL_ABJURER)~ THEN REPLY ~I am ready to pass your exams and I know the appropriate spells, but I do not have them memorised.~ GOTO 7
  IF ~OR(2) !Class(Player1,MAGE_ALL) Kit(Player1,MAGESCHOOL_ABJURER)~ THEN REPLY ~I am ready to pass your exams and I know the appropriate spells, but I do not have them memorised.~ GOTO 11
  IF ~OR(2) !Class(Player1,MAGE_ALL) Kit(Player1,MAGESCHOOL_ABJURER)~ THEN REPLY ~No, I have nothing suitable in my spell book at all.~ GOTO 11
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ332
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ234
  IF ~InParty("Kachiko") !Dead("Kachiko") OR(2) !InParty("Yoshimo") Dead("Yoshimo")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ70
  IF ~InParty("Kachiko") !Dead("Kachiko") InParty("Yoshimo") !Dead("Yoshimo")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~YOSHJ~ transmut
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN REPLY ~Taffic, a big job for a little guy. Are you up to it?~ EXTERN ~TAFFICJ~ transmut
  IF ~InParty("Jan") !Dead("Jan")~ THEN REPLY ~Jan, just imagine how smart the name Jan Jansen is going to look on Halruaa's roll of honors when you pass this exam?~ EXTERN ~JANJ~ transmut
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN REPLY ~Edwin, I know you don't think too much to these  mages or their academy, and after all why should you, your intelligence and ingenuity surpasses all here. Just think for a moment though of the immense satisfaction that you'll get from knowing that a red wizard infiltrated and passed their silly exams and them being too witless to see it.~ EXTERN ~EDWINJ~ transmut
  IF ~~ THEN REPLY ~This is a waste of my time Malvolio I have better things to do than play silly games.~ GOTO 1
  IF ~~ THEN REPLY ~Maybe another time will be more convenient for me Malvolio.~ GOTO 13
END

//Edwin tests
IF ~~ THEN BEGIN edwin
  SAY ~Then no more talking,. Edwin, the test begins.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) SetGlobal("VP_Transmuter_Test","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutE12")~ EXIT
END //=> Transmuter: Test.