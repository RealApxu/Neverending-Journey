BEGIN ~XANH~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Yet more people roaming the halls unrestrained! You there, I am Xan, where are you people going?~
  IF ~OR(2) !InParty("Hrothgar") Dead("Hrothgar")~ THEN REPLY ~Xan! It's me, <CHARNAME>... don't you recognize me? It is good to see you again. I wondered what had become of you after freeing you from the mines at Nashkel.~ GOTO 1
  IF ~~ THEN REPLY ~Xan! Well I never... er well met, Xan. I am <CHARNAME>. Matej advised to seek out a tutor. Would that be you?~ GOTO 2
  IF ~~ THEN REPLY ~Well met Xan. I am <CHARNAME>, recently arrived to Halruaa. Are you by any chance a tutor here?~ GOTO 2
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN REPLY ~Xan! It's me, <CHARNAME>... don't you recognize me? It is good to see you again. I wondered what had become of you after freeing you from the mines at Nashkel.~ DO ~SetGlobal("VP_Hrothgar_Xan","MYAREA",1)~ EXTERN ~HROTHJ~ 73
END

IF ~~ THEN BEGIN 1
  SAY ~(*Xan looks at you puzzled*)... I do not recognise you. You obviously have me confused with someone else. As for being in any mines at Nashkiel, what would I be doing in so dank and dismal a place?~
  IF ~~ THEN REPLY ~Yes, of course, I can see that I am mistaken now that I look at you closer. Are you by any chance a tutor here?~ GOTO 2
  IF ~~ THEN REPLY ~Forgive my out burst, but for a second I thought I recognised you as a friend. I was told to seek out one of the tutors, would that perchance be you?~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~Me a tutor. Now why should I take on such a thankless task as teaching? The mere idea fills me with a sense of dread. With so many absent, this is only one of such tasks that have fallen upon me. It is not my place to refuse, no matter how tiresome I find them.~
  IF ~~ THEN REPLY ~Then what may I ask is it that you do here?~ JOURNAL ~Meeting Xan.

I couldn't believe my eyes! Who should I run into but none other than Xan... Xan the enchanter whom I freed from Nashkiel mines. I know elves live long lives but it still came as a shock to see him standing in front of me. It would seem that the Xan of the past is much the same as the Xan of the future... and I was always of the opinion that some event in his past had caused his depressive outlook on life. Now I see Xan has always been... Xan. It appears that even his time here as a young enchanter doesn't bring him any joy.~ GOTO 3
  IF ~~ THEN REPLY ~So, if not tutor than you must be a pupil. Is that correct?~ JOURNAL ~Meeting Xan.

I couldn't believe my eyes! Who should I run into but none other than Xan... Xan the enchanter whom I freed from Nashkiel mines. I know elves live long lives but it still came as a shock to see him standing in front of me. It would seem that the Xan of the past is much the same as the Xan of the future... and I was always of the opinion that some event in his past had caused his depressive outlook on life. Now I see Xan has always been... Xan. It appears that even his time here as a young enchanter doesn't bring him any joy.~ GOTO 3
  IF ~~ THEN REPLY ~(*As will most things, Xan!*) Ah, then you must be a student, Xan?~ JOURNAL ~Meeting Xan.

I couldn't believe my eyes! Who should I run into but none other than Xan... Xan the enchanter whom I freed from Nashkiel mines. I know elves live long lives but it still came as a shock to see him standing in front of me. It would seem that the Xan of the past is much the same as the Xan of the future... and I was always of the opinion that some event in his past had caused his depressive outlook on life. Now I see Xan has always been... Xan. It appears that even his time here as a young enchanter doesn't bring him any joy.~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~I am a senior student of Halruaa, studying the arts of Enchantment magic. As a senior student I am sometimes called upon to perform the hapless task of imparting some of my knowledge to our more junior pupils.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~A dismal and thankless task, but with the absence of so many, the job has fallen more and more to me. Given the conditions here, I am amazed that anyone manages to learn anything.~
  IF ~~ THEN REPLY ~You do not seem too pleased with the position thrust upon you. I take it you were you not given any choice in the matter?~ GOTO 5
  IF ~~ THEN REPLY ~Have you any idea what has caused so many absences?~ GOTO 5
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)~ THEN REPLY ~Was there no indication that a spate of absenteeism was about to occur so that measures could have been taken to prevent such disruption?~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~No one tells me anything, and questions would be a waste of time as no one will answer them anyway. When I need to know anything I will be told, so why would I waste my breath asking?~
  IF ~CheckStatGT(LastTalkedToBy,11,WIS)~ THEN REPLY ~Surely you must find it disconcerting to be given no explanation for the sudden increase in your duties?~ GOTO 6
  IF ~~ THEN REPLY ~Are you not in the slightest bit curious about all this secrecy that surrounds Halruaa at the moment?~ GOTO 6
  IF ~~ THEN REPLY ~Why do you not stand up for yourself man, and demand to know what is going on here?~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~Why should I, <CHARNAME>? As I said I will be told if and when I need to know anything. I could spend time looking for answers but it would be in vain. I would have only taken time from my life and wasted it on the search. I see no sense in wasting the time we are given in useless pursuits.~
  IF ~~ THEN REPLY ~Are you so certain that your questions would not be answered, Xan?~ GOTO 7
  IF ~CheckStatGT(LastTalkedToBy,11,WIS)~ THEN REPLY ~Are you perhaps afraid to know the answers to your questions, Xan, so you make excuses not to ask them?~ GOTO 7
  IF ~~ THEN REPLY ~Is it that you know what is afoot here, Xan, but prefer to close your eyes to it?~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~My only interest in this hapless place is to be allowed to continue and finish my studies. I have no desire to embroil myself in the petty squabbles of mages. An air of expectancy hangs over Halruaa at the moment and a sense of dread hangs over me. I fear that if I ask my questions then I too will be dragged into whatever sordid business is being planned.~
  IF ~~ THEN REPLY ~If the atmosphere here at Halruaa fills you with so much dread, why not find another school that is more to your liking?~ GOTO 8
  IF ~~ THEN REPLY ~Why stay? You say your duties are thankless and that you find Halruaa hapless?~ GOTO 8
  IF ~~ THEN REPLY ~Then leave Halruaa, Xan, for I fear that you will have no choice but to be dragged into what is about to transpire here.~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~What is the point of looking elsewhere when I am forever being told that Halruaa is *the* Academy if one wishes to specialise. Specialisation being the future of magic it makes sense to be here. I am after all, here to learn and not to enjoy my surroundings, even if such a thing were possible.~
  IF ~~ THEN REPLY ~I see that you are determined to remain at Halruaa, Xan. You have a long life ahead of you, maybe you will come to enjoy some of it yet. It has been good to meet you but for now I must take my leave of you. I am sure you are anxious to return to your duties. Farewell.~ GOTO 11
  IF ~~ THEN REPLY ~This conversation is becoming too melancholy for me. I will leave you to get on with your hapless tasks. Goodbye, Xan.~ GOTO 9
  IF ~~ THEN REPLY ~Xan, we have talked too long. It has been nice to meet you but now we both have things we should attend to. I bid you farewell, Xan.~ GOTO 9
  IF ~~ THEN REPLY ~Xan, you will never change, that I am certain. I will bid you farewell for now my friend. I have detained you long enough.~ GOTO 9
  IF ~CheckStatGT(LastTalkedToBy,11,WIS)~ THEN REPLY ~Xan, I suspect that wherever you may be, it will always be your disposition to never see the positive side of any situation. You will always see doom and gloom wherever you go. As we both have things to do, I shall bid you farewell.~ GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY ~As you wish. I suppose I must get back to my duties, as thankless as they are, if I do not attend to them no one else will. Goodbye, <CHARNAME>.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Meeting_Xan","GLOBAL",1) MoveToPointNoInterrupt([1801.455]) Face(1)~ EXIT
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN DO ~SetGlobal("VP_Meeting_Xan","GLOBAL",1)~ EXTERN ~JAHEIRAJ~ NEJ549
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN DO ~SetGlobal("VP_Meeting_Xan","GLOBAL",1)~ EXTERN ~HROTHJ~ 71
END

IF ~~ THEN BEGIN 10
  SAY ~I see what I see, <CHARNAME>. I give you that the Academy building is bright enough, but the area that surrounds Halruaa itself is dismal. Nothing to see but sand and the air here is either too hot or too cold to enjoy being outdoors. Still, its purpose is to educate and it does that well enough.~
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~Now as you so rightly point out, I must return to my duties. As thankless as they are, if I do not attend to them no one else will. Goodbye, <CHARNAME>.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Meeting_Xan","GLOBAL",1) MoveToPointNoInterrupt([1801.455]) Face(1)~ EXIT
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ549
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ263
  IF ~InParty("Hrothgar") !Dead("Hrothgar") Global("VP_Hrothgar_Xan","MYAREA",1)~ THEN EXTERN ~HROTHJ~ 71
END

IF WEIGHT #1 ~Global("VP_My_Test","LOCALS",0) NumTimesTalkedToGT(0)~ THEN BEGIN 12
  SAY ~Is there no end to these tiresome tests! Hello. I surmise you are here for the ability tests?~
  IF ~Global("VP_Halruaa_Tests","GLOBAL",0)~ THEN REPLY ~Well met, Xan, so this is one of those hapless task thrust upon you is it?~ GOTO 13
  IF ~Global("VP_Halruaa_Tests","GLOBAL",0)~ THEN REPLY ~Well then, tell me, what it is an ability test?~ GOTO 13
  IF ~Global("VP_Halruaa_Tests","GLOBAL",0)~ THEN REPLY ~Can you tell me why such a test is necessary?~ GOTO 13
  IF ~Global("VP_Halruaa_Tests","GLOBAL",0)~ THEN REPLY ~This test, Xan, is it compulsory for all Halruaa's students?~ GOTO 13
  IF ~Global("VP_Halruaa_Tests","GLOBAL",0)~ THEN REPLY ~I know my capabilities and I do not need a  test to prove myself to you or anyone else.~ GOTO 13
  IF ~Global("VP_Halruaa_Tests","GLOBAL",0)~ THEN REPLY ~(*Ever the pessimist, that's our Xan!*) Ahem... I'll try not to take up too much of your time Xan, but you said something about conducting the ability tests?~ GOTO 13
  IF ~!Global("VP_Halruaa_Tests","GLOBAL",0)~ THEN REPLY ~Well met, Xan, so this is one of those hapless task thrust upon you is it?~ GOTO 43
  IF ~!Global("VP_Halruaa_Tests","GLOBAL",0)~ THEN REPLY ~Well then, tell me, what it is an ability test?~ GOTO 43
  IF ~!Global("VP_Halruaa_Tests","GLOBAL",0)~ THEN REPLY ~Can you tell me why such a test is necessary?~ GOTO 43
  IF ~!Global("VP_Halruaa_Tests","GLOBAL",0)~ THEN REPLY ~This test, Xan, is it compulsory for all Halruaa's students?~ GOTO 43
  IF ~!Global("VP_Halruaa_Tests","GLOBAL",0)~ THEN REPLY ~I know my capabilities and I do not need a  test to prove myself to you or anyone else.~ GOTO 43
  IF ~!Global("VP_Halruaa_Tests","GLOBAL",0)~ THEN REPLY ~(*Ever the pessimist, that's our Xan!*) Ahem... I'll try not to take up too much of your time Xan, but you said something about conducting the ability tests?~ GOTO 43
END

IF ~~ THEN BEGIN 13
  SAY ~All students have to be tested after each stage of learning, as tiresome as it is!~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~We need to be sure that the student has learnt all that is required before moving on to the next phase of learning.~
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~To move a student forward before understanding what has gone before could prove hazardous not only to the student but also to the students who work alongside him. No student will be permitted to proceed or graduate if they refuse a test at any stage.~
  IF ~~ THEN REPLY ~A sensible enough reason I suppose, but does the student benefit in anyway?~ GOTO 16
  IF ~~ THEN REPLY ~What advantage does a student who has graduated have over one who has obtained all the certificates and not graduated?~ GOTO 16
  IF ~~ THEN REPLY ~Tell me, Xan, what incentive is offered to encourage students to take these tests?~ GOTO 16
  IF ~~ THEN REPLY ~So the tutors set the tests for reasons of safety, I imagine it is their safety they worry for about more than the students. Now, what do I as a student gain from this?~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~(*Looking at a you closely*)... What yet more questions, <CHARNAME>? Surely I do not need to tell you the prestige students graduating from Halruaa carry with them?~
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY ~Despite its dismal surroundings, the academy is renown for its high standards of discipline, and to maintain this high esteem only students that graduate are granted a final diploma of Halruaa. In order to graduate, all students must produce certificates of each stage passed.~
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY ~To earn that diploma is the reason students strive in such a hapless place as this. Is that not after all why you are here, <CHARNAME>, or are your questions leading somewhere else?~
  IF ~~ THEN REPLY ~No... no other reason than to prove myself, Xan.~ GOTO 19
  IF ~~ THEN REPLY ~I am here for you assessment, Xan, nothing more than that.~ GOTO 19
  IF ~~ THEN REPLY ~I know of the prestige gained, Xan, I merely ask whether there was a personal reward for each certificate gained. Set your tests, I will not fail!~ GOTO 19
  IF ~~ THEN REPLY ~Set your test, Xan, I will then decide whether I am here to take them or not.~ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY ~The tasks are not of my setting, <CHARNAME>. Around here I just do as I am told.~
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY ~(*Indicating a young student that is standing quietly beside him*) This is Sharia, she has volunteered to help in the first task, I should probably have said *she was* volunteered to help.~
  IF ~~ THEN EXTERN ~TUENCH~ 1
END

IF ~~ THEN BEGIN 21
  SAY ~Enchantment magic depends on the ability to influence the behaviour of those around. Both of these tasks are set to test your capability as an Enchanter, <CHARNAME>.~
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY ~ The first will be for the would be mage to take Sharia here from my side and bring her to their side as an ally, using any enchantment spell at hand. The second will be to cast a new spell that I have been given, devised by one of the master enchanters here at the academy especially for this test. If successful, the student gets to keep a copy of the scroll. Do you have your spells ready?~
  IF ~~ THEN REPLY ~I have, Xan.~ GOTO 23
  IF ~~ THEN REPLY ~I have the spells, Xan, but I have not had the opportunity to memorise them.~ GOTO 24
  IF ~Class(Player1,MAGE_ALL) !Kit(Player1,MAGESCHOOL_INVOKER)~ THEN REPLY ~I do not have the required spells in my spell book.~ GOTO 28
  IF ~OR(2) !Class(Player1,MAGE_ALL) Kit(Player1,MAGESCHOOL_INVOKER)~ THEN REPLY ~I do not have the required spells in my spell book.~ GOTO 30
  IF ~~ THEN REPLY ~I have no time for your petty tests, Xan, I will be leaving.~ GOTO 32
  IF ~~ THEN REPLY ~Perhaps another time, Xan, I have other matters to attend to at this moment in time.~ GOTO 32
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ323
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ225
  IF ~InParty("Kachiko") !Dead("Kachiko")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ61
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN REPLY ~Taffic is a great believer in fate and destiny, he therefore feels competent to take your test.~ EXTERN ~TAFFICJ~ xantest1
  IF ~InParty("Jan") !Dead("Jan")~ THEN REPLY ~Jan, can't you just see the pride you'll bring to ma Jansen's eyes when you tell her you've attended a  renown magic academy and passed their exam?~ EXTERN ~JANJ~ NEJ193
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN REPLY ~Edwin don't glare at Xan, please, he doesn't know you and you are not supposed to know him. I just know that I am going to regret asking this, especially as your intellect is way above his, but could you, would you please put whatever you are feeling aside and take this infantile test of his? Please, a few minutes of your time is all that I am asking.~ EXTERN ~EDWINJ~ NEJ192
END

IF ~~ THEN BEGIN 23
  SAY ~You are prepared, well I never! You do amaze me, so many come here unprepared and expecting to be given time to learn their spells. It's very depressing at times to discover how little students do learn whilst here and yet they still expect to pass their exams. I tell you, ours is a hapless task. Now where was I... oh yes... you may proceed when ready.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Xan_Tests","GLOBAL",360)~ EXIT
END //=> Test 1: To charm Sharia

IF ~~ THEN BEGIN 24
  SAY ~Why am I not surprised! I knew this was not going to be a good day. How do you expect to pass any test without preparing for it, <CHARNAME>?~
  IF ~~ THEN REPLY ~I was preoccupied with my studies, Xan, I guess I left it too late to memorise spells.~ GOTO 26
  IF ~~ THEN REPLY ~I have no excuses, Xan. I forgot about the assessment.~ GOTO 25
  IF ~~ THEN REPLY ~How am I expected to have the required spells memorised when I have no idea what would be expected of me?~ GOTO 26
  IF ~~ THEN REPLY ~I am an Enchanter not a Diviner! How do you expect me to know what spells would be required today?~ GOTO 26
END

IF ~~ THEN BEGIN 25
  SAY ~Spare me the excuses, <CHARNAME>. I am here to assess your spell casting abilities and as such I have been instructed to offer you a choice of scrolls, seems it is not uncommon for you students to arrive ill-prepared.~
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 26
  SAY ~You're wasting both our time, <CHARNAME>. I am here to assess your spell casting abilities and as such I have been instructed to offer you a choice of scrolls, seems it is not uncommon for you students to arrive ill-prepared.~
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY ~I will however have to mark you down for not preparing beforehand. You may choose one which will you take?~
  IF ~~ THEN REPLY ~Charm Person.~ DO ~SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Xan_Tests","GLOBAL",360) GiveItem("SCRL69",Player1)~ EXIT
  IF ~~ THEN REPLY ~Dire Charm.~ DO ~SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Xan_Tests","GLOBAL",360) GiveItem("SCRL1S",Player1)~ EXIT
  IF ~~ THEN REPLY ~Domination.~ DO ~SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Xan_Tests","GLOBAL",360) GiveItem("SCRL5N",Player1)~ EXIT
END //=> Test 1: To charm Sharia

IF ~~ THEN BEGIN 28
  SAY ~Why am I not surprised! I knew this was going to be a hapless task! An Enchanter without basic enchantment spells, what are you students learning? I would be in my right to refuse you and have you return when you are better prepared!~
  IF ~~ THEN REPLY ~Do you disregard my abilities solely because I do not have the spells required for this test of yours?~ GOTO 29
  IF ~~ THEN REPLY ~I might not have what you call *the* most versatile of enchantment spells, but I am an Enchanter and as such should be given the chance to prove myself!~ GOTO 29
  IF ~~ THEN REPLY ~I am more than capable as an Enchanter to pass your tests, Xan, if only you will give me the opportunity.~ GOTO 29
  IF ~~ THEN REPLY ~Please Xan, I can pass your test if only will give me the chance.~ GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY ~However, if you will permit me to finish speaking, it is your spell casting as an Enchanter that I have been instructed to assess, not your spell book. I will offer you a choice of scrolls but mark you down as arriving totally unprepared. Now which scroll will you choose, you may take one?~
  IF ~~ THEN REPLY ~Charm Person.~ DO ~SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Xan_Tests","GLOBAL",360) GiveItem("SCRL69",Player1)~ EXIT
  IF ~~ THEN REPLY ~Dire Charm.~ DO ~SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Xan_Tests","GLOBAL",360) GiveItem("SCRL1S",Player1)~ EXIT
  IF ~~ THEN REPLY ~Domination.~ DO ~SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Xan_Tests","GLOBAL",360) GiveItem("SCRL5N",Player1)~ EXIT
END //=> Test 1: To charm Sharia

IF ~~ THEN BEGIN 30
  SAY ~This is not a good start for you, <CHARNAME>! You call yourself Enchanter and yet you do not have the simplest of enchantment spells in your book. You are not deserving of the name Enchanter.~
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY ~Please go away and do not return until you have prepared yourself. You would be wise not to delay your return as I have other thankless tasks as well as these to perform. Until then, good day to you.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) SetGlobalTimer("VP_Xan_Waiting","GLOBAL",ONE_DAY)~ EXIT
END //=> Test 1: Postponed.

IF ~~ THEN BEGIN 32
  SAY ~As you wish, <CHARNAME>. I have so many thankless tasks thrust upon me at the moment, I probably will not be able to set up another assessment. If you change your mind, I may still be here, or I may not. Good day to you.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) SetGlobalTimer("VP_Xan_Waiting","GLOBAL",ONE_DAY)~ EXIT
END //=> Test 1: Postponed.

IF WEIGHT #2 ~Global("VP_My_Test","LOCALS",2)~ THEN BEGIN 33
  SAY ~You return, <CHARNAME>? I was hoping I was done with this thankless task of testing. I suppose I have to do as instructed. Lucky for you Sharia is still with me. Shall we continue, I presume you have your spells ready this time?~
  IF ~~ THEN REPLY ~I do, Xan.~ GOTO 34
  IF ~~ THEN REPLY ~Of course, Xan, I would not be here otherwise.~ GOTO 34
  IF ~~ THEN REPLY ~I do and I assure you, I will not fail.~ GOTO 34
  IF ~~ THEN REPLY ~I do not have the required spells in my spell book.~ GOTO 30
  IF ~~ THEN REPLY ~Perhaps another time, Xan, I have other matters to attend to at this moment in time.~ GOTO 32
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ323
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ225
  IF ~InParty("Kachiko") !Dead("Kachiko")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ61
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN REPLY ~Taffic is a great believer in fate and destiny, he therefore feels competent to take your test.~ EXTERN ~TAFFICJ~ xantest1
  IF ~InParty("Jan") !Dead("Jan")~ THEN REPLY ~Jan, can't you just see the pride you'll bring to ma Jansen's eyes when you tell her you've attended a  renown magic academy and passed their exam?~ EXTERN ~JANJ~ NEJ193
END

IF ~~ THEN BEGIN 34
  SAY ~Whenever you are ready.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Xan_Tests","GLOBAL",360)~ EXIT
END //=> Test 1: To charm Sharia

IF WEIGHT #3 ~Global("VP_My_Test","LOCALS",1) !GlobalTimerExpired("VP_Xan_Waiting","GLOBAL") !RealGlobalTimerExpired("VP_Xan_Tests","GLOBAL") Alignment("TuEnch",NEUTRAL) NumInParty(1)~ THEN BEGIN 35
  SAY ~Well I never expected, fate is indeed on your side, <CHARNAME>. Now take these scrolls of Eye Bite and I will summon four creatures for the would be mage to attempt each effect of the spell on. Are you set?~
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~I am.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1) SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT10")~ EXIT
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~Ready when you are, Xan.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1) SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT10")~ EXIT
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~Bring them on, Xan.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1) SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT10")~ EXIT
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",1)~ THEN REPLY ~Nalia is ready when you are, Xan.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1)  SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutN01")~ EXIT
  IF ~Global("VP_Kachi_EnchQuest","GLOBAL",1)~ THEN REPLY ~Kachiko is ready when you are, Xan.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1)  SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutK01")~ EXIT
  IF ~Global("VP_Aerie_EnchQuest","GLOBAL",1)~ THEN REPLY ~Aerie is ready when you are, Xan.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1)  SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutA01")~ EXIT
  IF ~Global("VP_Jan_EnchQuest","GLOBAL",1)~ THEN REPLY ~Jan is ready when you are, Xan.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1)  SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutJ01")~ EXIT
  IF ~Global("VP_Taffic_EnchQuest","GLOBAL",1)~ THEN REPLY ~Taffic is ready when you are, Xan.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1) SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutTf1")~ EXIT
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY #7932 DO ~SetGlobal("VP_My_Test","LOCALS",5)~ GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY ~I suppose it is as I expected. How students are expected to learn in a place with such dismal surroundings is beyond me. Both tasks need to be completed in order to pass <CHARNAME>, I am sorry.~
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~But surely having passed the first test, I can be given another attempt at the second?~ GOTO 37
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~I have proven capable in one task, is that not enough, Xan?~ GOTO 37
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~Come, Xan, who will know if you let me attempt the second task again?~ GOTO 37
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",1)~ THEN REPLY ~Nalia, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ EXTERN ~NALIAJ~ NEJ324
  IF ~Global("VP_Kachi_EnchQuest","GLOBAL",1)~ THEN REPLY ~Kachiko, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ EXTERN ~KACHIJ~ NEJ62
  IF ~Global("VP_Aerie_EnchQuest","GLOBAL",1)~ THEN REPLY ~Aerie, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ EXTERN ~AERIEJ~ NEJ226
  IF ~Global("VP_Jan_EnchQuest","GLOBAL",1)~ THEN REPLY ~Jan, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ EXTERN ~JANJ~ NEJ194
  IF ~Global("VP_Taffic_EnchQuest","GLOBAL",1)~ THEN REPLY ~Taffic, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ EXTERN ~TAFFICJ~ xantest2
END

IF ~~ THEN BEGIN 37
  SAY ~I am instructed to allow students only one attempt at these tasks. I am sorry but I don't make the rules, I only follow them. You should now return to your studies as it will be while before a tutor will be available to assess you again, as for myself, I have other thankless tasks I must see to. Good day.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT12")~ EXIT
END

IF WEIGHT #5 ~Global("VP_My_Test","LOCALS",1) !GlobalTimerExpired("VP_Xan_Waiting","GLOBAL") !RealGlobalTimerExpired("VP_Xan_Tests","GLOBAL") Alignment("TuEnch",NEUTRAL_GOOD)~ THEN BEGIN 38
  SAY ~I suppose it is as I expected. How students are expected to learn in a place with such dismal surroundings is beyond me. However I am afraid both tasks need to be completed in order to pass.~
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~Please, Xan, let me attempt the task once more. I will not fail again.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ GOTO 37
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~You cannot possibly fail me after only one attempt, Xan!~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ GOTO 37
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~Is that it, Xan? One attempt is hardly fair.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ GOTO 37
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",1)~ THEN REPLY ~Nalia, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ EXTERN ~NALIAJ~ NEJ324
  IF ~Global("VP_Kachi_EnchQuest","GLOBAL",1)~ THEN REPLY ~Kachiko, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ EXTERN ~KACHIJ~ NEJ62
  IF ~Global("VP_Aerie_EnchQuest","GLOBAL",1)~ THEN REPLY ~Aerie, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ EXTERN ~AERIEJ~ NEJ226
  IF ~Global("VP_Jan_EnchQuest","GLOBAL",1)~ THEN REPLY ~Jan, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ EXTERN ~JANJ~ NEJ194
  IF ~Global("VP_Taffic_EnchQuest","GLOBAL",1)~ THEN REPLY ~Taffic, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ EXTERN ~TAFFICJ~ xantest2
END

IF WEIGHT #6 ~Global("VP_My_Test","LOCALS",3) !GlobalTimerExpired("VP_Xan_Waiting","GLOBAL") Global("VP_Xan_Test2","GLOBAL",1)~ THEN BEGIN 39
  SAY ~What can I say? You have done well, it seems there are students capable of learning in this dismal place after all. Now you can go about your studies and I can return to whatever I was doing before this was thrust upon me. Good day, <CHARNAME>.~
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0) SetGlobal("VP_My_Test","LOCALS",4) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT11")~ EXIT
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",1)~ THEN DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0) SetGlobal("VP_My_Test","LOCALS",4) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutN02")~ EXIT
  IF ~Global("VP_Aerie_EnchQuest","GLOBAL",1)~ THEN DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0) SetGlobal("VP_My_Test","LOCALS",4) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutA02")~ EXIT
  IF ~Global("VP_Kachi_EnchQuest","GLOBAL",1)~ THEN DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0) SetGlobal("VP_My_Test","LOCALS",4) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutK02")~ EXIT
  IF ~Global("VP_Jan_EnchQuest","GLOBAL",1)~ THEN DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0) SetGlobal("VP_My_Test","LOCALS",4) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutJ02")~ EXIT
  IF ~Global("VP_Taffic_EnchQuest","GLOBAL",1)~ THEN DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0) SetGlobal("VP_My_Test","LOCALS",4) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutTf2")~ EXIT
END

IF WEIGHT #7 ~Global("VP_My_Test","LOCALS",3) !GlobalTimerExpired("VP_Xan_Waiting","GLOBAL") Global("VP_Xan_Test2","GLOBAL",0) Global("VP_Break_CharmTest","GLOBAL",0)~ THEN BEGIN 40
  SAY ~I suppose it is as I expected. How students are expected to learn in a place with such dismal surroundings is beyond me. Both tasks need to be completed in order to pass <CHARNAME>, I am sorry.~
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~But surely having passed the first test, I can be given another attempt at the second?~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ GOTO 37
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~I have proven capable in one task, is that not enough, Xan?~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ GOTO 37
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~Come, Xan, who will know if you let me attempt the second task again?~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ GOTO 37
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",1)~ THEN REPLY ~Nalia, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ EXTERN ~NALIAJ~ NEJ324
  IF ~Global("VP_Kachi_EnchQuest","GLOBAL",1)~ THEN REPLY ~Kachiko, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ EXTERN ~KACHIJ~ NEJ62
  IF ~Global("VP_Aerie_EnchQuest","GLOBAL",1)~ THEN REPLY ~Aerie, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ EXTERN ~AERIEJ~ NEJ226
  IF ~Global("VP_Jan_EnchQuest","GLOBAL",1)~ THEN REPLY ~Jan, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ EXTERN ~JANJ~ NEJ194
  IF ~Global("VP_Taffic_EnchQuest","GLOBAL",1)~ THEN REPLY ~Taffic, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ EXTERN ~TAFFICJ~ xantest2
END

IF WEIGHT #4 ~Global("VP_My_Test","LOCALS",1) !GlobalTimerExpired("VP_Xan_Waiting","GLOBAL") !RealGlobalTimerExpired("VP_Xan_Tests","GLOBAL") Alignment("TuEnch",NEUTRAL) NumInPartyGT(1)~ THEN BEGIN 41
  SAY ~Well I never expected, fate is indeed on your side, <CHARNAME>.~
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY ~Now take these scrolls of Eye Bite and I will summon four creatures for the would be mage to attempt each effect of the spell on. Are you set?~
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~I am.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1) SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT10")~ EXIT
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~Ready when you are, Xan.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1) SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT10")~ EXIT
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~Bring them on, Xan.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1) SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT10")~ EXIT
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",1)~ THEN REPLY ~Nalia is ready when you are, Xan.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1)  SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutN01")~ EXIT
  IF ~Global("VP_Kachi_EnchQuest","GLOBAL",1)~ THEN REPLY ~Kachiko is ready when you are, Xan.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1)  SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutK01")~ EXIT
  IF ~Global("VP_Aerie_EnchQuest","GLOBAL",1)~ THEN REPLY ~Aerie is ready when you are, Xan.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1)  SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutA01")~ EXIT
  IF ~Global("VP_Jan_EnchQuest","GLOBAL",1)~ THEN REPLY ~Jan is ready when you are, Xan.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1)  SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutJ01")~ EXIT
  IF ~Global("VP_Taffic_EnchQuest","GLOBAL",1)~ THEN REPLY ~Taffic is ready when you are, Xan.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",1)  SetGlobal("VP_My_Test","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutTf1")~ EXIT
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY #7932 DO ~SetGlobal("VP_My_Test","LOCALS",5)~ GOTO 36
END

IF ~~ THEN BEGIN 43
  SAY ~You'll have to excuse me but it always amazes me when someone feels they've actually learnt enough in this hapless place to pass an examination.~
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY ~Now I'll explain your tasks which let me quickly say were not set by myself. Around  here I just do as I am told.~
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 45
  SAY ~Please, you are wasting my time here, are you, or are you not ready?~
  IF ~~ THEN REPLY ~It looks like we are not Xan. The would be candidate has decided that he is not as ready as he first thought. I am sorry for taking up your time.~ GOTO 46
END

IF ~~ THEN BEGIN 46
  SAY ~(*Sighs*) Oh well, I can't say that I am surprised, I blame the tutors lack of discipline. There was a time that when a student presented himself for an assessment, he was committed to taking it.~
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY ~Nowadays the student gets to decide after the test is announced, it's no wonder the standards of passes are dropping and of course the oppressive atmosphere that continually hangs over this place doesn't help or inspire the students.~
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY ~If we have no further business then I will away to my other tiresome and thankless tasks. I have so many thankless tasks thrust upon me at the moment, I probably will not be able to set up another assessment. If you change your mind, I may still be here, or I may not. Good day to you.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",2) SetGlobalTimer("VP_Xan_Waiting","GLOBAL",ONE_DAY)~ EXIT
END //=> Test 1: Postponed.

IF WEIGHT #-1 ~Global("VP_My_Test","LOCALS",3) !GlobalTimerExpired("VP_Xan_Waiting","GLOBAL") Global("VP_Xan_Test2","GLOBAL",0) Global("VP_Break_CharmTest","GLOBAL",1)~ THEN BEGIN 49
  SAY ~I suppose it is as I expected. I had no choice but to interrupt the test and bring you back here, otherwise your wounds would be critical for you, and I would be blamed in your instant death. How students are expected to learn in a place with such dismal surroundings is beyond me. Both tasks need to be completed in order to pass, I am sorry.~
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~But surely having passed the first test, I can be given another attempt at the second?~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ GOTO 37
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~I have proven capable in one task, is that not enough, Xan?~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ GOTO 37
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",0) Global("VP_Kachi_EnchQuest","GLOBAL",0) Global("VP_Aerie_EnchQuest","GLOBAL",0) Global("VP_Jan_EnchQuest","GLOBAL",0) Global("VP_Taffic_EnchQuest","GLOBAL",0)~ THEN REPLY ~Come, Xan, who will know if you let me attempt the second task again?~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ GOTO 37
  IF ~Global("VP_Nalia_EnchQuest","GLOBAL",1)~ THEN REPLY ~Nalia, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ EXTERN ~NALIAJ~ NEJ324
  IF ~Global("VP_Kachi_EnchQuest","GLOBAL",1)~ THEN REPLY ~Kachiko, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ EXTERN ~KACHIJ~ NEJ62
  IF ~Global("VP_Aerie_EnchQuest","GLOBAL",1)~ THEN REPLY ~Aerie, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ EXTERN ~AERIEJ~ NEJ226
  IF ~Global("VP_Jan_EnchQuest","GLOBAL",1)~ THEN REPLY ~Jan, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ EXTERN ~JANJ~ NEJ194
  IF ~Global("VP_Taffic_EnchQuest","GLOBAL",1)~ THEN REPLY ~Taffic, that test was designed for students not fully fledged mages! Maybe you should take the time and get some extra education whilst we are here. You may be of more use to me then.~ DO ~SetGlobal("VP_Guards_Fix","GLOBAL",0)~ EXTERN ~TAFFICJ~ xantest2
END