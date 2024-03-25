BEGIN ~TAFFICP~

IF ~Global("KickedOut","LOCALS",1) !Global("VP_TafficQuest","GLOBAL",14) !Global("VP_TafficQuest","GLOBAL",15)~ THEN BEGIN 0
  SAY ~I see you have made your way back to me <CHARNAME>. What do you want with me now?~ [taffic13]
  IF ~~ THEN REPLY ~I was hoping to recruit you again to help with my quest Taffic. I really do have need of your unique talents. Will you think on joining with me once more?~ GOTO 6
  IF ~~ THEN REPLY ~I see you have not progressed very far in your search for greatness gnome. I see Taffic the forest gnome before me still and do my eyes deceive me, or have you gotten a bit shorter, eh gnome? A jest on my part, I come here to see if you are prepared follow me again. I could use your talents gnome. What do you say?~ GOTO 7
  IF ~~ THEN REPLY ~I have come to ask you to consider travelling with me again Taffic? I cannot promise to find that which you seek as I truly believe that it is an impossible dream that you follow. Still, stranger things than that have happened in this world that we inhabit, perhaps we will discover something as we travel the roads together. Will you join with me again Taffic?~ GOTO 7
END

IF ~Global("KickedOut","LOCALS",0) !Global("VP_TafficQuest","GLOBAL",15)~ THEN BEGIN 1
  SAY ~You are asking me to leave <CHARNAME>? I cannot believe that you no longer have a use for me. Is it because I am a gnome because if it is, I am not going to always be a gnome as you well know?~ [taffic09]
  IF ~~ THEN REPLY ~I am sorry Taffic I did not mean to upset you so. Of course I still have need of you. Come, forget my hasty words.~ GOTO 2
  IF ~OR(4) Global("VP_In_IWD_Part1","GLOBAL",1) Global("VP_InHalruaa","GLOBAL",1) Global("VP_OnIsland","GLOBAL",1) InWatchersKeep()~ THEN REPLY ~I do not have to give you a reason for my decision gnome. If I say it is time for you to leave, then it is time for you to leave.~ GOTO 3
  IF ~Global("VP_In_IWD_Part1","GLOBAL",0) Global("VP_InHalruaa","GLOBAL",0) Global("VP_OnIsland","GLOBAL",0) !InWatchersKeep()~ THEN REPLY ~I do not have to give you a reason for my decision gnome. If I say it is time for you to leave, then it is time for you to leave.~ GOTO 4
  IF ~Global("VP_In_IWD_Part1","GLOBAL",0) Global("VP_InHalruaa","GLOBAL",0) Global("VP_OnIsland","GLOBAL",0) !InWatchersKeep()~ THEN REPLY ~My decision has  nothing to do with you being a gnome Taffic. I no longer have need of your talents at the moment and that is the truth of it. I may need  you at some future time though, can you remain here where I can find you should that need arise Taffic?~ GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY ~Make up your mind <CHARNAME>. One minute it is 'Taffic go' and the next it is 'Taffic stay.' I will take it that this time you mean for us to continue on. So stop wasting your breath and mine and let us move on.~ [taffic11]
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~(*Angrily*) I am wasting my time here <CHARNAME>! I am no closer to achieving my full potential than I was when first we met! I will take my leave of you and continue my search alone. Goodbye <CHARNAME>.~ [taffic12]
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~What ever you say <CHARNAME>. I will remain here as I am sure you will change your mind given time to think. That is providing of course, that I do not discover a lead to follow that will bring me closer to my ultimate greatness.~ [taffic10]
  IF ~~ THEN REPLY ~If you feel that I am in anyway holding you back Taffic then I will not insist that you stay. I do not think that you will find your dream but I will wish you luck in your search. We may meet again Taffic. Farewell.~ GOTO 5
  IF ~~ THEN REPLY ~I am tired of hearing of this obsession of yours gnome! If you wish to carry on with your foolishness then by all means do so, I will not miss you. Farewell gnome.~ GOTO 5
  IF ~~ THEN REPLY ~Dreams are good Taffic but when they become an obsession, they start to become dangerous. Remember this as you search for yours Taffic.~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~Goodbye  <CHARNAME>.~ [taffic11]
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR2000",1420,2742,0)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~I had a feeling that I would be seeing you again <CHARNAME>. Took you long enough to get here. I have learnt all that I can here and I was about to move on, another day and you would have missed me. I am more than ready to leave with you now <CHARNAME>.~ [taffic14]
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Travelling alone has not been as fruitful as I had hoped it would be. As long as you understand that I have no intentions of giving up my dream <CHARNAME> and that I will continue the search no matter how long it may take me, then yes, I will lend my talents to your cause once more. Now that I have made that clear to you, maybe we can work to fulfil both of our quests. Come, time is wasting <CHARNAME>.~ [taffic15]
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~OR(2) Global("VP_TafficQuest","GLOBAL",14) Global("VP_TafficQuest","GLOBAL",15)~ THEN BEGIN umberhk1
  SAY ~I knew I could rely on you to seek me out again. A group that doesn't know to put its breeches on before its boots will always be in need of one who does. Unfortunately, I have had a spot of bother, still the sooner you sort this for me, the sooner we can leave.~
  IF ~~ THEN REPLY ~Taffic? What in blazes has happened to you gnome?~ GOTO umberhk2
  IF ~~ THEN REPLY ~(*Trying to stifle a laugh*) Back off you monster and tell me what you have done with my good friend Taffic?~ GOTO umberhk3
  IF ~~ THEN REPLY ~(*Trying to stifle a laugh*) You sound like Taffic, *sniff*, you smell like Taffic but you as sure as hell do not look like Taffic! What demon trickery is this?~ GOTO umberhk3
END

IF ~~ THEN BEGIN umberhk2
  SAY ~That damned wizard did this!~
  = ~He played on my good and generous nature, by stealing the demon blood that you so graciously obtained for me and then he laughed and turned me into this... this hideous monstrosity!~
  IF ~True()~ THEN GOTO umberhk3
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ tafficuh
  IF ~InParty("Kachiko") InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ tafficuh
  IF ~InParty("Yoshimo") InParty("Kachiko") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ tafficuh
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ tafficuh
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ tafficuh
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ tafficuh
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ tafficuh
  IF ~InParty("Nalia") !Dead("Nalia") OR(2) Global("EnteredAR1304","GLOBAL",1) !Global("NaliaKeepPlot","GLOBAL",0)~ THEN EXTERN ~NALIAJ~ tafficuh
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ tafficuh
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ tafficuh
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ tafficuh
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ tafficuh
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ tafficuh
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~VICONIJ~ tafficuh
  IF ~InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ tafficuh
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~AERIEJ~ tafficuh
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ tafficuh
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ tafficuh
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ tafficuh
END

IF ~~ THEN BEGIN umberhk3
  SAY ~Stop frelling around! You know who I am. That damned wizard did this to me! He took the demon blood that you so graciously obtained for me and turned me into this hideous monstrosity!~
  IF ~~ THEN REPLY ~(*Laughing*) He-he Taffic, you are certainly a much taller person than when I last saw you. I apologise for mocking your dream.~ GOTO umberhk4
  IF ~~ THEN REPLY ~(*Laughing*) He-he, what is this Taffic, you acheive your dream and you are still not content?~ GOTO umberhk4
  IF ~~ THEN REPLY ~You were right about one thing Taffic, after this day not many will look down on you again, he-he.~ GOTO umberhk4
  IF ~~ THEN REPLY ~Oh my, Taffic, what big... um... teeth you have!~ GOTO umberhk4
END

IF ~~ THEN BEGIN umberhk4
  SAY ~I fail to see why you find this so amusing <CHARNAME>. That Rhezon, curses on his name and may his soul rot in the abyss, pretended to misunderstand what I said.~
  = ~He thought I requested a body that people would be afraid to look upon for fear of losing their minds. He tricked me!~
  IF ~~ THEN REPLY ~I am sorry, I know I should not laugh Taffic but admit it, you brought this on yourself.~ GOTO umberhk5
  IF ~~ THEN REPLY ~Taffic look at yourself, did I not warn you that you risked the wrath of the gods if you persisted in tampering with their work?~ GOTO umberhk6
  IF ~~ THEN REPLY ~Look at what your insane notions have brought you to Taffic, you refused to listen to sense and now you must live with the consequences.~ GOTO umberhk7
  IF ~~ THEN REPLY ~Do not look to me for sympathy gnome, you have only yourself and your pride to blame for this. Learn to live with it is my advice.~ GOTO umberhk7
  IF ~~ THEN REPLY ~I have other business here gnome. Whereas it was amusing to run into you again, I am not here to help you.~ GOTO umberhk7
END

IF ~~ THEN BEGIN umberhk5
  SAY ~Brought it on myself! Why do you say that, the only mistake I made was in trusting that wizard?! Now are you going to help me or not?~
  IF ~~ THEN REPLY ~Of course I am going to help you Taffic, just tell me what I must do.~ GOTO umberhk8
  IF ~~ THEN REPLY ~I will help you Taffic, this time, but if your pursuit of your insane dream continues to hinder my own tasks you will find yourself on your own.~ GOTO umberhk8
  IF ~Gender(Player1,MALE)~ THEN REPLY ~I have no quarrel with this wizard, nor do I intend forcing one. You are on your own gnome and may this be a lesson to you! Farewell and luck in your new found destiny!~ GOTO umberhk9
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~I have no quarrel with this wizard, nor do I intend forcing one. You are on your own gnome and may this be a lesson to you! Farewell and luck in your new found destiny!~ GOTO umberhk0
END

IF ~~ THEN BEGIN umberhk6
  SAY ~This has nothing to do with the works of the gods! This is the work of that wizard, surely you have no objections to tampering with wizards work?~
  IF ~~ THEN REPLY ~Of course I am going to help you Taffic, just tell me what I must do.~ GOTO umberhk8
  IF ~~ THEN REPLY ~I will help you Taffic, this time, but if your pursuit of your insane dream continues to hinder my own tasks you will find yourself on your own.~ GOTO umberhk8
  IF ~Gender(Player1,MALE)~ THEN REPLY ~I have no quarrel with this wizard, nor do I intend forcing one. You are on your own gnome and may this be a lesson to you! Farewell and luck in your new found destiny!~ GOTO umberhk9
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~I have no quarrel with this wizard, nor do I intend forcing one. You are on your own gnome and may this be a lesson to you! Farewell and luck in your new found destiny!~ GOTO umberhk0
END

IF ~~ THEN BEGIN umberhk7
  SAY ~You can't expect me to exist in this... this misshapen, hulk of a body <CHARNAME>! Do not condemn me to such an ugly future.~
  IF ~Gender(Player1,MALE)~ THEN REPLY ~It is not me who has forced this on you Taffic, we are all slaves to the outcome of our actions and you must learn to live with yours. I can do nothing for you. Farewell Taffic.~ GOTO umberhk9
  IF ~Gender(Player1,MALE)~ THEN REPLY ~You condemned yourself to this existence gnome. Do not look to me for help, sort your own mess, if you can! Farewell and luck in your new found destiny!~ GOTO umberhk9
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~It is not me who has forced this on you Taffic, we are all slaves to the outcome of our actions and you must learn to live with yours. I can do nothing for you. Farewell Taffic.~ GOTO umberhk0
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~You condemned yourself to this existence gnome. Do not look to me for help, sort your own mess, if you can! Farewell and luck in your new found destiny!~ GOTO umberhk0
  IF ~~ THEN REPLY ~I did not mean to sound so cruel Taffic, of course I am going to help you if I can. Tell me what must be done?~ GOTO umberhk8
END

IF ~~ THEN BEGIN umberhk8
  SAY ~I knew you would not let a comrade down <CHARNAME>. We must hunt him down quickly, he is preparing to leave and as he is the only one that can undo what he has done, I warn you do not provoke him!~
  IF ~~ THEN DO ~SetGlobal("VP_TafficQuest","GLOBAL",17) SetGlobal("KickedOut","LOCALS",0) RealSetGlobalTimer("VP_Taffic_End_Time","GLOBAL",300) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN umberhk9
  SAY ~You refuse to help me! You ungrateful pool of slime. You really are your father's son! I will not forget this <CHARNAME> and you had best hope that our paths never cross again! (*Taffic turns and storms off.*)~
  IF ~~ THEN DO ~SetGlobal("VP_TafficQuest","GLOBAL",16) ActionOverride("Rhezon",EscapeArea()) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN umberhk0
  SAY ~You refuse to help me! You ungrateful pool of slime. You really are your father's daughter! I will not forget this <CHARNAME> and you had best hope that our paths never cross again! (*Taffic turns and storms off.*)~
  IF ~~ THEN DO ~SetGlobal("VP_TafficQuest","GLOBAL",16) ActionOverride("Rhezon",EscapeArea()) EscapeArea()~ EXIT
END