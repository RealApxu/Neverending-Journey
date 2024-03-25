BEGIN ~OWAIN~

IF ~Global("VP_Restore_Ring","GLOBAL",6) Global("VP_Enhance_Ring","GLOBAL",7)~ THEN BEGIN 0
  SAY ~Greetings fellow student. Do I know you?~
  IF ~~ THEN REPLY ~Greetings I am <GABBER>. I seek an air specialist by name of Owain would that by chance be you?~ GOTO 1
  IF ~~ THEN REPLY ~Not yet, I am <GABBER>. I believe you can help me if you are Owain, air specialist?~ GOTO 1
  IF ~~ THEN REPLY ~No, but let us change that I am <GABBER>. Well met friend, are you Owain?~ GOTO 1
  IF ~~ THEN REPLY ~I am <GABBER>. I seek Owain, mighty air elementalist, are you he?~ GOTO 13
END

IF ~~ THEN BEGIN 1
  SAY ~I am Owain. What do you want with me?~
  IF ~~ THEN REPLY ~A proposition Owain. I have an artifact that needs a bit of extra work on, you interested?~ GOTO 2
  IF ~~ THEN REPLY ~A favour Owain, involves a little of that air magic that you specialise in. What do you say?~ GOTO 2
  IF ~~ THEN REPLY ~I hear you do not mind bending the rules a little to help yourself when it becomes necessary. Right Owain?~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~That depends on what it is I am being asked to do? There are heavy penalties imposed on those caught breaking Halruaa's laws so be very careful what it is you are about to ask.~
  IF ~~ THEN REPLY ~Nothing more than a small enhancement to this ring of mine.~ GOTO 4
  IF ~~ THEN REPLY ~I have a ring, its construction was never completed so I now seek ways of enhancing it?~ GOTO 4
  IF ~~ THEN REPLY ~I have a ring which has the potential of becoming a wondrous artifact. I need only to find elementalists willing to work on it.~ GOTO 4
  IF ~~ THEN REPLY ~I find most rules need to be bent a little at times, however all I am asking is for your aid in enhancing this magical ring of mine.~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY ~Someone been casting aspersions on my integrity again have they? Seems you aren't bothered by a little rule bending of your own or you wouldn't have sought me out. What have you in mind?~
  IF ~~ THEN REPLY ~Nothing more than a small enhancement to this ring of mine.~ GOTO 4
  IF ~~ THEN REPLY ~I have a ring, its construction was never completed so I now seek ways of enhancing it?~ GOTO 4
  IF ~~ THEN REPLY ~I have a ring which has the potential of becoming a wondrous artifact. I need only to find elementalists willing to work on it.~ GOTO 4
  IF ~~ THEN REPLY ~I find most rules need to be bent a little at times, however all I am asking is for your aid in enhancing this magical ring of mine.~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~A ring you say and what sort of a ring are we talking about here, a ring of protection, a ring of summoning, I need to know more than *it's a ring* and if it is only a ring why the need to come to me?~
  IF ~CheckStatGT(LastTalkedToBy,14,INT) CheckStatGT(LastTalkedToBy,11,WIS) CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY ~It is a Ring of Might, or at least that was what its makers intended it to be.~ GOTO 5
  IF ~CheckStatGT(LastTalkedToBy,14,INT) CheckStatGT(LastTalkedToBy,11,WIS) CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY ~The ring is a modification of the original Rings of Might.~ GOTO 5
  IF ~CheckStatGT(LastTalkedToBy,14,INT) CheckStatGT(LastTalkedToBy,11,WIS) CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY ~This ring was constructed by elementalist mages in an attempt to forge a Ring of Might, but they never completed it.~ GOTO 5
  IF ~CheckStatGT(LastTalkedToBy,14,INT) CheckStatGT(LastTalkedToBy,11,WIS) CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY ~It is a partially constructed Ring of Might, so you see why I find it necessary to come to you for aid?~ GOTO 5
  IF ~OR(3) CheckStatLT(LastTalkedToBy,15,INT) CheckStatLT(LastTalkedToBy,12,WIS) CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY ~It is a Ring of Might, or at least that was what its makers intended it to be.~ GOTO 14
  IF ~OR(3) CheckStatLT(LastTalkedToBy,15,INT) CheckStatLT(LastTalkedToBy,12,WIS) CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY ~The ring is a modification of the original Rings of Might.~ GOTO 14
  IF ~OR(3) CheckStatLT(LastTalkedToBy,15,INT) CheckStatLT(LastTalkedToBy,12,WIS) CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY ~This ring was constructed by elementalist mages in an attempt to forge a Ring of Might, but they never completed it.~ GOTO 14
  IF ~OR(3) CheckStatLT(LastTalkedToBy,15,INT) CheckStatLT(LastTalkedToBy,12,WIS) CheckStatLT(LastTalkedToBy,15,CHR)~ THEN REPLY ~It is a partially constructed Ring of Might, so you see why I find it necessary to come to you for aid?~ GOTO 14
END

IF ~~ THEN BEGIN 5
  SAY ~Oh... ho! A Ring of Might you say! You do know of course it is forbidden to work on such an item whilst on Halruaa grounds?~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~Silly question, of course you do, you would not have come to me otherwise. So <GABBER>, how is this little endeavour going to be worth my while, taking in to account the risk involved here?~
  IF ~PartyGoldGT(7999)~ THEN REPLY ~I believe 8000 gold should more than cover any inconvenience and risk Owain.~ GOTO 7
  IF ~~ THEN REPLY ~I will give you 4000 gold Owain, the same as I paid for the aid of another elementalist.~ GOTO 8
  IF ~~ THEN REPLY ~How does 2000 gold for your trouble sound to you Owain?~ GOTO 11
END

IF ~~ THEN BEGIN 7
  SAY ~That will probably just about compensate for my time and the risk. Give me your ring and the gold, it will probably only take me one day to complete. Meet me here then, but I must insist no mention is made of my name to anyone over this.~
  IF ~~ THEN DO ~SetGlobal("VP_Enhance_Ring","GLOBAL",8) SetGlobalTimer("VP_Owain_Returns","GLOBAL",ONE_DAY) TakePartyGold(8000) TakePartyItem("DeRing4") EscapeArea()~ EXIT //Owain went to enhance the ring
END

IF ~~ THEN BEGIN 8
  SAY ~4000 gold! That would barely cover the cost of components let alone compensate for my time and the risk. 10000 gold and I may consider it.~
  IF ~PartyGoldGT(9999)~ THEN REPLY ~I will give you your 10000 gold, but you had better make sure that what you deliver is worth the cost.~ GOTO 9
  IF ~PartyGoldGT(9999)~ THEN REPLY ~Here take your 10000 gold! Just do not go getting any ideas of disappearing with it, because I will make a point of finding you and taking it back... with interest!~ GOTO 9
  IF ~~ THEN REPLY ~Forget it! I am not paying you 10000 gold, I will find another to do the work.~ GOTO 10
  IF ~~ THEN REPLY ~I do not have that amount of gold Owain, I am sorry to have bothered you.~ GOTO 12
END

IF ~~ THEN BEGIN 9
  SAY ~That will probably just about compensate for my time and the risk. Give me your ring and the gold, it will probably only take me one day to complete. Meet me here then, but I must insist no mention is made of my name to anyone over this.~
  IF ~~ THEN DO ~SetGlobal("VP_Enhance_Ring","GLOBAL",8) SetGlobalTimer("VP_Owain_Returns","GLOBAL",ONE_DAY) TakePartyGold(10000) TakePartyItem("DeRing4") EscapeArea()~ EXIT //Owain went to enhance the ring
END

IF ~~ THEN BEGIN 10
  SAY ~Please yourself. I wish you luck in finding another, but I leave you with this warning, be careful whom you let know that you have a Ring of Might in your possession.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY ~(*Laughs*) You jest <GABBER>! 2000 gold won't buy the time it takes to utter the spells let alone pay for components. Come if you cannot raise your price to at least 10000 gold to cover the risk I shall be taking on your behalf, then we are wasting each others time.~
  IF ~PartyGoldGT(9999)~ THEN REPLY ~I will give you your 10000 gold, but you had better make sure that what you deliver is worth the cost.~ GOTO 9
  IF ~PartyGoldGT(9999)~ THEN REPLY ~Here take your 10000 gold! Just do not go getting any ideas of disappearing with it, because I will make a point of finding you and taking it back... with interest!~ GOTO 9
  IF ~~ THEN REPLY ~Forget it! I am not paying you 10000 gold, I will find another to do the work.~ GOTO 10
  IF ~~ THEN REPLY ~I do not have that amount of gold Owain, I am sorry to have bothered you.~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY ~Then I can do nothing for you <GABBER>. Farewell and please, do not look for me again.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~Is that sarcasm I detect in your voice <GABBER>?~
  IF ~~ THEN REPLY ~Sorry, it was not meant to sound so Owain. I was told you had the knowledge to aid me. What do you say?~ GOTO 2
  IF ~~ THEN REPLY ~No, it was meant as a compliment. Your name was mentioned to me as being a competent air elementalist. Please, I have a proposition to put to you if you are interested?~ GOTO 2
  IF ~~ THEN REPLY ~Sarcasm, compliment, take it as you wish. I am here with a proposition that only a competent elementalist can help me with. Are you such a mage Owain?~ GOTO 2
END

IF ~~ THEN BEGIN 14
  SAY ~You want me to work on a Ring of Might? Forget it. There are dire consequences for any, either mage or student, found reading about such an artifact. It is said, to actually be found in possession of one is to be stripped of all one's magical abilities and banishment from Halruaa.~
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~Not that anyone has tested the truth in this but the threat is enough. No, I am sorry I cannot help you. Now please, go away and take my advice when I say be careful whom you let know that you have such a ring in your possession. (*Owain walks away before anymore can be said.*)~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

//IF ~Global("VP_Enhance_Ring","GLOBAL",9)~ THEN BEGIN 16
//  SAY ~As promised <GABBER>, your ring. Whilst working on it I took the opportunity to delve into its construction. I have to say I am impressed with the potential this ring has.~
//  IF ~~ THEN GOTO 17
//END

//IF ~~ THEN BEGIN 17
//  SAY ~To see the power this ring holds as it is, is to see why mages pursue the creation of true Rings of Might. Guard it well whilst you walk on Halruaa ground and should you be discovered I repeat, do not mention my name. You carry it at your own peril.~
//  IF ~~ THEN REPLY ~Thank you Owain. Be assured, none shall hear of your involvement from me. Farewell.~ GOTO 18
//  IF ~~ THEN REPLY ~I have yet to see whether your work was worth my gold, then I will decide who knows the name of the mage who aided me. Farewell and... remain alert Owain.~ GOTO 18
//  IF ~~ THEN REPLY ~Such work should be praised not scorned or frowned upon Owain, but it shall be as you wish. None shall hear from me of your part in this matter. Farewell Owain.~ GOTO 18
//END

//IF ~~ THEN BEGIN 18
//  SAY ~Whereas it has been a joy to work on the artifact, I cannot risk the memory re-surfacing in my mind. As from now I must forget that I ever touched or even saw a Ring of Might. Farewell <GABBER>.~
//  IF ~~ THEN DO ~GiveItemCreate("DeRing5",LastTalkedToBy,0,0,0) //EscapeArea()~ EXIT
//END //Owain is granting the enhanced ring (+air element)

IF ~Global("VP_Enhance_Ring","GLOBAL",9)~ THEN BEGIN 16
  SAY ~I'm sorry <GABBER>, but I had to report you. Whereas it would be a joy to work on the artifact, I could not risk my future and my reputation here.~
  = ~Anyway, I have to say I am impressed with the potential this ring has. To see the power this ring holds as it is, is to see why mages pursue the creation of true Rings of Might. As from now I must forget that I ever touched or even saw a Ring of Might. Guards!~
  IF ~~ THEN DO ~SetGlobalTimer("VP_Reveal_Spies_E","GLOBAL",ONE_DAY) SetGlobal("VP_Leaving_Halruaa","GLOBAL",3) DestroyItem("DeRing4") CreateCreatureObjectDoor("TuAlert1",Myself,0,0,0) CreateCreatureObjectDoor("TuAlert2",Myself,0,0,0) EscapeArea()~ EXIT
END