BEGIN ~DGINA2~

IF WEIGHT #1 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~H... hello.~
  IF ~~ THEN REPLY ~Well met... may I have the pleasure of your name?~ GOTO 1
  IF ~~ THEN REPLY ~What kind of greeting is that?  Didn't your parents teach you any manners?~ GOTO 2
  IF ~~ THEN REPLY ~Dark elf scum.  I should kill you for even *thinking* of speaking to me.~ GOTO 3
  IF ~~ THEN REPLY ~What happened to your eye?  Did someone hit you?~ GOTO 4
  IF ~~ THEN REPLY ~Sorry to disturb you.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY ~My name is Ginafae.~
  IF ~~ THEN REPLY ~Ginafae... not a big talker, are you, Ginafae?~ GOTO 5
  IF ~~ THEN REPLY ~That's a beautiful name for a beautiful woman.  But... what happened to your eye, Ginafae?~ GOTO 4
  IF ~~ THEN REPLY ~A typical drow name.  It doesn't surprise me.~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~I... I'm sorry...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~I... I...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~I... I accidentally fell... down the stairs.~
  IF ~CheckStatGT(LastTalkedToBy,12,INT)~ THEN REPLY ~Rrrriiight.  If you say so.  So, seriously, who did that to you?~ DO ~SetGlobal("Ginafae_Eye","GLOBAL",1)~ GOTO 6
  IF ~CheckStatLT(LastTalkedToBy,13,INT)~ THEN REPLY ~Oops.  You should probably be more careful.~ GOTO 7
  IF ~~ THEN REPLY ~Hmm.  I should probably go.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~No.  I don't get a chance to talk to people very much.  Marketh doesn't have many visitors, and I... I can't really leave.~
  IF ~~ THEN REPLY ~How did you wind up here?~ GOTO 11
  IF ~~ THEN REPLY ~Marketh?  Is he the person who hit you?~ DO ~SetGlobal("Ginafae_Eye","GLOBAL",1)~  GOTO 6
  IF ~~ THEN REPLY ~Well, I probably shouldn't upset Marketh.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~Please don't hurt him!  It's not Marketh's fault.  It's mine, really.  I shouldn't have made him angry.~
  IF ~~ THEN REPLY ~How did you make him angry?~ DO ~SetGlobal("Ginafae_Eye","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY ~Hurt him?  I'm going to smash his face in if I ever meet him.~ DO ~SetGlobal("Ginafae_Eye","GLOBAL",1)~ GOTO 10
  IF ~~ THEN REPLY ~Yeah, you shouldn't have.  Drow scum make me angry whenever I realize they're alive.~ DO ~SetGlobal("Ginafae_Eye","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY ~I don't want to make him angry, either.  So... I think I'll just leave.  Farewell.~ DO ~SetGlobal("Ginafae_Eye","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~I... I'll try.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~My... brother Malavon.  He placed a series of spells on me.  If I ever cross the boundaries of the palace, the first two spells will destroy my natural resistance to magic.  The third spell will extinguish my life force.~
  IF ~!PartyHasItem("PNull")~ THEN REPLY ~If I can find some way to help you Ginafae, I will.  Farewell.~ EXIT
  IF ~Global("Malavon_Curse","GLOBAL",1) PartyHasItem("PNull") !Global("Marketh_Gone","GLOBAL",1)~ THEN REPLY ~Ginafae, I found this potion.  It destroys magical effects on people who drink it.  Do you think that you could use it to remove Malavon's contingency spells?~ GOTO 17
  IF ~Global("Malavon_Curse","GLOBAL",1) PartyHasItem("PNull") Global("Marketh_Gone","GLOBAL",1)~ THEN REPLY ~Ginafae, I found this potion.  It destroys magical effects on people who drink it.  Do you think that you could use it to remove Malavon's contingency spells?~ GOTO 18
  IF ~~ THEN REPLY ~Ouch.  I should be going.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~I... I spoke to him in drow.  It was wrong of me.~
  IF ~~ THEN REPLY ~Well, it certainly doesn't warrant Marketh beating you.  Do you want me to take care of him for you?~ GOTO 10
  IF ~~ THEN REPLY ~Yes.  It was wrong.  Drow is gutter speech.~ GOTO 2
END

IF ~~ THEN BEGIN 10
  SAY ~No!  Please, don't.  Whatever he's done, you must promise me you won't hurt him.~
  IF ~~ THEN REPLY ~Okay.  I promise I won't hurt him.~ DO ~SetGlobal("Ginafae_Promise","GLOBAL",1)~ GOTO 13
  IF ~~ THEN REPLY ~Sorry, I can't promise you anything.~ DO ~SetGlobal("Ginafae_Promise","GLOBAL",2)~ GOTO 16
  IF ~~ THEN REPLY ~No way.  He's dead.  Have no doubts about it, when I find him, it's over.~ DO ~SetGlobal("Ginafae_Promise","GLOBAL",2)~ GOTO 16
END

IF ~~ THEN BEGIN 11
  SAY ~I should have seen it coming.  I abused Malavon constantly while he was growing up.  When Revered Brother Poquelin and his lieutenants met with my people, I slighted Marketh.  I wouldn't speak to him because he was male.  Instead, I spoke with Maiden Ilmadia.  After long discussion, our city could find no reason to ally with Poquelin.~
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY ~Unlike the rest of my people, Malavon wanted to join with the Revered Brother.  I discovered this, so he abducted me and took me to Marketh for "safe keeping."  They eventually found out anyway.  Now Poquelin is planning some sort of assault on my former home.  And I... I am left here with Marketh.~
  IF ~!GlobalGT("Ginafae_Promise","GLOBAL",0)~ THEN REPLY ~Do you want me to take care of Marketh for you?~ GOTO 10
  IF ~!Global("Malavon_Curse","GLOBAL",1)~ THEN REPLY ~Why don't you just leave?~ DO ~SetGlobal("Malavon_Curse","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY ~Farewell, Ginafae.~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~Thank you.  I understand why you're here.  It has something to do with Poquelin, doesn't it?  Listen, I know this will sound crazy, but I'm sure that Marketh could be a better person somehow if he could just get out of here.~
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~If you want to break up Poquelin's army, you'll need each of the lieutenant's badges.  Marketh has one.  They open an invisible barrier at the back of the fallen temple.  Brother Perdiem and his undead fellows watch over it.  Whatever you need to do, please... don't hurt Marketh.  It's not his fault that he does bad things...~
  IF ~~ THEN REPLY ~Farewell, Ginafae.~ EXIT
END

IF WEIGHT #2 ~NumTimesTalkedToGT(0)~ THEN BEGIN 15
  SAY ~H... hello again.  Did you want something?~
  IF ~!Global("Ginafae_Eye","GLOBAL",1)~ THEN REPLY ~So, what really happened to your eye?~ GOTO 6
  IF ~~ THEN REPLY ~How did you wind up here?~ GOTO 11
  IF ~Global("Malavon_Curse","GLOBAL",1) PartyHasItem("PNull") !Global("Marketh_Gone","GLOBAL",1)~ THEN REPLY ~Ginafae, I found this potion.  It destroys magical effects on people who drink it.  Do you think that you could use it to remove Malavon's contingency spells?~ GOTO 17
  IF ~Global("Malavon_Curse","GLOBAL",1) PartyHasItem("PNull") Global("Marketh_Gone","GLOBAL",1)~ THEN REPLY ~Ginafae, I found this potion.  It destroys magical effects on people who drink it.  Do you think that you could use it to remove Malavon's contingency spells?~ GOTO 18
  IF ~~ THEN REPLY ~No, not right now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY ~In that case, we have nothing to talk about.  Farewell.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY ~I could, but... I, I need to stay here with Marketh.  He needs me.  Thank you for trying to help me, though...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY ~Now that Marketh has left, I... I suppose there's no reason for me to stay here.  I... I don't know what else to do.  I suppose I should take the potion and leave this dead palace.  Thank you for your help, and farewell.~
  IF ~~ THEN REPLY ~Farewell, Ginafae.~ DO ~TakePartyItem("PNull") AddXPObject(Player1,7500) AddXPObject(Player2,7500) AddXPObject(Player3,7500) AddXPObject(Player4,7500) AddXPObject(Player5,7500) AddXPObject(Player6,7500) EscapeArea()~ EXIT
END

IF WEIGHT #0 ~Global("SPRITE_IS_DEADMarketh","GLOBAL",1)~ THEN BEGIN 19
  SAY ~*sob* *sob*  You... you killed him.  You killed Marketh! You didn't have to, but you did it anyway.  Why?  WHY?!~
  IF ~~ THEN REPLY ~I didn't see any other way to deal with him.~ GOTO 20
  IF ~~ THEN REPLY ~I'm sorry, I...~ GOTO 20
  IF ~~ THEN REPLY ~Ah, shut up, wench.~ GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY ~Just... just GET AWAY FROM ME!  *sob* *sob*~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
