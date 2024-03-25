BEGIN ~TuEzek~

IF ~NumTimesTalkedTo(0) IsGabber(Protagonist) OR(4)  Class(LastTalkedToBy,MAGE)  Class(LastTalkedToBy,MAGE_ALL)  Class(LastTalkedToBy,BARD)  Class(LastTalkedToBy,SORCERER)~ THEN BEGIN 0
  SAY ~Another mageling hoping to pass our little tests. I am Ezekiel and you are?~
  IF ~~ THEN REPLY ~I am <CHARNAME>. Ah yes, the tests. Tell me what you have thought up for me to do Ezekiel?~ DO ~SetGlobal("VP_Necro_Test","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY ~Greetings Ezekiel, I am <CHARNAME>. Can we dispense with the pleasantries and get straight to the testing?~ DO ~SetGlobal("VP_Necro_Test","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY ~I am <CHARNAME> and hopefully not a mageling for long when I pass this test of yours Ezekiel.~ DO ~SetGlobal("VP_Necro_Test","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY ~Nothing that is beyond your capability at this stage of your tuition I can assure you <CHARNAME>. Now before I tell you of it, it is necessary that I have the word of whoever is in charge here, that whatever transpires here will never reach the ears of others?~
  IF ~~ THEN REPLY ~Now this has the feel of a real challenge, you have my word.~ GOTO 12
  IF ~~ THEN REPLY ~Mystery and intrigue, you can count me in... and yes I promise, not a single word will pass my lips.~ GOTO 12
  IF ~~ THEN REPLY ~I take it this venture of yours is, shall we say... questionable?~ GOTO 27
  IF ~~ THEN REPLY ~I'll give you my word once I know what it is you want from me and not before!~ GOTO 28
END

IF ~~ THEN BEGIN 2
  SAY ~My, we are eager <CHARNAME>, but patience please. Before I continue I must have the word of whoever is in charge here, that whatever transpires here will never reach the ears of others?~
  IF ~~ THEN REPLY ~Now this has the feel of a real challenge, you have my word.~ GOTO 12
  IF ~~ THEN REPLY ~Mystery and intrigue, you can count me in... and yes I promise, not a single word will pass my lips.~ GOTO 12
  IF ~~ THEN REPLY ~I take it this venture of yours is, shall we say... questionable?~ GOTO 27
  IF ~~ THEN REPLY ~I'll give you my word once I know what it is you want from me and not before!~ GOTO 28
END

IF ~~ THEN BEGIN 3
  SAY ~That's what I like to see in a student, confidence. I am sure you will do well <CHARNAME>. However there is one small condition attached to this task, should you agree to it. I must have the word of whoever is in charge here, that whatever transpires here will never reach the ears of others?~
  IF ~~ THEN REPLY ~Now this has the feel of a real challenge, you have my word.~ GOTO 12
  IF ~~ THEN REPLY ~Mystery and intrigue, you can count me in... and yes I promise, not a single word will pass my lips.~ GOTO 12
  IF ~~ THEN REPLY ~I take it this venture of yours is, shall we say... questionable?~ GOTO 27
  IF ~~ THEN REPLY ~I'll give you my word once I know what it is you want from me and not before!~ GOTO 28
END

IF ~~ THEN BEGIN 4
  SAY ~We see no point in wasting magical energy on pretense when there is a suitable task that will serve the purpose just as well. I have such a task for you that fits that criteria quite nicely. It entails you retrieving a component widely used in necromantic spells, or at least used in some of the newer spells that I am devising.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~What I need is for you to fetch me a body of a recently deceased person. You may use whatever means are available to you to achieve your goal. What do you say <GABBER>, it will be more challenging than simple spell casting, but are you prepared to do it?~
  IF ~~ THEN REPLY ~I am, but where would I find a body here in the academy? I will not commit murder for you Ezekiel.~ GOTO 6
  IF ~~ THEN REPLY ~Are you asking me to commit murder here Ezekiel?~ GOTO 6
  IF ~~ THEN REPLY ~So it is murder, eh Ezekiel? Who do you want dead?~ GOTO 6
  IF ~~ THEN REPLY ~On second thoughts... I have no time for this Ezekiel, find someone else to do your dirty work.~ GOTO 8
  IF ~~ THEN REPLY ~Perhaps another time Ezekiel, I have other matters to attend to at this moment.~ GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY ~Murder will not be necessary. There is a trap door in the room adjacent to, and on the right of this one. It leads to the sewers, and from there you can, without fear of detection, safely, enter the mausoleum, where Halruaa inter it's senior mages if they so wish it on their death...~
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 7
  SAY ~Excellent <GABBER>, the secret door is in the room adjacent to, and on the right of this one... now go, I will be here awaiting your return.~
  IF ~True()~ THEN EXIT
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ224
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ200
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ166
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ NEJ312
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ NEJ255
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 70
  IF ~InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ NEJ119
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ NEJ199
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ NEJ333
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~AERIEJ~ NEJ235
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ331
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ156
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ634
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ 62
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 289
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ 16
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN EXTERN ~TAFFICJ~ necrtest
END

IF ~~ THEN BEGIN 8
  SAY ~I am sorry you feel that way <GABBER>, but let me wish luck in your studies.~
  IF ~~ THEN REPLY ~Thank you and farewell Ezekiel.~ DO ~SetGlobal("VP_Necro_Test","GLOBAL",2) EscapeArea()~ EXIT //Quest is lost to PC.
  IF ~~ THEN REPLY ~Wait, I suppose I must find time now for this task of yours Ezekiel.~ GOTO 7
END

IF ~~ THEN BEGIN 9
  SAY ~There are always substitutes <GABBER>, but I need to be sure my new spells work as they should before I start trying to substitute components. If you find this task so distasteful, then I suggest you return to your studies. I do not have the time to set another test for you as I have duties that will shortly take me away from the academy for a while. Farewell.~
  IF ~~ THEN REPLY ~Farewell Ezekiel.~ DO ~SetGlobal("VP_Necro_Test","GLOBAL",2) EscapeArea()~ EXIT //Quest is lost to PC.
  IF ~~ THEN REPLY ~If this is indeed my only chance for a while perhaps I can put my feelings aside for this once. It is not like the mage still inhabits the body, it is but a shell. I will make the attempt Ezekiel.~ GOTO 7
END

IF ~~ THEN BEGIN 10
  SAY ~No... and you look so capable as well. No matter, the nature of this particular test is, I assure you, beyond the capabilities of a single student at this stage of their tuition, but I am certain, working together as a group, you will succeed.~
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~Now before I tell you of it, it is necessary that I have the word of whoever is in charge here, that whatever transpires here will never reach the ears of others?~
  IF ~~ THEN REPLY ~Now this has the feel of a real challenge, you have my word.~ GOTO 12
  IF ~~ THEN REPLY ~Mystery and intrigue, you can count me in... and yes I promise, not a single word will pass my lips.~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY ~These tests are set to determine students spell casting and sometimes spell learning capabilities in their chosen specialist school. However, we of the necromancy school do things a little bit differently... some times.~
  IF ~~ THEN GOTO 4
END

IF ~Global("VP_Necro_Test","GLOBAL",6) !PartyHasItem("TuNeBody")~ THEN BEGIN 13
  SAY ~How disappointing. You made quite a noise there. It could have been embarrassing for us all had you been found in the mausoleum. Now I shall have to wait for another interment and you have to wait until I have the time to set a new task. Unfortunately that will not be for a while as I have work elsewhere. Farewell.~
  IF ~~ THEN REPLY ~Hey what's the big idea? We almost had your body for you when the guards entered! Now let us come back and bring the body for you!~ GOTO 14
  IF ~~ THEN REPLY ~Is that it Ezekiel? We have fought bravely so it should take no time at all to get your body if we go back now.~ GOTO 14
END

IF ~Global("VP_Necro_Test","GLOBAL",6) PartyHasItem("TuNeBody")~ THEN BEGIN 13a
  SAY ~How disappointing. You made quite a noise there. It could have been embarrassing for us all had you been found in the mausoleum.~
=
~Nevertheless, I see you brought the body, and it has not deteriorated at all, wonderful! You have done well. You may keep whatever else you may have found, trinkets are of no use to me, this is the real prize (*indicating the body*).~
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 14
  SAY ~I would gladly give you another chance <GABBER>, however a guard will have most assuredly been placed in the mausoleum until the clamour dies down. The body will be passed being of any use to me by that time. As I have said, I will have to wait for another interment. Now please go!~
  IF ~True()~ DO ~EscapeArea()~ EXIT
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 291
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ635
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 71
END

IF ~!Global("VP_Necro_Test","GLOBAL",0) !Global("VP_Necro_Test","GLOBAL",6)~ THEN BEGIN 15
  SAY ~You return, and do you have that which I sent you for?~
  IF ~PartyHasItem("TuNeBody")~ THEN REPLY ~I do Ezekiel. It is yours to do with as you please.~ GOTO 16
  IF ~PartyHasItem("TuNeBody")~ THEN REPLY ~That was some challenge but yes I have the body, looks to be in perfect health... oops... I meant perfect death or at least in pristine spell component condition.~ GOTO 16
  IF ~PartyHasItem("TuNeBody")~ THEN REPLY ~I do Ezekiel here take it before it starts stinking my pack out.~ GOTO 16
  IF ~!PartyHasItem("TuNeBody")~ THEN REPLY ~No Ezekiel, I have not retrieved the body yet.~ GOTO 14
END

IF ~~ THEN BEGIN 16
  SAY ~Excellent. I see the body has not deteriorated at all, wonderful! You have done well. You may keep whatever else you may have found, trinkets are of no use to me, this is the real prize (*indicating the body*).~
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY ~Mmm... I think Kalinor will be a lot more useful in death than he ever was in life. You have earned your prize, now go.~
  IF ~~ THEN DO ~SetGlobal("VP_Necro_Test","GLOBAL",6) AddexperienceParty(15500) TakePartyItem("TuNeBody") GiveItemCreate("shatbons",LastTalkedToBy,0,0,0) GiveItemCreate("mogansti",LastTalkedToBy,0,0,0) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY ~How disappointing! I shall have to wait for another interment and you have to wait until I have the time to set a new task. Unfortunately that will not be for a while as I have work elsewhere. Farewell.~
  IF ~True()~ DO ~EscapeArea()~ EXIT
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 291
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ635
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 71
END


IF ~NumTimesTalkedTo(0) !IsGabber(Protagonist)~ THEN BEGIN 19
  SAY ~(*Grin*) Well now... what have we here... another spy penetrating our academy! Clearly you are no student... still, if the students here are so caught up in their own self importance to recognise a conspiracy when it presents itself... that's hardly my concern. Now to the tests... who here leads this little group? I speak only with your leader.~
  IF ~~ THEN DO ~SetGlobal("VP_Know_Ezekiel","LOCALS",1)~ EXIT
END

IF ~NumTimesTalkedTo(0) IsGabber(Protagonist) !Class(LastTalkedToBy,MAGE) !Class(LastTalkedToBy,MAGE_ALL) !Class(LastTalkedToBy,BARD) !Class(LastTalkedToBy,SORCERER)~ THEN BEGIN 20
  SAY ~(*Grin*) Well now... what have we here... another spy penetrating our academy. Clearly you are no mage... (*makes a long pause and  gazes at you*)... but don't look so worried, you have nothing to fear from me. I am not about to reveal your little conspiracy as long as you agree to help me out with ah... shall we say, a rather delicate matter.~
  IF ~~ THEN DO ~SetGlobal("VP_Know_Ezekiel","LOCALS",2)~ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY ~It will be actually a test for your capabilities... I am Ezekiel and you are?~
  IF ~~ THEN REPLY ~Greetings Ezekiel, I am <CHARNAME>. Tell me, what test do you speak of?~ DO ~SetGlobal("VP_Necro_Test","GLOBAL",1)~ GOTO 24
  IF ~~ THEN REPLY ~I am <CHARNAME>, and I am not worried. I know my capabilities. Why do I need to prove myself to the likes of you?~ DO ~SetGlobal("VP_Necro_Test","GLOBAL",1)~ GOTO 24
  IF ~~ THEN REPLY ~I am not worried, nor do your threats frighten me mage!~ DO ~SetGlobal("VP_Necro_Test","GLOBAL",1)~ GOTO 25
  IF ~~ THEN REPLY ~I'll smash you over the floor, you bloody necromancer!~ DO ~SetGlobal("VP_HalruaaHostile","GLOBAL",1) Enemy()~ EXIT
END

IF ~Global("VP_Know_Ezekiel","LOCALS",1) Global("VP_Necro_Test","GLOBAL",0) !IsGabber(Protagonist)~ THEN BEGIN 22
  SAY ~I told you I'll speak only with your leader.~
  IF ~~ THEN EXIT
END

IF ~Global("VP_Know_Ezekiel","LOCALS",1) Global("VP_Necro_Test","GLOBAL",0) IsGabber(Protagonist)~ THEN BEGIN 23
  SAY ~(*Grin*) Well, well, well... So you are the infamous leader of this little group of spies... (*makes a long pause and gazes at you*)...  but don't look so worried, you have nothing to fear from me. I am not about to reveal your little conspiracy as long as you agree to help me out with ah... shall we say, a rather delicate matter.~
  IF ~~ THEN DO ~SetGlobal("VP_Know_Ezekiel","LOCALS",2)~ GOTO 21
END

IF ~~ THEN BEGIN 24
  SAY ~Normally the tests we set for students are to determine their spell casting and sometimes spell learning capabilities in their chosen specialist school. However, in your case I would prefer to set a test a little bit differently...~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 25
  SAY ~Believe me, my words aren't meant as a threat. I see they don't frighten you... you who don't belong to this world... to this time even. You see, I have more knowledge than you credit me with.~
  IF ~~ THEN REPLY ~Okay Ezekiel, I am <CHARNAME>, and I am carefully listening to you.~ GOTO 24
  IF ~~ THEN REPLY ~I'll smash you over the floor, you bloody necromancer!~ DO ~SetGlobal("VP_HalruaaHostile","GLOBAL",1) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY ~It was only yesterday that one Kalinor was laid to rest, and it seems a shame to let a perfectly good body go to waste when the owner no longer has need of it.~
  IF ~OR(4) !InParty("Sharteel") Dead("Sharteel") StateCheck("Sharteel",STATE_SLEEPING) Dead("Sharteel")~ THEN REPLY ~No problem, I will start immediately.~ GOTO 7
  IF ~OR(4) !InParty("Sharteel") Dead("Sharteel") StateCheck("Sharteel",STATE_SLEEPING) Dead("Sharteel")~ THEN REPLY ~As you say, this mage has no further use of his body. Why waste a valuable commodity. I will bring you this body.~ GOTO 7
  IF ~OR(4) !InParty("Sharteel") Dead("Sharteel") StateCheck("Sharteel",STATE_SLEEPING) Dead("Sharteel")~ THEN REPLY ~I cannot do this. The thought of what you intend doing with this body is abhorrent to me. Surely there are substitute components you can use for your spells?~ GOTO 9
  IF ~InParty("Sharteel") !Dead("Sharteel") !StateCheck("Sharteel",STATE_SLEEPING) !Dead("Sharteel")~ THEN REPLY ~No problem, I will start immediately.~ EXTERN ~SHARTJ~ ezequest1
  IF ~InParty("Sharteel") !Dead("Sharteel") !StateCheck("Sharteel",STATE_SLEEPING) !Dead("Sharteel")~ THEN REPLY ~As you say, this mage has no further use of his body. Why waste a valuable commodity. I will bring you this body.~ EXTERN ~SHARTJ~ ezequest1
  IF ~InParty("Sharteel") !Dead("Sharteel") !StateCheck("Sharteel",STATE_SLEEPING) !Dead("Sharteel")~ THEN REPLY ~I cannot do this. The thought of what you intend doing with this body is abhorrent to me. Surely there are substitute components you can use for your spells?~ EXTERN ~SHARTJ~ ezequest2
END

IF ~~ THEN BEGIN 27
  SAY ~Well, some might call it questionable yes, but I can assure you that the... ahem... person involved will not be hurt or endangered in any way and if you are quick enough nor should you. I will say no more until I have your promise of silence <CHARNAME>.~
  IF ~~ THEN REPLY ~I am not against breaking the odd rule now and again, so ok, you have my word.~ GOTO 12
  IF ~~ THEN REPLY ~Curiouser and curiouser! I have to say yes now even if it is only out of curiosity. You have my promise not a word will pass my lips.~ GOTO 12
  IF ~~ THEN REPLY ~I can see no harm in at least listening to what you have to say, you have my word.~ GOTO 12
  IF ~~ THEN REPLY ~You can have my word, but it does not come with a guarantee that I will agree to whatever it is you have in mind.~ GOTO 12
END

IF ~~ THEN BEGIN 28
  SAY ~Because of the nature of what I am asking of you, I will not divulge any part of it until you give me your promise of silence. However I can assure you that providing you move swiftly there is no danger to yourself or the... ahem... person involved.~
  IF ~~ THEN REPLY ~I can see no harm in at least listening to what you have to say, you have my word.~ GOTO 12
  IF ~~ THEN REPLY ~You can have my word, but it does not come with a guarantee that I will agree to whatever it is you have in mind.~ GOTO 12
  IF ~~ THEN REPLY ~This place is full of secrets! Ok necromancer, you have my word. What is it I am not going to be telling anyone?~ GOTO 12
  IF ~~ THEN REPLY ~In that case yes you have my word.(*For what it is worth*).~ GOTO 12
END