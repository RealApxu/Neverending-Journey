BEGIN ~TuPhin~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~More students wanting to prove themselves. This has been one of the busiest terms we have had in a long time. Still it is good to see the increase in the swing to specialist magic. Please I am Phineas and your name is? You are obviously one of my students but I am not very good at putting names to faces out of the classroom.~
  IF ~~ THEN REPLY ~Hello I am <CHARNAME> you sound busy Phineas. Is this a bad time for me to present myself for the ability tests?~ GOTO 1
  IF ~~ THEN REPLY ~I am <CHARNAME>,  a student of yours and as you so rightly said Phineas, here to prove myself. What must I do.~ GOTO 2
  IF ~~ THEN REPLY ~Well met Phineas. <CHARNAME> is my name and I believe testing is your game?~ GOTO 3
  IF ~~ THEN REPLY ~I am <CHARNAME>. What does it matter whether you remember my face or not? We are here to test my magical prowess, not your memory.~ GOTO 4
  IF ~~ THEN REPLY ~Well met Phineas I am <CHARNAME>, however it is not myself who seeks to be tested today.~ GOTO npcstest
END

IF ~~ THEN BEGIN 1
  SAY ~Not too busy to accommodate another potential abjurer. A couple of simple tasks for you to do and a pass certificate will be yours. So, you ready for me to explain how this goes? <CHARNAME>?~
  IF ~~ THEN REPLY ~I'm all ears.~ GOTO 5
  IF ~~ THEN REPLY ~That's what I am here for, start explaining.~ GOTO 5
  IF ~~ THEN REPLY ~Yes and I am eager to begin.~ GOTO 5
  IF ~~ THEN REPLY ~Well, I can not do anything until you do, now can I? So you best start talking.~ GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY ~Good, that's what I like to see. It is refreshing to see such dedication in a student. I will explain what is required if you are ready <CHARNAME>?~
  IF ~~ THEN REPLY ~I'm all ears.~ GOTO 5
  IF ~~ THEN REPLY ~That's what I am here for, start explaining.~ GOTO 5
  IF ~~ THEN REPLY ~Yes and I am eager to begin.~ GOTO 5
  IF ~~ THEN REPLY ~Well, I can not do anything until you do, now can I? So you best start talking.~ GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY ~(*Smiles*) It is but what a quaint way of asking <CHARNAME>. You sound very confident in yourself, not a failing on your part I hasten to add. In fact it's good to see. Now are you ready to hear what simple tasks I have set for today?~
  IF ~~ THEN REPLY ~I'm all ears.~ GOTO 5
  IF ~~ THEN REPLY ~That's what I am here for, start explaining.~ GOTO 5
  IF ~~ THEN REPLY ~Yes and I am eager to begin.~ GOTO 5
  IF ~~ THEN REPLY ~Well, I can not do anything until you do, now can I? So you best start talking.~ GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY ~You would do well to leave your impudence at home if you wish to gain the respect and the help of the tutors here <CHARNAME>. Now, let's forget this bad start and set about your reason for being here. Are you ready to listen to what I have to say?~
  IF ~~ THEN REPLY ~Whatever, just tell me what needs doing.~ GOTO 5
  IF ~~ THEN REPLY ~I am not here for a lecture on etiquette Phineas. My attitude has nothing to do with my standing as a mage, but yes I am listening to you.~ GOTO 5
  IF ~~ THEN REPLY ~Well, I can not do anything until you do, now can I? So you best start talking.~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~You are an abjurer so it is obvious that these tests of mine are going to test your ability as an abjurer and also to show me that you pose no danger to those around you when you use your magic. The tasks are compiled to give me an idea of what you can do in two areas of an abjurer's expertise.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~The first test will be for you to protect yourself from spells that I will be casting at you. I will not make it easy by telling you the level of these spells but I will tell you that I will cast three in total. The second test will give you the opportunity to break down my own defence. Are we set to begin <CHARNAME>?~
  IF ~~ THEN REPLY ~I am, Phineas.~ GOTO 7
  IF ~Class(Player1,MAGE_ALL) !Kit(Player1,MAGESCHOOL_TRANSMUTER)~ THEN REPLY ~No, I have the spells but not memorised Phineas.~ GOTO 8
  IF ~OR(2) !Class(Player1,MAGE_ALL) Kit(Player1,MAGESCHOOL_TRANSMUTER)~ THEN REPLY ~No, I have the spells but not memorised Phineas.~ GOTO 9
  IF ~Class(Player1,MAGE_ALL) !Kit(Player1,MAGESCHOOL_TRANSMUTER)~ THEN REPLY ~I do not have the required spells in my spell book.~ GOTO 10
  IF ~OR(2) !Class(Player1,MAGE_ALL) Kit(Player1,MAGESCHOOL_TRANSMUTER)~ THEN REPLY ~I do not have the required spells in my spell book.~ GOTO 11
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ325
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ227
  IF ~InParty("Kachiko") !Dead("Kachiko")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ63
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN REPLY ~Taffic may be small but he believes himself more than capable.~ EXTERN ~TAFFICJ~ abjurer
  IF ~InParty("Jan") !Dead("Jan")~ THEN REPLY ~Jan, imagine how funny it will be when your cousin Willy falls off his chair after he learns that you have passed your exam at Halruaa's Academy of Magic.~ EXTERN ~JANJ~ abjurer
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN REPLY ~Edwin, I wouldn't normally bother you... what with you being above this Halruaa and its mages, but as the only mage in the group, please I could really do with your help here. I realize that this silly exam is an insult to your intelligence, but if you could see your way clear to do this for me, the trinkets and new spells we gain if you pass will more than compensate for the inconvenience.~ EXTERN ~EDWINJ~ abjurer
  IF ~~ THEN REPLY ~That's hardly a challenge and certainly not worth wasting my time on. I am out of here, farewell Phineas.~ GOTO 12
  IF ~~ THEN REPLY ~Perhaps this is not a good time for me after all. Maybe some other time Phineas.~ GOTO 12
END

IF ~~ THEN BEGIN 7
  SAY ~Exellent! In your own time begin your casting.~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Abjurer_Test1","GLOBAL",360)~ EXIT
END //=> Abjurer: Test 1 (Waiting). If ready --> GOTO 26

IF ~~ THEN BEGIN 8
  SAY ~(*Rolls his eyes*) What is it about the students of today? In my days as a student I would not have been allowed to take any test if I had turned up unprepared, but now we are instructed to give the students a choice of scrolls. How that teaches them to set up their spells to cover any eventuality is beyond me.~
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 9
  SAY ~You disappoint me, student, here I was me thinking your keenness was an indication that you were prepared. I propose that you leave now and come back when you are prepared.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",3)~ EXIT
END //Abjurer: Test 1 is postponed

IF ~~ THEN BEGIN 10
  SAY ~(*Rolls his eyes*) What are we teaching our students today I ask myself, or is it they are just not listening? The tasks I have just set you, student, are doable by any number of abjuration spells and yet you say you don't have any of them.~
  IF ~~ THEN REPLY ~Do you disregard my abilities solely because I do not have the spells required for this test of yours?~ GOTO 18
  IF ~~ THEN REPLY ~I might not have what you call *any number* of abjuration  spells, but I am an Abjurer, and as such should be given the chance to prove myself!~ GOTO 18
  IF ~~ THEN REPLY ~I am more than capable as an Abjurer to pass your tests, Phineas, if only you will give me the opportunity.~ GOTO 18
  IF ~~ THEN REPLY ~Please, Phineas, I can pass your test if only will give me the chance.~ GOTO 18
END

IF ~~ THEN BEGIN 11
  SAY ~(*Rolls his eyes*) What are we teaching our students today I ask myself, or is it they are just not listening? The tasks I have just set you, student, are doable by any number of abjuration spells and yet you say you don't have any of them. I suggest you come back when you are ready to prove yourself deserving of the name Abjurer! Farewell.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",3)~ EXIT
END //Abjurer: Test 1 is postponed

IF ~~ THEN BEGIN 12
  SAY ~My commitment to Halruaa will take me away for a time, how long or if I will return I do not know, so unless you take the tests today I can not say when anyone will next be available to set them. Think it over <CHARNAME>.~
  IF ~~ THEN REPLY ~Farewell, Phineas.~ GOTO 13
  IF ~~ THEN REPLY ~Hold Phineas, I have changed my mind. Maybe time is not as pressing as I first thought, come let us begin.~ GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY ~As a student, your attitude surprises me. You do know of course that you will not be allowed to graduate if you do not pass all the tests set. So there is more to consider here than whether they are a challenge or not, but I will not waste anymore of that precious time you speak of. Farewell <CHARNAME>.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END //Abjurer: Test 1 is rejected

IF ~~ THEN BEGIN 14
  SAY ~Circumstances being as they are, you decision to reconsider is the right one <CHARNAME>. You know the tasks, are you and your spells readied?~
  IF ~~ THEN REPLY ~I have, Phineas.~ GOTO 7
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ325
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ227
  IF ~InParty("Kachiko") !Dead("Kachiko")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ63
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN REPLY ~Taffic may be small but he believes himself more than capable.~ EXTERN ~TAFFICJ~ abjurer
  IF ~InParty("Jan") !Dead("Jan")~ THEN REPLY ~Jan, imagine how funny it will be when your cousin Willy falls off his chair after he learns that you have passed your exam at Halruaa's Academy of Magic.~ EXTERN ~JANJ~ abjurer
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN REPLY ~Edwin, I wouldn't normally bother you... what with you being above this Halruaa and its mages, but as the only mage in the group, please I could really do with your help here. I realize that this silly exam is an insult to your intelligence, but if you could see your way clear to do this for me, the trinkets and new spells we gain if you pass will more than compensate for the inconvenience.~ EXTERN ~EDWINJ~ abjurer
  IF ~Class(Player1,MAGE_ALL) !Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I have the spells, Phineas, but I have not had the opportunity to memorise them.~ GOTO 8
  IF ~OR(2) !Class(Player1,MAGE_ALL) Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I have the spells, Phineas, but I have not had the opportunity to memorise them.~ GOTO 9
  IF ~Class(Player1,MAGE_ALL) !Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I do not have the required spells in my spell book.~ GOTO 10
  IF ~OR(2) !Class(Player1,MAGE_ALL) Kit(Player1,MAGESCHOOL_ENCHANTER)~ THEN REPLY ~I do not have the required spells in my spell book.~ GOTO 11
END

IF ~~ THEN BEGIN 15
  SAY ~Still, it is not my place to question and you will lose you some marks because of it <CHARNAME>. You may pick one scroll for each task make your mind up quickly.~
  IF ~~ THEN REPLY ~Spell Immunity.~ DO ~GiveItemCreate("SCRL6S",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Globe of Invulnerability.~ DO ~GiveItemCreate("SCRL7F",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Protection From Magic Energy.~ DO ~GiveItemCreate("SCRL7J",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Spell Deflection.~ DO ~GiveItemCreate("SCRL7V",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Spell Shield.~ DO ~GiveItemCreate("SCRL8X",Player1,1,0,0)~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~You may choose one for the second task.~
  IF ~~ THEN REPLY ~Spell Thrust.~ DO ~GiveItemCreate("SCRL6J",Player1,1,0,0)~ GOTO 17
  IF ~~ THEN REPLY ~Secret Word.~ DO ~GiveItemCreate("SCRL6O",Player1,1,0,0)~ GOTO 17
  IF ~~ THEN REPLY ~Breach.~ DO ~GiveItemCreate("SCRL6U",Player1,1,0,0)~ GOTO 17
  IF ~~ THEN REPLY ~Pierce Magic.~ DO ~GiveItemCreate("SCRL7L",Player1,1,0,0)~ GOTO 17
  IF ~~ THEN REPLY ~Ruby Ray of Reversal.~ DO ~GiveItemCreate("SCRL8G",Player1,1,0,0)~ GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY ~Now let us see if you have made a wise choice <CHARNAME>. We will proceed when you are ready.~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Abjurer_Test1","GLOBAL",360)~ EXIT
END //=> Abjurer: Test 1 (Waiting). If ready --> GOTO 26

IF ~~ THEN BEGIN 18
  SAY ~I am sorely disappointed, however tutors are now instructed to give students a choice of scrolls when it comes to these tests. A practise I whole heartedly disagree with, but I do not make the rules. However, you will lose you some marks because of it. These are the scrolls you get to choose from. Make your choice quickly.~
  IF ~~ THEN REPLY ~Spell Immunity.~ DO ~GiveItemCreate("SCRL6S",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Globe of Invulnerability.~ DO ~GiveItemCreate("SCRL7F",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Protection From Magic Energy.~ DO ~GiveItemCreate("SCRL7J",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Spell Deflection.~ DO ~GiveItemCreate("SCRL7V",Player1,1,0,0)~ GOTO 16
  IF ~~ THEN REPLY ~Spell Shield.~ DO ~GiveItemCreate("SCRL8X",Player1,1,0,0)~ GOTO 16
END

IF ~Global("VP_My_Test","LOCALS",3)~ THEN BEGIN 19
  SAY ~I am pleased that you have decided to return, it shows you are committed to your studies <CHARNAME>. You are ready and have your spells to hand, yes?~
  IF ~~ THEN REPLY ~I do, Phineas.~ GOTO 20
  IF ~~ THEN REPLY ~Of course, Phineas, I would not be here otherwise.~ GOTO 20
  IF ~~ THEN REPLY ~I do and I assure you, I will not fail.~ GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY ~All that remains now is to see if you have prepared wisely. We will proceed when you are ready.~
  IF ~Global("VP_Nalia_AbjQuest","GLOBAL",0) Global("VP_Kachi_AbjQuest","GLOBAL",0) Global("VP_Aerie_AbjQuest","GLOBAL",0) Global("VP_Taffic_AbjQuest","GLOBAL",0) Global("VP_Jan_AbjQuest","GLOBAL",0) Global("VP_Edwin_AbjQuest","GLOBAL",0)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT18")~ EXIT
  IF ~Global("VP_Nalia_AbjQuest","GLOBAL",1)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutN03")~ EXIT
  IF ~Global("VP_Kachi_AbjQuest","GLOBAL",1)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutK03")~ EXIT
  IF ~Global("VP_Aerie_AbjQuest","GLOBAL",1)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutA03")~ EXIT
  IF ~Global("VP_Taffic_AbjQuest","GLOBAL",1)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutTf3")~ EXIT
  IF ~Global("VP_Jan_AbjQuest","GLOBAL",1)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutJ03")~ EXIT
  IF ~Global("VP_Edwin_AbjQuest","GLOBAL",1)~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutE03")~ EXIT
END //Abjurer: Test 1 starts

IF ~Global("VP_My_Test","LOCALS",2) HPPercent(Player1,100) Global("VP_Nalia_AbjQuest","GLOBAL",0) Global("VP_Kachi_AbjQuest","GLOBAL",0) Global("VP_Aerie_AbjQuest","GLOBAL",0) Global("VP_Taffic_AbjQuest","GLOBAL",0) Global("VP_Jan_AbjQuest","GLOBAL",0) Global("VP_Edwin_AbjQuest","GLOBAL",0)~ THEN BEGIN 21
  SAY ~Nicely done <CHARNAME>. You chose your spell wisely. Now onto the second task.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",4) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT19")~ EXIT
END //Abjurer: Test 2 starts

IF ~Global("VP_My_Test","LOCALS",4)~ THEN BEGIN 22
  SAY ~You will have only one minute to breach my defense. Within a minute you may cast any spell you wish but after that you must immediately cease your spell casting and inform me about this.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",5) RealSetGlobalTimer("VP_Abjurer_Test2","GLOBAL",60)~ EXIT
END //=> Abjurer: Test 2 (Waiting). If too late --> GOTO 28

IF ~Global("VP_My_Test","LOCALS",2) HPPercentLT(Player1,100) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Nalia_AbjQuest","GLOBAL",0) Global("VP_Kachi_AbjQuest","GLOBAL",0) Global("VP_Aerie_AbjQuest","GLOBAL",0) Global("VP_Taffic_AbjQuest","GLOBAL",0) Global("VP_Jan_AbjQuest","GLOBAL",0) Global("VP_Edwin_AbjQuest","GLOBAL",0)~ THEN BEGIN 23
  SAY ~ I am sorry <CHARNAME>, but you do need  to succeed in both tasks in order to pass. You should return to your studies for now, and I will see you again when I return and then you may try again. Farewell.~
  IF ~~ THEN REPLY ~Please, Phineas, let me attempt the task once more. I will not fail again.~ GOTO 24
  IF ~~ THEN REPLY ~You cannot possibly fail me after only one attempt, Phineas!~ GOTO 24
  IF ~~ THEN REPLY ~Is that it, Phineas? One attempt is hardly fair!~ GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY ~One attempt is all you get! You may try again but not at this time. Now, you will return to your studies and I will see you again when my other business is concluded. Farewell.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT21")~ EXIT
END

IF ~Global("VP_My_Test","LOCALS",5) HPPercent(Myself,100) !RealGlobalTimerExpired("VP_Abjurer_Test2","GLOBAL") Global("VP_Nalia_AbjQuest","GLOBAL",0) Global("VP_Kachi_AbjQuest","GLOBAL",0) Global("VP_Aerie_AbjQuest","GLOBAL",0) Global("VP_Taffic_AbjQuest","GLOBAL",0) Global("VP_Jan_AbjQuest","GLOBAL",0) Global("VP_Edwin_AbjQuest","GLOBAL",0)~ THEN BEGIN 25
  SAY ~I am sorry, a brave attempt, but you do need to succeed in both tasks in order to pass. You should return to your studies for now, and I will see you again when I return and you may try again. Farewell.~
  IF ~~ THEN REPLY ~But surely having passed the first test, I can be given another attempt at the second?~ GOTO 24
  IF ~~ THEN REPLY ~I have proven capable in one task, Phineas, is that not enough?~ GOTO 24
  IF ~~ THEN REPLY ~Come Phineas, who will know if you let me attempt the second task again?~ GOTO 24
END

IF ~Global("VP_My_Test","LOCALS",1) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Nalia_AbjQuest","GLOBAL",0) Global("VP_Kachi_AbjQuest","GLOBAL",0) Global("VP_Aerie_AbjQuest","GLOBAL",0) Global("VP_Taffic_AbjQuest","GLOBAL",0) Global("VP_Jan_AbjQuest","GLOBAL",0) Global("VP_Edwin_AbjQuest","GLOBAL",0)~ THEN BEGIN 26
  SAY ~I guess you are ready <CHARNAME>, so let's proceed with the first test.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT18")~ EXIT
END //Abjurer: Test 1 starts

IF ~Global("VP_My_Test","LOCALS",1) RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Nalia_AbjQuest","GLOBAL",0) Global("VP_Kachi_AbjQuest","GLOBAL",0) Global("VP_Aerie_AbjQuest","GLOBAL",0) Global("VP_Taffic_AbjQuest","GLOBAL",0) Global("VP_Jan_AbjQuest","GLOBAL",0) Global("VP_Edwin_AbjQuest","GLOBAL",0)~ THEN BEGIN 27
  SAY ~I am sorry, but you were too slow in casting spells. You have cost your life! I should by rights refuse you and mark you down for failing the test. Now, you may return to your studies, and I will see you again when my other business is concluded. Farewell.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT21")~ EXIT
END //Abjurer: Test 1 is rejected

IF ~Global("VP_My_Test","LOCALS",5) RealGlobalTimerExpired("VP_Abjurer_Test2","GLOBAL") Global("VP_Nalia_AbjQuest","GLOBAL",0) Global("VP_Kachi_AbjQuest","GLOBAL",0) Global("VP_Aerie_AbjQuest","GLOBAL",0) Global("VP_Taffic_AbjQuest","GLOBAL",0) Global("VP_Jan_AbjQuest","GLOBAL",0) Global("VP_Edwin_AbjQuest","GLOBAL",0)~ THEN BEGIN 28
  SAY ~I am sorry, but you were too slow in casting spells. You have cost your life! I should by rights refuse you and mark you down for failing the test. Now, you may return to your studies, and I will see you again when my other business is concluded. Farewell.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT21")~ EXIT
END //Abjurer: Test 2 is rejected

IF ~Global("VP_My_Test","LOCALS",5) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") HPPercentLT(Myself,100) Global("VP_Nalia_AbjQuest","GLOBAL",0) Global("VP_Kachi_AbjQuest","GLOBAL",0) Global("VP_Aerie_AbjQuest","GLOBAL",0) Global("VP_Taffic_AbjQuest","GLOBAL",0) Global("VP_Jan_AbjQuest","GLOBAL",0) Global("VP_Edwin_AbjQuest","GLOBAL",0)~ THEN BEGIN 29
  SAY ~Congratulations <GABBER>, you show more promise than I have seen in a student for a long while. I will personally monitor your progress carefully. Return to your studies, and I will see you again when you are once more ready to advance. Until then, I wish you luck. Farewell for now.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT20")~ EXIT
END

IF ~Global("VP_My_Test","LOCALS",2) HPPercent("Nalia",100) Global("VP_Nalia_AbjQuest","GLOBAL",1)~ THEN BEGIN 30
  SAY ~Nicely done, Nalia. You chose your spell wisely. Now onto the second task.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",4) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutN04")~ EXIT
END //Abjurer: Test 2 starts

IF ~Global("VP_My_Test","LOCALS",2) HPPercent("Kachiko",100) Global("VP_Kachi_AbjQuest","GLOBAL",1)~ THEN BEGIN 31
  SAY ~Nicely done, Kachiko. You chose your spell wisely. Now onto the second task.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",4) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutK04")~ EXIT
END //Abjurer: Test 2 starts

IF ~Global("VP_My_Test","LOCALS",2) HPPercent("Aerie",100) Global("VP_Aerie_AbjQuest","GLOBAL",1)~ THEN BEGIN 32
  SAY ~Nicely done, Aerie. You chose your spell wisely. Now onto the second task.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",4) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutA04")~ EXIT
END //Abjurer: Test 2 starts

IF ~Global("VP_My_Test","LOCALS",2) HPPercentLT("Nalia",100) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Nalia_AbjQuest","GLOBAL",1)~ THEN BEGIN 33
  SAY ~I am sorry, Nalia, but you have failed the first task and therefore forfeit the chance to attempt the second. You do need to successfully complete both tasks at the first attempt in order pass.~
  IF ~~ THEN EXTERN ~NALIAJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",2) HPPercentLT("Kachiko",100) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Kachi_AbjQuest","GLOBAL",1)~ THEN BEGIN 34
  SAY ~I am sorry, Kachiko, but you have failed the first task and therefore forfeit the chance to attempt the second. You do need to successfully complete both tasks at the first attempt in order pass.~
  IF ~~ THEN EXTERN ~KACHIJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",2) HPPercentLT("Aerie",100) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Aerie_AbjQuest","GLOBAL",1)~ THEN BEGIN 35
  SAY ~I am sorry, Aerie, but you have failed the first task and therefore forfeit the chance to attempt the second. You do need to successfully complete both tasks at the first attempt in order pass.~
  IF ~~ THEN EXTERN ~AERIEJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",1) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Nalia_AbjQuest","GLOBAL",1)~ THEN BEGIN 36
  SAY ~I guess you are ready Nalia, so let's proceed with the first test.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutN03")~ EXIT
END //Abjurer: Test 1 starts

IF ~Global("VP_My_Test","LOCALS",1) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Kachi_AbjQuest","GLOBAL",1)~ THEN BEGIN 37
  SAY ~I guess you are ready Kachiko, so let's proceed with the first test.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutK03")~ EXIT
END //Abjurer: Test 1 starts

IF ~Global("VP_My_Test","LOCALS",1) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Aerie_AbjQuest","GLOBAL",1)~ THEN BEGIN 38
  SAY ~I guess you are ready Aerie, so let's proceed with the first test.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutA03")~ EXIT
END //Abjurer: Test 1 starts

IF ~Global("VP_My_Test","LOCALS",5) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") HPPercentLT(Myself,100) Global("VP_Nalia_AbjQuest","GLOBAL",1)~ THEN BEGIN 39
  SAY ~Congratulations, Nalia, you have done well and have earned your pass. Please return to your studies and I will see you again when you are once more ready to advance. Until then, I wish you luck. Farewell for now.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutN05")~ EXIT
END

IF ~Global("VP_My_Test","LOCALS",5) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") HPPercentLT(Myself,100) Global("VP_Kachi_AbjQuest","GLOBAL",1)~ THEN BEGIN 40
  SAY ~Congratulations, Kachiko, you have done well and have earned your pass. Please return to your studies and I will see you again when you are once more ready to advance. Until then, I wish you luck. Farewell for now.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutK05")~ EXIT
END

IF ~Global("VP_My_Test","LOCALS",5) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") HPPercentLT(Myself,100) Global("VP_Aerie_AbjQuest","GLOBAL",1)~ THEN BEGIN 41
  SAY ~Congratulations, Aerie, you have done well and have earned your pass. Please return to your studies and I will see you again when you are once more ready to advance. Until then, I wish you luck. Farewell for now.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutA05")~ EXIT
END

IF ~~ THEN BEGIN npcstest
  SAY ~If not yourself <CHARNAME>, then let me explain the test and you can introduce me to the candidate when I am done.~
  = ~The test consists of two very simple tasks which will help me assess your magical ability in two areas of abjuration magic.~
  = ~The first task will be for you to protect yourself from spells that I will be casting at you. I will not make it easy by telling you the level of these spells but I will tell you that I will cast three in total. The second test will give you the opportunity to break down my own defences. Are we set to begin?~
  IF ~~ THEN REPLY ~I am ready to pass your exams.~ GOTO 7
  IF ~Class(Player1,MAGE_ALL) !Kit(Player1,MAGESCHOOL_TRANSMUTER)~ THEN REPLY ~I am ready to pass your exams and I have the spells, but not memorised Phineas.~ GOTO 8
  IF ~OR(2) !Class(Player1,MAGE_ALL) Kit(Player1,MAGESCHOOL_TRANSMUTER)~ THEN REPLY ~I am ready to pass your exams and I have the spells, but not memorised Phineas.~ GOTO 9
  IF ~Class(Player1,MAGE_ALL) !Kit(Player1,MAGESCHOOL_TRANSMUTER)~ THEN REPLY ~I do not have the required spells in my spell book.~ GOTO 10
  IF ~OR(2) !Class(Player1,MAGE_ALL) Kit(Player1,MAGESCHOOL_TRANSMUTER)~ THEN REPLY ~I do not have the required spells in my spell book.~ GOTO 11
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ325
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ227
  IF ~InParty("Kachiko") !Dead("Kachiko")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ63
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN REPLY ~Taffic may be small but he believes himself more than capable.~ EXTERN ~TAFFICJ~ abjurer
  IF ~InParty("Jan") !Dead("Jan")~ THEN REPLY ~Jan, imagine how funny it will be when your cousin Willy falls off his chair after he learns that you have passed your exam at Halruaa's Academy of Magic.~ EXTERN ~JANJ~ abjurer
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN REPLY ~Edwin, I wouldn't normally bother you... what with you being above this Halruaa and its mages, but as the only mage in the group, please I could really do with your help here. I realize that this silly exam is an insult to your intelligence, but if you could see your way clear to do this for me, the trinkets and new spells we gain if you pass will more than compensate for the inconvenience.~ EXTERN ~EDWINJ~ abjurer
  IF ~~ THEN REPLY ~That's hardly a challenge and certainly not worth wasting my time on. I am out of here, farewell Phineas.~ GOTO 12
  IF ~~ THEN REPLY ~Perhaps this is not a good time for me after all. Maybe some other time Phineas.~ GOTO 12
END

IF ~~ THEN BEGIN npcfail
  SAY ~I know you are disappointed, but don't lose heart, there will be another time. I have other business away from the academy, but come and see me in a few days after my return.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT21")~ EXIT
END

IF ~Global("VP_My_Test","LOCALS",5) HPPercent(Myself,100) !RealGlobalTimerExpired("VP_Abjurer_Test2","GLOBAL") Global("VP_Nalia_AbjQuest","GLOBAL",1)~ THEN BEGIN nalifail
  SAY ~I am sorry, Nalia, a brave attempt my young friend, but you do need  to complete both tasks successfully to obtain a pass.~
  IF ~~ THEN EXTERN ~NALIAJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",1) RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Nalia_AbjQuest","GLOBAL",1)~ THEN BEGIN naliasl1
  SAY ~I am sorry, Nalia, but you were too slow in casting spells. You have cost your life! I should by rights refuse you and mark you down for failing the test.~
  IF ~~ THEN EXTERN ~NALIAJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",5) RealGlobalTimerExpired("VP_Abjurer_Test2","GLOBAL") Global("VP_Nalia_AbjQuest","GLOBAL",1)~ THEN BEGIN naliasl2
  SAY ~I am sorry, Nalia, but you were too slow in casting spells. You have cost your life! I should by rights refuse you and mark you down for failing the test.~
  IF ~~ THEN EXTERN ~NALIAJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",5) HPPercent(Myself,100) !RealGlobalTimerExpired("VP_Abjurer_Test2","GLOBAL") Global("VP_Kachiko_AbjQuest","GLOBAL",1)~ THEN BEGIN kachfail
  SAY ~I am sorry, Kachiko, a brave attempt my young friend, but you do need  to complete both tasks successfully to obtain a pass.~
  IF ~~ THEN EXTERN ~KACHIJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",1) RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Kachiko_AbjQuest","GLOBAL",1)~ THEN BEGIN kachisl1
  SAY ~I am sorry, Kachiko, but you were too slow in casting spells. You have cost your life! I should by rights refuse you and mark you down for failing the test.~
  IF ~~ THEN EXTERN ~KACHIJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",5) RealGlobalTimerExpired("VP_Abjurer_Test2","GLOBAL") Global("VP_Kachiko_AbjQuest","GLOBAL",1)~ THEN BEGIN kachisl2
  SAY ~I am sorry, Kachiko, but you were too slow in casting spells. You have cost your life! I should by rights refuse you and mark you down for failing the test.~
  IF ~~ THEN EXTERN ~KACHIJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",5) HPPercent(Myself,100) !RealGlobalTimerExpired("VP_Abjurer_Test2","GLOBAL") Global("VP_Aerie_AbjQuest","GLOBAL",1)~ THEN BEGIN aerifail
  SAY ~I am sorry, Aerie, a brave attempt my young friend, but you do need  to complete both tasks successfully to obtain a pass.~
  IF ~~ THEN EXTERN ~AERIEJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",1) RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Aerie_AbjQuest","GLOBAL",1)~ THEN BEGIN aerislo1
  SAY ~I am sorry, Aerie, but you were too slow in casting spells. You have cost your life! I should by rights refuse you and mark you down for failing the test.~
  IF ~~ THEN EXTERN ~AERIEJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",5) RealGlobalTimerExpired("VP_Abjurer_Test2","GLOBAL") Global("VP_Aerie_AbjQuest","GLOBAL",1)~ THEN BEGIN aerislo2
  SAY ~I am sorry, Aerie, but you were too slow in casting spells. You have cost your life! I should by rights refuse you and mark you down for failing the test.~
  IF ~~ THEN EXTERN ~AERIEJ~ abjurer2
END

///////////////////////////////////////
////////  Taffic  //////////////////
//////////////////////////////////////

IF ~~ THEN BEGIN taffcast
  SAY ~In your own time begin your casting, Taffic.~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Abjurer_Test1","GLOBAL",360)~ EXIT
END //=> Abjurer: Test 1 (Waiting). If ready --> GOTO 26

IF ~Global("VP_My_Test","LOCALS",2) HPPercent("Taffic",100) Global("VP_Taffic_AbjQuest","GLOBAL",1)~ THEN BEGIN taffic1
  SAY ~Nicely done, Taffic. You chose your spell wisely. Now onto the second task.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",4) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutTf4")~ EXIT
END //Abjurer: Test 1 starts

IF ~Global("VP_My_Test","LOCALS",2) HPPercentLT("Taffic",100) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Taffic_AbjQuest","GLOBAL",1)~ THEN BEGIN taffic2
  SAY ~I am sorry, Taffic, but you have failed the first task and therefore forfeit the chance to attempt the second. You do need to successfully complete both tasks at the first attempt in order pass.~
  IF ~~ THEN EXTERN ~TAFFICJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",1) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Taffic_AbjQuest","GLOBAL",1)~ THEN BEGIN taffic3
  SAY ~I guess you are ready Taffic, so let's proceed with the first test.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutTf3")~ EXIT
END //Abjurer: Test 1 starts

IF ~Global("VP_My_Test","LOCALS",5) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") HPPercentLT(Myself,100) Global("VP_Taffic_AbjQuest","GLOBAL",1)~ THEN BEGIN taffic4
  SAY ~Congratulations, Taffic, you have done well and have earned your pass. Please return to your studies and I will see you again when you are once more ready to advance. Until then, I wish you luck. Farewell for now.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutTf5")~ EXIT
END

IF ~Global("VP_My_Test","LOCALS",5) HPPercent(Myself,100) !RealGlobalTimerExpired("VP_Abjurer_Test2","GLOBAL") Global("VP_Taffic_AbjQuest","GLOBAL",1)~ THEN BEGIN tafifail
  SAY ~I am sorry, Taffic, a brave attempt my young friend, but you do need  to complete both tasks successfully to obtain a pass.~
  IF ~~ THEN EXTERN ~TAFFICJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",1) RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Taffic_AbjQuest","GLOBAL",1)~ THEN BEGIN tafislo1
  SAY ~I am sorry, Taffic, but you were too slow in casting spells. You have cost your life! I should by rights refuse you and mark you down for failing the test.~
  IF ~~ THEN EXTERN ~TAFFICJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",5) RealGlobalTimerExpired("VP_Abjurer_Test2","GLOBAL") Global("VP_Taffic_AbjQuest","GLOBAL",1)~ THEN BEGIN tafislo2
  SAY ~I am sorry, Taffic, but you were too slow in casting spells. You have cost your life! I should by rights refuse you and mark you down for failing the test.~
  IF ~~ THEN EXTERN ~TAFFICJ~ abjurer2
END

///////////////////////////////////////
////////  Jan  //////////////////
//////////////////////////////////////

IF ~~ THEN BEGIN jancast
  SAY ~In your own time begin your casting, Jan.~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Abjurer_Test1","GLOBAL",360)~ EXIT
END //=> Abjurer: Test 1 (Waiting). If ready --> GOTO 26

IF ~Global("VP_My_Test","LOCALS",2) HPPercent("Jan",100) Global("VP_Jan_AbjQuest","GLOBAL",1)~ THEN BEGIN jan1
  SAY ~Nicely done, Jan. You chose your spell wisely. Now onto the second task.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",4) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutJ04")~ EXIT
END //Abjurer: Test 1 starts

IF ~Global("VP_My_Test","LOCALS",2) HPPercentLT("Jan",100) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Jan_AbjQuest","GLOBAL",1)~ THEN BEGIN jan2
  SAY ~I am sorry, Jan, but you have failed the first task and therefore forfeit the chance to attempt the second. You do need to successfully complete both tasks at the first attempt in order pass.~
  IF ~~ THEN EXTERN ~JANJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",1) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Jan_AbjQuest","GLOBAL",1)~ THEN BEGIN jan3
  SAY ~I guess you are ready, Jan, so let's proceed with the first test.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutJ03")~ EXIT
END //Abjurer: Test 1 starts

IF ~Global("VP_My_Test","LOCALS",5) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") HPPercentLT(Myself,100) Global("VP_Jan_AbjQuest","GLOBAL",1)~ THEN BEGIN jan4
  SAY ~Congratulations, Jan, you have done well and have earned your pass. Please return to your studies and I will see you again when you are once more ready to advance. Until then, I wish you luck. Farewell for now.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutJ05")~ EXIT
END

IF ~Global("VP_My_Test","LOCALS",5) HPPercent(Myself,100) !RealGlobalTimerExpired("VP_Abjurer_Test2","GLOBAL") Global("VP_Jan_AbjQuest","GLOBAL",1)~ THEN BEGIN janfail
  SAY ~I am sorry, Jan, a brave attempt my young friend, but you do need  to complete both tasks successfully to obtain a pass.~
  IF ~~ THEN EXTERN ~JANJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",1) RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Jan_AbjQuest","GLOBAL",1)~ THEN BEGIN janslow1
  SAY ~I am sorry, Jan, but you were too slow in casting spells. You have cost your life! I should by rights refuse you and mark you down for failing the test.~
  IF ~~ THEN EXTERN ~JANJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",5) RealGlobalTimerExpired("VP_Abjurer_Test2","GLOBAL") Global("VP_Jan_AbjQuest","GLOBAL",1)~ THEN BEGIN janslow2
  SAY ~I am sorry, Jan, but you were too slow in casting spells. You have cost your life! I should by rights refuse you and mark you down for failing the test.~
  IF ~~ THEN EXTERN ~JANJ~ abjurer2
END

///////////////////////////////////////
////////  Edwin  //////////////////
//////////////////////////////////////

IF ~~ THEN BEGIN edwcast
  SAY ~In your own time begin your casting, Edwin.~
  IF ~~ THEN DO ~ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Abjurer_Test1","GLOBAL",360)~ EXIT
END //=> Abjurer: Test 1 (Waiting). If ready --> GOTO 26

IF ~Global("VP_My_Test","LOCALS",2) HPPercent("Edwin",100) Global("VP_Edwin_AbjQuest","GLOBAL",1)~ THEN BEGIN edwin1
  SAY ~Nicely done, Edwin. You chose your spell wisely. Now onto the second task.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",4) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutE04")~ EXIT
END //Abjurer: Test 1 starts

IF ~Global("VP_My_Test","LOCALS",2) HPPercentLT("Edwin",100) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Edwin_AbjQuest","GLOBAL",1)~ THEN BEGIN edwin2
  SAY ~I am sorry, Edwin, but you have failed the first task and therefore forfeit the chance to attempt the second. You do need to successfully complete both tasks at the first attempt in order pass.~
  IF ~~ THEN EXTERN ~EDWINJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",1) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Edwin_AbjQuest","GLOBAL",1)~ THEN BEGIN edwin3
  SAY ~I guess you are ready, Edwin, so let's proceed with the first test.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) ReallyForceSpell(LastTalkedToBy,GENIE_LIMITED_WISH_HEAL_ALL) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutE03")~ EXIT
END //Abjurer: Test 1 starts

IF ~Global("VP_My_Test","LOCALS",5) !RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") HPPercentLT(Myself,100) Global("VP_Edwin_AbjQuest","GLOBAL",1)~ THEN BEGIN edwin4
  SAY ~Congratulations, Edwin, you have done well and have earned your pass. Please return to your studies and I will see you again when you are once more ready to advance. Until then, I wish you luck. Farewell for now.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutE05")~ EXIT
END

IF ~Global("VP_My_Test","LOCALS",5) HPPercent(Myself,100) !RealGlobalTimerExpired("VP_Abjurer_Test2","GLOBAL") Global("VP_Edwin_AbjQuest","GLOBAL",1)~ THEN BEGIN janfail
  SAY ~I am sorry, Edwin, a brave attempt my young friend, but you do need  to complete both tasks successfully to obtain a pass.~
  IF ~~ THEN EXTERN ~EDWINJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",1) RealGlobalTimerExpired("VP_Abjurer_Test1","GLOBAL") Global("VP_Edwin_AbjQuest","GLOBAL",1)~ THEN BEGIN janslow1
  SAY ~I am sorry, Edwin, but you were too slow in casting spells. You have cost your life! I should by rights refuse you and mark you down for failing the test.~
  IF ~~ THEN EXTERN ~EDWINJ~ abjurer2
END

IF ~Global("VP_My_Test","LOCALS",5) RealGlobalTimerExpired("VP_Abjurer_Test2","GLOBAL") Global("VP_Edwin_AbjQuest","GLOBAL",1)~ THEN BEGIN janslow2
  SAY ~I am sorry, Edwin, but you were too slow in casting spells. You have cost your life! I should by rights refuse you and mark you down for failing the test.~
  IF ~~ THEN EXTERN ~EDWINJ~ abjurer2
END