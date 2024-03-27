BEGIN ~Bartlemy~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~So Pung, let me see w... What in the blazes are these people doing here, Pung!?~
  IF ~~ THEN EXTERN ~TUPUNG~ 4
END

IF ~~ THEN BEGIN 1
  SAY ~Shut up Pung!~
  IF ~~ THEN DO ~FaceObject([PC])~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~(*Turning to you*)... I can only assume that you found your way here by following Pung. I am Bartlemy. Now, repay the courtesy and give me your name and explain what you are doing here?~
  IF ~~ THEN REPLY ~I am <CHARNAME>, and yes I followed Pung after one of his thieving sprees from Lavallin's room.~ GOTO 3
  IF ~~ THEN REPLY ~My name is <CHARNAME>, and I was asked by Lavallin to discover who was stealing from him.~ GOTO 3
  IF ~~ THEN REPLY ~I am <CHARNAME>. Did you seriously expect to go on stealing from Lavallin indefinitely?~ GOTO 3
  IF ~~ THEN REPLY ~My name, not that it is any of your business, is <CHARNAME>, and yes, I followed your goblin. I was about to make sure he never stole anything ever again when you appeared. Shall I continue?~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Let us get one thing straight here! My intention was not to steal. Although I see Pung has acquired several items that are not mine. He cannot seem to keep a picture of the item that I want him to retrieve in his head for longer than a few minutes and brings back what he hopes is right.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~My fault I suppose, I should have chosen a creature with a bit more intelligence. Aside from that, the item in question rightly belongs to me. I left it accidentally in the room Lavallin now uses, so you see, no theft is intended.~
  IF ~~ THEN REPLY ~You have the trappings of a mage, why not walk into the Academy and ask for it to be returned to you?~ GOTO 5
  IF ~~ THEN REPLY ~If it is truly yours, why the subterfuge in trying to reclaim it?~ GOTO 5
  IF ~~ THEN REPLY ~(*Scoffs*) How many times have I heard that one. You would not be skulking down here if you had a legitimate claim on this item.~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~I assure you the item is mine! There was an unfortunate accident some years ago and I was blamed. The mages of Halruaa banished me from the Academy and have set runes tunned to my person. If I set foot on Academy grounds it would mean certain death for me. These tunnels are about as far as I dare tread. Hence the use of the portal and Pung.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~(*Looks at you thoughtfully*)... Mmm. Maybe you would be interested in retrieving it for me?~
  IF ~~ THEN REPLY ~Lavallin mentioned an accident but would say no more. What happened?~ GOTO 7
  IF ~~ THEN REPLY ~Lavallin said five students were involved in that accident. Do they not have the same claim as you on this item, whatever it is?~ GOTO 7
  IF ~~ THEN REPLY ~I am more interested in what you were doing to cause the damage Lavallin mentioned.~ GOTO 7
  IF ~~ THEN REPLY ~Maybe, tell me more of that accident.~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~That accident was not my fault. I happened to be the only one in the room after the incident. We were experimenting with some research that we had been doing, and things went wrong. I was badly injured and my friends died. I was not able to retrieve my property. That is it, now, are you going to help me?~
  IF ~~ THEN REPLY ~What is stopping me from taking Lavallin's property and leaving him to deal with you?~ GOTO 8
  IF ~~ THEN REPLY ~Lavallin has told me I can keep whatever Pung has taken. What can you offer me if I do this for you?~ GOTO 8
  IF ~~ THEN REPLY ~I am not sure I believe you mage. Tell me why I should not just kill you and take what I came for?~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~I am sure you have noticed the only way you can leave is via the portal. I have my own method of exiting here. You can kill me and Pung which will give you the portal stone but the portal will not open if I am dead, a precaution I took in case someone should discover my whereabouts.~
  IF ~~ THEN REPLY ~I saw your method of entrance Bartlemy. How did you come to know of this place?~ GOTO 9
  IF ~~ THEN REPLY ~Your entrance did not escape my notice? How did you know that you would not teleport into solid rock when you first attempted it?~ GOTO 9
  IF ~~ THEN REPLY ~What is this place, Bartlemy? It does not seem to serve any useful purpose?~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY ~This place? It was part of the original sewer system out of Halruaa, collapsed completely many years ago. It took me a while to locate a space big enough for me to get into and one that was a safe distance from the boundaries of Halruaa.~
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY ~Then all it took was a few earth shattering spells, literally earth shattering! The rest of the tunnelling was done by Umberhulks, it is amazing what they can dig through!~
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~Once I got my bearings I sealed the entrance behind me, I can come and go as I please now. It did not take me long to set up the portal for Pung. So you see my friend, there really is no other exit for you!~
  IF ~~ THEN REPLY ~Then I have no choice. Know that I do not take kindly to being coerced into this! Tell me what it is I am looking for?~ GOTO 13
  IF ~~ THEN REPLY ~You leave me little choice, for now! What am I looking for mage!?~ GOTO 13
  IF ~~ THEN REPLY ~I will take the the chance that you are lying mage. One way or another I will take Pung's hoard.~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY ~Fool!! You think I lie? If you prefer to rot down here? Then so be it!~
  IF ~~ THEN DO ~DestroyItem("TUPOTND1")~ UNSOLVED_JOURNAL ~A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. I will not be coerced into doing anyone's bidding! I asked him to hand over whatever the goblin had stolen and the key to the portal... he then laughed and attacked, along with his goblin friend.~ EXTERN ~TUPUNG~ 5
END

IF ~~ THEN BEGIN 13
  SAY ~So glad you are going to be sensible, <CHARNAME>. The item you must find is a ring. A rare artifact known as a "Ring Of Might", only a few are known to exist.~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~The four elementalists that forged the original are long dead and took their secrets to the grave with them, but my companions and I researched tirelessly and uncovered those secrets. A wondrous piece of work and a very powerful weapon. When you have retrieved it for me I will share what I know of it's construction with you.~
  IF ~~ THEN REPLY ~What is to stop me escaping this place and keeping the ring for myself?~ GOTO 15
  IF ~~ THEN REPLY ~Now that I know what I am looking for, why should I return when I have it?~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~Because my friend, the ring is incomplete, it is quite useless unless I am permitted to finish my work on it. Believe me, you will not find another mage willing to touch it.~
  IF ~~ THEN DO ~FaceObject("Pung")~ GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~Pung, the wardstone, please.~
  IF ~~ THEN EXTERN ~TUPUNG~ 6
END

IF ~~ THEN BEGIN 17
  SAY ~No, I will take the pretty thing too, Pung, and yes I will send you home, soon.~
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY ~Here is the stone. The portal will open in the same place that you entered. Now, find my ring for me.~
  IF ~~ THEN UNSOLVED_JOURNAL ~A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. After agreeing to help the mage... as I see it he has left me very little choice if I want to get out of this place... he told me a little more of the item I was to find, a rare and very powerful elemental artifact known as a ring of might. If I manage to find it he'll share with me the secrets of its construction... I am not so sure that's a good idea if his last attempt is anything to go by.~ DO ~SetGlobal("VP_Delrisia_Letter","GLOBAL",1)~ EXIT
END

IF WEIGHT #-1 ~!NumTimesTalkedTo(0) Global("VP_Lavallins_Plot","GLOBAL",9)~ THEN BEGIN 19
  SAY ~Well <CHARNAME>... have you found my ring?~
  IF ~PartyHasItem("DeLetter")~ THEN REPLY ~(*Thrusting the note at him*) I found no ring. Only this note. Here read it.~ GOTO 20
  IF ~PartyHasItem("DeLetter")~ THEN REPLY ~(*Thrusting the note at him*) Here, I found only this note. It mentions you by name, who is Delrysia?~ GOTO 20
  IF ~PartyHasItem("DeLetter")~ THEN REPLY ~(*Thrusting the note at him*) No, it looks like someone called Delrysia got there before us. She left you this note, here, what does she want?~ GOTO 20
  IF ~PartyHasItem("DeLetter")~ THEN REPLY ~(*Thrusting the note at him*) Explain this mage?~ GOTO 20
  IF ~!PartyHasItem("DeLetter") Global("VP_Delrisia_Letter","GLOBAL",1)~ THEN REPLY ~I found no ring.~ GOTO 38
  IF ~!PartyHasItem("DeLetter") Global("VP_Delrisia_Letter","GLOBAL",1)~ THEN REPLY ~I am still looking for it.~ GOTO 38
  IF ~!PartyHasItem("DeLetter") Global("VP_Delrisia_Letter","GLOBAL",2)~ THEN REPLY ~Sorry Bartlemy, I searched Lavallin's room and I found no ring.~ GOTO 40
  IF ~!PartyHasItem("DeLetter") Global("VP_Delrisia_Letter","GLOBAL",2)~ THEN REPLY ~I turned Lavallin's room upside down and inside out. Supposing that your ring was there, it certainly isn't now.~ GOTO 40
  IF ~!PartyHasItem("DeLetter") Global("VP_Delrisia_Letter","GLOBAL",2)~ THEN REPLY ~No I haven't. If that was indeed where you lost it, then someone else has obviously beaten us to it... Lavallin himself maybe?~ GOTO 41
  IF ~!PartyHasItem("DeLetter") Global("VP_Delrisia_Letter","GLOBAL",3)~ THEN REPLY ~No, sorry... no ring but I did speak to Lavallin again and he told me of Delrysia, and how she disappeared after the accident. Perhaps she took it with her.~ GOTO 45
  IF ~!PartyHasItem("DeLetter") Global("VP_Delrisia_Letter","GLOBAL",3)~ THEN REPLY ~I turned Lavallin's room upside down and inside out.  Supposing that your ring was there, it certainly isn't now. Lavallin did say that another of your friends, Delrysia, also survived the accident. What else haven't you told me?~ GOTO 45
  IF ~!PartyHasItem("DeLetter") Global("VP_Delrisia_Letter","GLOBAL",3)~ THEN REPLY ~No I haven't. If that was indeed where you lost it, then someone else has obviously beaten us to it... uh... Delrysia maybe?~ GOTO 45
END

IF ~~ THEN BEGIN 20
  SAY ~Curses! Damn woman! I should have guessed that she would be skulking about somewhere in the shadows. My guess is the sewers, it is the only place fit for her now!~
  IF ~~ THEN REPLY ~It appears I have only half of the tale here. I think it is time to hear the whole of it?~ GOTO 21
  IF ~~ THEN REPLY ~Why would this Delrysia be, skulking, as you put it, in the sewers?~ GOTO 21
  IF ~~ THEN REPLY ~How does this Delrysia know of this ring of yours?~ GOTO 21
  IF ~~ THEN REPLY ~How does this woman come to have 'your' ring mage? You will tell me of her and anything else you have left out or... need I finish?~ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY ~Oh, I will tell you of Delrysia! It was she who caused the accident! It was her that insisted we could make the ring even more powerful by adding the undead component to our forging and it is because of her three of us died that day. I had no idea where she scurried off to leaving me to shoulder the blame.~
  IF ~~ THEN DO ~SetGlobal("VP_Meeting_Delrysia","GLOBAL",1)~ GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY ~(*Spitting out the next two words*)... *Necromatic Bitch*... She will get nothing from me but death! I am prepared to throw in a couple of my own magical items if you will rid me of that woman once and for all.~
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 69
  IF ~OR(2) !InParty("Hrothgar") Dead("Hrothgar")~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY ~You will find a few entrances to the sewers somewhere in the Academy grounds, and I suspect, also in the Academy itself, that would explain how she disappeared so quickly.~
  IF ~~ THEN REPLY ~I will go and confront this Delrysia at once.~ DO ~SetGlobal("VP_Lavallins_Plot","GLOBAL",10)~ GOTO 36
  IF ~CheckStatGT(LastTalkedToBy,14,WIS)~ THEN REPLY ~I am beginning to doubt the existence of such an artifact. Perhaps your intention was for me to find and kill this Delrysia for you from the start. I will have no part in murder, Bartlemy! I will take what I came for and leave.~ GOTO 24
  IF ~~ THEN REPLY ~This is becoming tedious. I prefer to take the things that Pung stole and get back to my own business.~ GOTO 24
  IF ~~ THEN REPLY ~No more, Bartlemy! Just give me what I came for!~ GOTO 24
  IF ~~ THEN REPLY ~I will have no part in it! I will take what I came for and leave.~ GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY ~You will take nothing from here until you have completed our bargain, <CHARNAME>. Do not forget, that if you attempt anything by force which results in my death, your way out will be permanently closed!~
  IF ~~ THEN REPLY ~I will do this for you, Bartlemy, but be warned, when I return be sure to keep your back against that wall there!~ DO ~SetGlobal("VP_Lavallins_Plot","GLOBAL",10) SetGlobal("VP_Meeting_Delrysia","GLOBAL",1)~ GOTO 36
  IF ~~ THEN REPLY ~I will do this, but no more, Bartlemly! When I return it will be the end of our dealings.~ DO ~SetGlobal("VP_Lavallins_Plot","GLOBAL",10) SetGlobal("VP_Meeting_Delrysia","GLOBAL",1)~ GOTO 36
  IF ~~ THEN REPLY ~I am through with your threats, mage. I am returning to Lavallin, he can deal with you! Just handover what I came for!~ GOTO 37
END

IF WEIGHT #-2 ~Global("VP_Lavallins_Plot","GLOBAL",10) !Global("VP_Meeting_Delrysia","GLOBAL",2)~ THEN BEGIN 25
  SAY ~I trust you have my ring this time, <CHARNAME>?~
  IF ~GlobalLT("VP_Meeting_Delrysia","GLOBAL",2)~ THEN REPLY ~I found no ring.~ GOTO 38
  IF ~Global("VP_Meeting_Delrysia","GLOBAL",4)~ THEN REPLY ~No. I have spoken with Delrysia and she tells a different story to you. She lays the blame at your feet.~ GOTO 28
  IF ~Global("VP_Meeting_Delrysia","GLOBAL",4)~ THEN REPLY ~No. Delrysia refuses to surrender the ring unless you free her from her undead state, which, incidently, she blames you for.~ GOTO 28
  IF ~Global("VP_Meeting_Delrysia","GLOBAL",4)~ THEN REPLY ~No, I am here for the truth! Not that I expect to hear it from you, but unless I get some answers you will both pay for wasting my time!~ GOTO 28
END

IF WEIGHT #-3 ~Global("VP_Lavallins_Plot","GLOBAL",10) Global("VP_Meeting_Delrysia","GLOBAL",2)~ THEN BEGIN 26
  SAY ~At last, <CHARNAME>. I was beginning to think you had reneged on our little deal. I trust you have my ring with you?~
  IF ~~ THEN REPLY ~No, necromancer, I do not. You left Delrysia to her undead existence now I plan to just leave you dead!~ GOTO 27
  IF ~~ THEN REPLY ~No, more necromancer, Delrysia is dead and she did not have the ring. Therefore I intend to take my reward out of your hide!~ GOTO 27
  IF ~~ THEN REPLY ~Delrysia did not have your ring! You have wasted my time. My patience is gone and so has my reason!~ GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY ~(*Laughs*)... What of your way home, <CHARNAME>? Kill me and you remain here forever. Be thankful that I allow you to keep the ward stone so that you may leave. Something you would be wise to do before I change my mind.~
  IF ~~ THEN REPLY ~I will take the risk that is another of your lies!~ GOTO 12
  IF ~~ THEN REPLY ~I think not, necromancer. Even if what you say is true, I shall delight in sending you to meet your God ahead of me!~ GOTO 12
  IF ~~ THEN REPLY ~I do not fear death, do you necromancer?~ GOTO 12
END

IF ~~ THEN BEGIN 28
  SAY ~I asked you to kill her, not speak to her! Do you usually speak with creatures such as she before you kill them?~
  IF ~~ THEN REPLY ~So, you lied. You did know what happened to her! How much more of what you have told me are also lies? If necessary, I will force the truth from you mage!~ GOTO 29
  IF ~~ THEN REPLY ~I am not sure that I trust either of you, but it appears you knew of Delrysia and were prepared to leave her to her fate, but when you discovered she had your ring, you thought to use me to kill her for you. I will not be exploited by the likes of you!~ GOTO 29
  IF ~~ THEN REPLY ~You fiend! You are despicable! You knew all along about Delrysia and did nothing. I thought you once called her friend.~ GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY ~(*Laughs*)... Yes I knew of Delrysia. I saw her scurry away before I lost consciousness, and I have the means to free her. I thought to bargain with her to help me finish the ring. I had an idea that she would stay close to the Academy after the accident, knowing I would return for it.~
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY ~When you brought me that note I guessed where she had to be. As I said it was the only place fit for her given her present condition. It seemed so much simpler to use you to kill her for me.~
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY ~There is no proof which component caused the accident, my contribution would have made the ring more powerful than the original rings ever were and now, I intend to finish what we five started.~
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY ~However, Delrysia wishes to bargain does she! I will give you the potion, but only if you give me your word that you will give her the potion after she agrees to help me restore the ring and not before?~
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY ~The only other way you will get the potion Delrysia needs is to kill me and I do not think that you are willing to chance that I lie about the portal. So, do as you are told, <CHARNAME>, and retrieve... my... ring!~
  IF ~~ THEN REPLY ~I would rather take the risk that you lie than deal any further with you Bartlemy! Give me the potion or I end it here!~ DO ~SetGlobal("VP_Lavallins_Plot","GLOBAL",11)~ GOTO 39
  IF ~~ THEN REPLY ~That is where you are wrong mage. I will have that potion for Delrysia, then my association with you ends!~ DO ~SetGlobal("VP_Lavallins_Plot","GLOBAL",11)~ GOTO 39
  IF ~~ THEN REPLY ~I will not be ordered by the likes of you Bartlemy! Enjoy the next breath you take for it will be your last!~ DO ~SetGlobal("VP_Lavallins_Plot","GLOBAL",11)~ GOTO 39
  IF ~~ THEN REPLY ~I will have your hide before this business is done necromancer. I will take your potion to Delrysia, but my price has just gone up for doing so. I will see you when I return.~ GOTO 49
END

IF WEIGHT #-3 ~GlobalGT("VP_Restore_Ring","GLOBAL",0)~ THEN BEGIN 34
  SAY ~At last, <CHARNAME>. I was beginning to think you had reneged on our little deal. I trust you have my ring with you?~
  IF ~~ THEN REPLY ~I do and Delrysia is free. I am done with you both... but not before you tell me how I go about constructing one of these for myself?~ GOTO 35
  IF ~~ THEN REPLY ~I do and for the trouble both you and that wretched Delrysia has caused me, I have decided to keep it. Did you seriously think you could hold me to our bargain? You have no idea who it is you face necromancer!~ GOTO 50
  IF ~~ THEN REPLY ~It is over Bartlemy, I suggest you hand over Lavallin's property and get out of here whilst you still can.~ GOTO 50
END

IF ~~ THEN BEGIN 35
  SAY ~Ho... not so fast my young friend. Let me see my ring first and then I'll give you the reward you are due.~
  IF ~~ THEN REPLY ~What kind of an idiot do you take me for necromancer? Give me what you promised or else I am taking the ring with me out of here.~ GOTO 50
  IF ~~ THEN REPLY ~I think I have the advantage here. You either give me what you promised or I take the ring and your life in payment for my troubles.~ GOTO 50
  IF ~~ THEN REPLY ~Here... I think you'll find that this is your ring.~ GOTO 51
END

IF ~~ THEN BEGIN 36
  SAY ~Whatever <CHARNAME>... just be sure that when next we meet you have my ring.~
  IF ~~ THEN UNSOLVED_JOURNAL ~A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this cursed ring... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia's insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.~ EXIT
END

IF ~~ THEN BEGIN 37
  SAY ~Fool!! You think I lie? If you prefer to rot down here? Then so be it!~
  IF ~~ THEN DO ~DestroyItem("TUPOTND1")~ UNSOLVED_JOURNAL ~A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia's insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.~ EXTERN ~TUPUNG~ 7
END

IF ~~ THEN BEGIN 38
  SAY ~Then why do you waste my time? Please do as you are told, <CHARNAME>, and retrieve... my... ring!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39
  SAY ~Fool!! You think I lie? If you prefer to rot down here? Then so be it!~
  IF ~~ THEN SOLVED_JOURNAL ~A Ring Of Might.

I have solved the problem of Lavallin's thief and in doing so I have discovered a partially constructed, and potentially powerful artifact known as a ring of might. Unfortunately the only clue I have as to how to go about restoring the ring, lie in the notes I took from the body of one of the mages instrumental in its construction... a necromancer who went by the name of Bartlemy. I can just make out the symbols of the four elements in his writings and the name Lhillias. Perhaps I should seek her out and see what she knows of Bartlemy and his ring. Lavallin was most generous in his gratitude and if I can restore the ring of might it will have been a most profitable quest indeed.~ EXTERN ~TUPUNG~ 7
END

IF ~~ THEN BEGIN 40
  SAY ~What! It has to be there... stop wasting my time... go and look again! Properly this time and don't return without my ring!~
  IF ~~ THEN REPLY ~It's not there. I've already said I have turned the room inside out looking for the darn thing! Maybe Lavallin himself has found it.~ GOTO 41
  IF ~~ THEN REPLY ~I assure you, my search was thorough... it isn't there. Perhaps Lavallin has it seeing as it is now his room.~ GOTO 41
  IF ~~ THEN REPLY ~I'll make one more search and if it doesn't turn up then our deal is off wizard.~ GOTO 42
  IF ~~ THEN REPLY ~I've already told you... it's not there! Go search yourself if you don't believe me, I have wasted enough of my time. Just give me Lavallin's property and I'll be gone from here.~ GOTO 43
END

IF ~~ THEN BEGIN 41
  SAY ~Then I suggest you make your way back to him and do what ever is necessary to relieve him of it! Now begone... I don't expect to see your face again unless it's to bring me my ring!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42
  SAY ~Then I suggest you be quick about it, I don't have an infinite amount of patience! Now begone... I don't expect to see your face again unless it's to bring me my ring!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43
  SAY ~(*Laughs*) Do you think I am about to let you renege on our deal and walk out of here? Oh no my friend, there is no way I am giving you the opportunity to run to the wizards above and tell them my whereabouts!~
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY ~You'll have to kill me before I allow you take anything from here... ah... but then if you kill me your fate is also sealed or had you forgotten that <CHARNAME>?~
  IF ~~ THEN REPLY ~I will take the chance that you are lying! I have the portal stone, the choice is yours. You can hand over Pung's hoard and keep your life, or die trying to stop me taking it. Which will it be wizard?~ GOTO 12
  IF ~~ THEN REPLY ~Damn you Bartlemy... I'll make one more search and if it doesn't turn up then our deal is off!~ GOTO 42
END

IF ~~ THEN BEGIN 45
  SAY ~Delrysia... it never entered my head that she would risk showing her face in the academy again! Who else could have... why the conniving bitch... I bet she snook back and pinched it whilst I was convalescing!~
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 46
  SAY ~Well, she's going to be sorry she stole from me, and you <CHARNAME>, if you want to hold on to that portal stone and get out of here alive, are going to be the one to make her sorry.~
  IF ~~ THEN REPLY ~Now hold on a minute, I haven't agreed to anything yet.~ GOTO 47
  IF ~~ THEN REPLY ~First I'll know more about Delrysia and then I'll decide what I do about her... not you!~ GOTO 47
  IF ~~ THEN REPLY ~Hold on one darned minute... it seems to me that Delrysia has as much a claim on this ring as you do.~ GOTO 47
  IF ~~ THEN REPLY ~I will have no part in it! I will take what I came for and leave.~ GOTO 24
  IF ~~ THEN REPLY ~No more Bartlemy! Just give me what I came for!~ GOTO 24
END

IF ~~ THEN BEGIN 47
  SAY ~Delrysia... you want to know about Delrysia? Oh, I'll tell you about Delrysia! It was she who caused the accident! It was she who insisted we could make the ring even more powerful by adding the undead component to our forging, and it was through her that three of my friends died that day. I had no idea where she scurried off to leaving me to shoulder the blame.~
  IF ~~ THEN DO ~SetGlobal("VP_Meeting_Delrysia","GLOBAL",1)~ GOTO 22
END

IF ~~ THEN BEGIN 48
  SAY ~I should have guessed that she would be skulking about somewhere in the shadows. My guess is the sewers, it is the only place fit for her now!~
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 49
  SAY ~Take my ring from that creature and then you shall have your reward... now go!~
  IF ~~ THEN DO ~SetGlobal("VP_Lavallins_Plot","GLOBAL",12) GiveItem("TuPotnD1",Player1)~ EXIT
END

IF ~~ THEN BEGIN 50
  SAY ~(*Laughs*) You have the gall to threaten me mageling, and what of your way home? Kill me and you remain here forever. Give me my ring and be thankful that I allow you to keep the ward stone so that you may leave. Something you would be wise to do before I change my mind.~
  IF ~~ THEN REPLY ~I will take the risk that is another of your lies!~ GOTO 37
  IF ~~ THEN REPLY ~I think not, necromancer. Even if what you say is true, I shall delight in sending you to meet your God ahead of me!~ GOTO 37
  IF ~~ THEN REPLY ~I do not fear death, do you necromancer?~ GOTO 37
END

IF ~~ THEN BEGIN 51
  SAY ~Oh yes... at last, my life's work will be finished. Soon all here at Halruaa will have to bow to my genius when it is told how the great Bartlemy has achieved what no other has for centuries... the construction of a great ring of might.~
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
  SAY ~Halruaa would have been hailed as the academy where true genius is found. Instead, those pompous mages above, will have made it a laughing stock when word gets out how they banished a truly great mage. I thank you for your help <CHARNAME>, I couldn't have done it without you.~
  IF ~~ THEN DO ~EraseJournalEntry(%Lavallin's Thief.

I have agreed to help a mage named Lavallin solve his problem of disappearing items. So, after casting a spell to make the room appear empty and warning me not to touch anything, he left to attend to a more urgent matter he said. I can't help but wonder if that matter is anything to do with my quest here.%) EraseJournalEntry(%Lavallin's Thief.

I declined to help a mage named Lavallin search for his petty thief. I really do not have the time to let myself be side tracked... the quicker I can find the information that I came here for, the quicker I can do the necessary and get back to my search for Imoen and Irenicus.%) EraseJournalEntry(%Lavallin's Thief.

I didn't have to wait long to discover how Lavallin's thief was entering his room... a portal opened and I heard someone searching about the room but he must have been cloaked by some invisibility enchantment for I could see no one. After telling Lavallin what I had discovered he offered to make it worth my while if I was to continue my search. I have agreed to continue my investigation for Lavallin and must now wait for the portal to open again.%) EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy's necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. One of the two was lying, that was clear, but I had been given the run around long enough. I decided to end my involvement with them once and for all and get on with my own concerns.%) EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy's necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. I gave Bartlemy's potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy's ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%) EraseJournalEntry(%A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy's necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state.%) EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. After agreeing to help the mage... as I see it he has left me very little choice if I want to get out of this place... he told me a little more of the item I was to find, a rare and very powerful elemental artifact known as a ring of might. If I manage to find it he'll share with me the secrets of its construction... I am not so sure that's a good idea if his last attempt is anything to go by.%) EraseJournalEntry(%A Ring Of Might.

I gave Bartlemy's potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy's ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.%) EraseJournalEntry(%A Ring Of Might.

Bartlemy has told me of the accident that occurred whilst he and four of his friends were experimenting with some research. It seems he was the only one to survive the explosion and was banned from the academy. To set foot on Halruaa grounds would be instant death for him, hence the use of the goblin and the portal to retrieve his item. He has asked me to help him in his search in return for the way out of this place... whereas he can teleport in and out, the portal is my only escape. He assures me that his death would instantly seal the exit for good. I will not be coerced into doing anyone's bidding! I asked him to hand over whatever the goblin had stolen and the key to the portal... he then laughed and attacked, along with his goblin friend.%) EraseJournalEntry(%A Ring Of Might.

The search of Lavallin's room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia's insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%) EraseJournalEntry(%A Ring Of Might.

The search of Lavallin's room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia's insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%) EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this cursed ring... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia's insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring.%) EraseJournalEntry(%A Ring Of Might.

The search for the "Ring of Might" revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia's insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%) EraseJournalEntry(%A Ring Of Might.

The search of Lavallin's room revealed yet another interested party in this ring of might... one Delrysia. Damn these mages... how is it I always end up embroiled in the petty squabbles of others! I will have the truth out of that mage... one way or another! Bartlemy was adamant that it was this Delrysia's insistence to add a necromantic component to the ring which caused the explosion, and that she herself is now hiding in the sewers... *the only place fit for her now* were his words. Now I wonder what he meant by that? The mage has now offered me further inducement to enter the sewers, confront Delrysia and force her to return his ring. Is there any truth in the words of this mage I asked myself? Or was I once again being used as a pawn in the power struggles of others? Whatever the truth I decided to have no further part in this quest and when asked to return all that his goblin had stolen, Bartlemy merely laughed and attacked me, along with his goblin friend.%) AddXPObject(Player1,45500) AddXPObject(Player2,45500) AddXPObject(Player3,45500) AddXPObject(Player4,45500) AddXPObject(Player5,45500) AddXPObject(Player6,45500)~ EXTERN ~TUPUNG~ 8
END