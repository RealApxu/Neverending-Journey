BEGIN ~TuMord~ 1

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~What have we here, more students who think they are ready to move up a grade? Well met my young friend, I am Mordecai, and you are?~
  IF ~~ THEN REPLY ~I am <GABBER>, well met Mordecai. What must I do in order to *move up a grade*?~ GOTO 3
  IF ~~ THEN REPLY ~Hello Mordecai, I am <GABBER>. I do not think... I know I am ready to move on, come tell me what must I do?~ GOTO 3
  IF ~~ THEN REPLY ~I have no interest in moving up a class or moving anywhere at the moment, Mordecai, so I guess you have no need to know my name.~ GOTO 1
  IF ~~ THEN REPLY ~I am <GABBER>. I would love to move on with my studies but I have other things on my mind at the moment Mordecai. Another time maybe.~ GOTO 2
  IF ~~ THEN REPLY ~I am <GABBER>, well met to you Mordecai. Whereas I have no aspirations myself to advance at the moment, one of my companions here has.~ GOTO 10
END

IF ~~ THEN BEGIN 1
  SAY ~No, I can see that you are not ready to progress. You seem to know very little of the ways of the Academy, this I find very suspicious. Come back when you have learnt some manners young <PRO_MANWOMAN>!~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT28")~ EXIT
END //Quest is lost to PC.

IF ~~ THEN BEGIN 2
  SAY ~You should reconsider <GABBER>, for I leave Halruaa very shortly to attend to another matter at hand and I may be away a while.~
  IF ~~ THEN REPLY ~That is unfortunate but I really cannot spare the time at this exact moment. Farewell Mordecai.~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT28")~ EXIT //Quest is lost to PC.
  IF ~~ THEN REPLY ~Perhaps if you tell me what is required I can then decide if I have time.~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Quite simple <GABBER>, I have devised a little test that will prove to me that you can cast spells safely and that you present no danger to yourself or those around you when wielding magic. Your success goes towards you eventually graduating with honour from Halruaa.~
  IF ~~ THEN REPLY ~To graduate from Halruaa is after all why I am here Mordecai, so let us begin your test.~ GOTO 5
  IF ~~ THEN REPLY ~A test you say. I like nothing more than to show off what I can do so let us have at it Mordecai.~ GOTO 5
  IF ~~ THEN REPLY ~I have nothing better to do for the moment. Tell me of this test that you have devised Mordecai?~ GOTO 5
  IF ~~ THEN REPLY ~I would like to know a little more of what is expected of me before I agree to any sort of test.~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~Whereas it is sensible to be cautious and find out what is required before committing  yourself, caution is not needed in these tests as I would never allow a student to come to any harm.~
  IF ~~ THEN REPLY ~I would feel a lot happier if you told what this little test involves and then I will decide on the risk to myself.~ GOTO 5
  IF ~~ THEN REPLY ~In that case I will at least listen to what this test you have thought up would have me do?~ GOTO 5
  IF ~~ THEN REPLY ~I am no stranger to danger, I just prefer to err on the side of caution. What does this test of yours entail?~ GOTO 5
  IF ~~ THEN REPLY ~Then tell me of your test.~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~Then without further delay I will set the tasks out for you <GABBER>, nothing that is beyond your capabilities I am sure.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~My tasks are such that they will test your ability to cast conjuration spells, and only conjuration spells, in two different situations.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~The first will be to cast a spell that could prevent offensive magic being cast against you. I will ask you to cast the spell *Power Word Silence* on the tutor standing near me. Her name is Ghiala, please meet her.~
  IF ~~ THEN EXTERN ~TUCONJ~ 1
END

IF ~~ THEN BEGIN 8
  SAY ~It will be to your advantage if you have the spell ready, but as I have specified which to use I will not penalise you if you do not have it, and the same goes for the second test which will be for you to summon a powerful ally, a creature from any of the elemental planes. Do you have any of the spells readied <GABBER>?~
  IF ~~ THEN REPLY ~I have both spells  Mordecai.~ GOTO 23
  IF ~~ THEN REPLY ~I know the spells Mordecai, but I have not had the opportunity to memorise them.~ GOTO 16
  IF ~~ THEN REPLY ~I do not have the required spells.~ GOTO 17
  IF ~~ THEN REPLY ~I have only the spell Power Word Silence.~ GOTO 18
  IF ~~ THEN REPLY ~I have only the spell for the elemental summoning.~ GOTO 18
  IF ~~ THEN REPLY ~This is beneath me Mordacai. It is no more than the games of children, I will take my leave of you conjurer.~ GOTO 19
  IF ~~ THEN REPLY ~I do not have time for this Mordecai, not at present anyway.~ GOTO 20
  IF ~~ THEN REPLY ~Whereas I have no aspirations myself to advance at the moment, one of my companions here has.~ GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY ~You can be assured she will take no action against you as she has taken part in many such tests. It will be to your advantage if you have the spell ready, but as I have specified which to use I will not penalise you if you do not have it, and the same goes for the second test which will be for you to summon a powerful ally, a creature from any of the elemental planes. Do you have any of the spells readied <GABBER>?~
  IF ~~ THEN REPLY ~I have both spells  Mordecai.~ GOTO 23
  IF ~~ THEN REPLY ~I know the spells Mordecai, but I have not had the opportunity to memorise them.~ GOTO 16
  IF ~~ THEN REPLY ~I do not have the required spells.~ GOTO 17
  IF ~~ THEN REPLY ~I have only the spell Power Word Silence.~ GOTO 18
  IF ~~ THEN REPLY ~I have only the spell for the elemental summoning.~ GOTO 18
  IF ~~ THEN REPLY ~This is beneath me Mordacai. It is no more than the games of children, I will take my leave of you conjurer.~ GOTO 19
  IF ~~ THEN REPLY ~I do not have time for this Mordecai, not at present anyway.~ GOTO 20
  IF ~~ THEN REPLY ~Whereas I have no aspirations myself to advance at the moment, one of my companions here has.~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY ~Then without further ado I will set the tasks. Then you can make this companion of yours known to me <CHARNAME> and we shall see what we shall see.~
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~My tasks are such that they will test your ability to cast conjuration spells, and only conjuration spells, in two different situations.~
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY ~I will ask you to cast the spell *Power Word Silence* on the tutor standing near me. Her name is Ghiala, please meet her.~
  IF ~~ THEN EXTERN ~TUCONJ~ 3
END

IF ~~ THEN BEGIN 13
  SAY ~The second test will be for you to summon and take control of a powerful ally, a creature from one of the elemental planes. As I have specified the spells you will be demonstrating I have been authorized to give you the appropriate scrolls for each test. Is your companion set?~
  IF ~Class(Player1,MAGE_ALL) !Kit(Player1,MAGESCHOOL_DIVINER)~ THEN REPLY ~I have decided to take the tests myself Mordecai.~ GOTO 23
  IF ~OR(2) !Class(Player1,MAGE_ALL) Kit(Player1,MAGESCHOOL_DIVINER)~ THEN REPLY ~Perhaps another time Mordecai, I have other matters to attend to at this moment.~ GOTO 20
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN REPLY ~Nalia is going to test her abilities.~ EXTERN ~NALIAJ~ NEJ329
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN REPLY ~Aerie is prepared to be assessed.~ EXTERN ~AERIEJ~ NEJ231
  IF ~InParty("Kachiko") !Dead("Kachiko")~ THEN REPLY ~Kachiko is ready.~ EXTERN ~KACHIJ~ NEJ67
  IF ~InParty("Jan") !Dead("Jan")~ THEN REPLY ~Jan, All I can say is I hope your cousin Willy isn't sitting too comfortably on his chair, because he is about to take a tumble when he hears you have passed this exam. After all, how can you possibly fail when Mordecai is giving you the spells.~ EXTERN ~JANJ~ NEJ197
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN REPLY ~Edwin, what luck! Little does Mordecai realise that he stands in the presence of one of the most illustrious... correction... *the* most illustrious of conjurers to walk Faerun. There's not a mage here at Halruaa who can hold a candle to your brilliance Edwin. I know its not much of a test for one such as yourself, but it will give you the opportunity to show him what being a conjurer really means and we will gain some valuable prizes at the same time.~ EXTERN ~EDWINJ~ NEJ196
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN REPLY ~Taffic, even you shouldn't be able to mess this one up seeing as how the spells are being handed to you.~ EXTERN ~TAFFICJ~ conjurer
END

IF ~~ THEN BEGIN 14
  SAY ~You can be assured she will take no action against you as she has taken part in many such tests.~
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 15
  SAY ~When you are ready Nalia.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Conjurer_Tests","GLOBAL",360) GiveItem("SCRL7P","Nalia") GiveItem("SCRL7Y","Nalia")~ EXIT
END //=> Test 1: To silence Ghiala

IF ~~ THEN BEGIN 16
  SAY ~It is commendable that you know the spells <GABBER>, but as I have an important duty elsewhere, I cannot allow you the time necessary to memorise them. You may take the scrolls I have here.~ // PC gains scrolls of Power Word Silence and Conjure Earth Elemental.
  IF ~~ THEN REPLY ~Thank you Mordecai. The female tutor to your left you say?~ GOTO 22
  IF ~~ THEN REPLY ~Thank you Mordecai, I cannot see this being a problem.~ GOTO 22
END

IF ~~ THEN BEGIN 17
  SAY ~Then you may take the scrolls I have here <GABBER>.~ // PC gains scrolls of Power Word Silence and Conjure Earth Elemental.
  IF ~~ THEN REPLY ~Thank you Mordecai. The female tutor to your left you say?~ GOTO 22
  IF ~~ THEN REPLY ~Thank you Mordecai, I cannot see this being a problem.~ GOTO 22
END

IF ~~ THEN BEGIN 18
  SAY ~It is commendable that you have at least one of the required spells <GABBER>, but as I have an important duty elsewhere, I cannot allow you the time necessary to memorise another one. You may take the scrolls I have here.~ // PC gains scrolls of Power Word Silence and Conjure Earth Elemental.
  IF ~~ THEN REPLY ~Thank you Mordecai. The female tutor to your left you say?~ GOTO 22
  IF ~~ THEN REPLY ~Thank you Mordecai, I cannot see this being a problem.~ GOTO 22
END

IF ~~ THEN BEGIN 19
  SAY ~Beneath you! You are a student and yet you say it is beneath you to take a tutor's test? If you wish to do well at Halruaa <GABBER> I suggest you learn some respect for those who are here to aid you in bettering yourself. Now, I have students who do wish to learn to see, so I bid you farewell.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT28")~ EXIT
END //Quest is lost to PC.

IF ~~ THEN BEGIN 20
  SAY ~As you wish <GABBER>,  but I cannot promise that I will be here should you change your mind. As I have said, I have obligations to Halruaa and they will shortly take me away Farewell.~
  IF ~~ THEN REPLY ~Farewell Mordecai.~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT28")~ EXIT //Quest is lost to PC.
  IF ~~ THEN REPLY ~If that is so, perhaps I should make the time for your tests now Mordecai.~ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY ~Then you know what is required of you <GABBER>, are you prepared?~
  IF ~~ THEN REPLY ~I have both spells  Mordecai.~ GOTO 23
  IF ~~ THEN REPLY ~I know the spells Mordecai, but I have not had the opportunity to memorise them.~ GOTO 16
  IF ~~ THEN REPLY ~I do not have the required spells.~ GOTO 17
  IF ~~ THEN REPLY ~I have only the spell Power Word Silence.~ GOTO 18
  IF ~~ THEN REPLY ~I have only the spell for the elemental summoning.~ GOTO 18
END

IF ~~ THEN BEGIN 22
  SAY ~Whenever you are ready <GABBER>, take your time.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Conjurer_Tests","GLOBAL",360) GiveItem("SCRL7P",Player1) GiveItem("SCRL7Y",Player1)~ EXIT
END //=> Test 1: To silence Ghiala

IF ~~ THEN BEGIN 23
  SAY ~At last a student comes prepared. You may proceed in your own time <GABBER>.~
  IF ~~ THEN REPLY ~Thank you Mordecai. The female tutor to your left you say?~ GOTO 22
  IF ~~ THEN REPLY ~Thank you Mordecai, I cannot see this being a problem.~ GOTO 22
END

IF ~~ THEN BEGIN 24
  SAY ~When you are ready Aerie.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Conjurer_Tests","GLOBAL",360) GiveItem("SCRL7P","Aerie") GiveItem("SCRL7Y","Aerie")~ EXIT
END //=> Test 1: To silence Ghiala

IF ~~ THEN BEGIN 25
  SAY ~When you are ready Kachiko.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Conjurer_Tests","GLOBAL",360) GiveItem("SCRL7P","Kachiko") GiveItem("SCRL7Y","Kachiko")~ EXIT
END //=> Test 1: To silence Ghiala

IF ~~ THEN BEGIN 26
  SAY ~When you are ready Jan.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Conjurer_Tests","GLOBAL",360) GiveItem("SCRL7P","Jan") GiveItem("SCRL7Y","Jan")~ EXIT
END //=> Test 1: To silence Ghiala

IF ~~ THEN BEGIN 27
  SAY ~When you are ready Edwin.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Conjurer_Tests","GLOBAL",360) GiveItem("SCRL7P","Edwin") GiveItem("SCRL7Y","Edwin")~ EXIT
END //=> Test 1: To silence Ghiala

IF ~Global("VP_My_Test","LOCALS",2) !RealGlobalTimerExpired("VP_Conjurer_Tests","GLOBAL")~ THEN BEGIN 28
  SAY ~I thank you yet again Ghiala.~
  IF ~~ THEN EXTERN ~TUCONJ~ 5
END

IF ~~ THEN BEGIN 29
  SAY ~(*Smiling back at Ghiala*) Ah but Ghiala, maybe I will have more sense than to volunteer as a guinea pig. Anyway, please return to your students now, farewell Ghiala.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",3)~ EXTERN ~TUCONJ~ 6
END

IF ~Global("VP_My_Test","LOCALS",4) !RealGlobalTimerExpired("VP_Conjurer_Tests","GLOBAL")~ THEN BEGIN 30
  SAY ~So <CHARNAME>, we still have one more task to see through.~
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY ~I must say that went very well. Ghiala's speeches are always long and I swear it is because she likes the sound of her own voice. I am sure her students would enjoy the short respite if you cast your spell in her class. Now onto your second casting, are you ready?~
  IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ THEN REPLY ~Sure, just say when Mordecai.~ GOTO 32
  IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ THEN REPLY ~I guess so.~ GOTO 32
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ330
END

IF ~~ THEN BEGIN 32
  SAY ~In your own time <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",5) RealSetGlobalTimer("VP_Conjurer_Tests","GLOBAL",360)~ EXIT
END //=> Test 2: To summon and control Air Elemental

IF ~Global("VP_My_Test","LOCALS",6) !RealGlobalTimerExpired("VP_Conjurer_Tests","GLOBAL")~ THEN BEGIN 33
  SAY ~Congratulations, you have successfully completed both tasks. I see in you the potential to become an accomplished conjurer, I will be watching your progress with keen interest as I have a feeling you will do great things in the future. I wish you luck in your studies here at Halruaa. Farewell.~
  IF ~~ THEN REPLY ~One moment Mordecai, what do you suggest we do with the big guy here, it was your idea to summon him?~ GOTO 34
  IF ~~ THEN REPLY ~And the Elemental... Mordecai? ~ GOTO 34
  IF ~~ THEN REPLY ~Then I guess I can leave our friend (*indicating the Elemental*)... with you Mordecai!~ GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY ~Mmm... I think the safest place for it would be here. Just get it to stand here and it should stay put until unsummoned and you can all be on your way. Farewell.~
IF ~~ THEN DO ~GiveItemCreate("InsectSw",Player1,1,0,0) AddexperienceParty(18000) EscapeArea()~ EXIT
END

IF ~!StateCheck("TuConj",STATE_SILENCED) OR(2)  Global("VP_My_Test","LOCALS",1)  Global("VP_My_Test","LOCALS",7)~ THEN BEGIN 35
  SAY ~Well, that did not go very well did it? (*Then smiling at Ghiala*) I see Ghiala is still doing what she likes doing best, listening to her own voice.~
  IF ~~ THEN EXTERN ~TUCONJ~ 7
END

IF ~~ THEN BEGIN 36
  SAY ~(*Smiling back at Ghiala*) Ah but Ghiala, maybe I will have more sense than to volunteer as a guinea pig. Anyway, please return to your students now, farewell Ghiala.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",8)~ EXTERN ~TUCONJ~ 6
END

IF ~Global("VP_My_Test","LOCALS",9)~ THEN BEGIN 37
  SAY ~I am sorry, a brave attempt on your part,  but to pass both tasks must be performed successfully. For now, you have a little extra time for further study before you can attempt another test. Farewell.~
  IF ~Global("VP_Nalia_ConQuest","GLOBAL",0) Global("VP_Kachi_ConQuest","GLOBAL",0) Global("VP_Aerie_ConQuest","GLOBAL",0) Global("VP_Jan_ConQuest","GLOBAL",0) Global("VP_Edwin_ConQuest","GLOBAL",0) Global("VP_Taffic_ConQuest","GLOBAL",0)~ THEN REPLY ~Please Mordecai, let me attempt the task once more. I will not fail again that you can be sure of.~ GOTO 38
  IF ~Global("VP_Nalia_ConQuest","GLOBAL",0) Global("VP_Kachi_ConQuest","GLOBAL",0) Global("VP_Aerie_ConQuest","GLOBAL",0) Global("VP_Jan_ConQuest","GLOBAL",0) Global("VP_Edwin_ConQuest","GLOBAL",0) Global("VP_Taffic_ConQuest","GLOBAL",0)~ THEN REPLY ~Surely you are not going to fail me on my first attempt?~ GOTO 38
  IF ~Global("VP_Nalia_ConQuest","GLOBAL",0) Global("VP_Kachi_ConQuest","GLOBAL",0) Global("VP_Aerie_ConQuest","GLOBAL",0) Global("VP_Jan_ConQuest","GLOBAL",0) Global("VP_Edwin_ConQuest","GLOBAL",0) Global("VP_Taffic_ConQuest","GLOBAL",0)~ THEN REPLY ~Is that it? I get only one shot at this test of yours?~ GOTO 38
  IF ~Global("VP_Nalia_ConQuest","GLOBAL",1)~ THEN EXTERN ~NALIAJ~ NEJ330
  IF ~Global("VP_Aerie_ConQuest","GLOBAL",1)~ THEN EXTERN ~AERIEJ~ NEJ232
  IF ~Global("VP_Kachi_ConQuest","GLOBAL",1)~ THEN EXTERN ~KACHIJ~ NEJ68
  IF ~Global("VP_Jan_ConQuest","GLOBAL",1)~ THEN EXTERN ~JANJ~ NEJ198
  IF ~Global("VP_Edwin_ConQuest","GLOBAL",1)~ THEN EXTERN ~EDWINJ~ NEJ197
  IF ~Global("VP_Taffic_ConQuest","GLOBAL",1)~ THEN EXTERN ~TAFFICJ~ conjure3
END

IF ~~ THEN BEGIN 38
  SAY ~One attempt is all you students allowed and as I have already told you, you need to succeed in both tasks! Now I have offered to test you again when I return so do as I say and return to your studies until then <CHARNAME>.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("VP_My_Test","LOCALS",10)~ THEN BEGIN 39
  SAY ~I am sorry my young scholar, but to pass you have to complete both tasks successfully. For now, you have a little extra time for further study before you can attempt another test. Farewell.~
  IF ~Global("VP_Nalia_ConQuest","GLOBAL",0) Global("VP_Kachi_ConQuest","GLOBAL",0) Global("VP_Aerie_ConQuest","GLOBAL",0) Global("VP_Jan_ConQuest","GLOBAL",0) Global("VP_Edwin_ConQuest","GLOBAL",0)~ THEN REPLY ~But can I at least not have another attempt at the last part, having past the first?~ GOTO 38
  IF ~Global("VP_Nalia_ConQuest","GLOBAL",0) Global("VP_Kachi_ConQuest","GLOBAL",0) Global("VP_Aerie_ConQuest","GLOBAL",0) Global("VP_Jan_ConQuest","GLOBAL",0) Global("VP_Edwin_ConQuest","GLOBAL",0)~ THEN REPLY ~I have proven capable in one task, is that not enough Mordecai?~ GOTO 38
  IF ~Global("VP_Nalia_ConQuest","GLOBAL",0) Global("VP_Kachi_ConQuest","GLOBAL",0) Global("VP_Aerie_ConQuest","GLOBAL",0) Global("VP_Jan_ConQuest","GLOBAL",0) Global("VP_Edwin_ConQuest","GLOBAL",0)~ THEN REPLY ~Come Mordecai, who will know if you let me attempt the second task again?~ GOTO 38
  IF ~Global("VP_Nalia_ConQuest","GLOBAL",1)~ THEN EXTERN ~NALIAJ~ NEJ330
  IF ~Global("VP_Aerie_ConQuest","GLOBAL",1)~ THEN EXTERN ~AERIEJ~ NEJ232
  IF ~Global("VP_Kachi_ConQuest","GLOBAL",1)~ THEN EXTERN ~KACHIJ~ NEJ68
  IF ~Global("VP_Jan_ConQuest","GLOBAL",1)~ THEN EXTERN ~JANJ~ NEJ198
  IF ~Global("VP_Edwin_ConQuest","GLOBAL",1)~ THEN EXTERN ~EDWINJ~ NEJ197
  IF ~Global("VP_Taffic_ConQuest","GLOBAL",1)~ THEN EXTERN ~TAFFICJ~ conjure3
END

//Taffic tests
IF ~~ THEN BEGIN taffic1
  SAY ~When you are ready Taffic.~
  IF ~~ THEN DO ~SetGlobal("VP_My_Test","LOCALS",1) RealSetGlobalTimer("VP_Conjurer_Tests","GLOBAL",360) GiveItem("SCRL7P","Taffic") GiveItem("SCRL7Y","Taffic")~ EXIT
END //=> Test 1: To silence Ghiala