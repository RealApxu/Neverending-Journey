BEGIN ~DNORL~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~I assume you have brought me more topazes to cut.  Well, set them down and leave me to my work.~
  IF ~~ THEN REPLY ~Uh... sorry, I don't know what you're talking about.~ GOTO 2
END

IF ~NumTimesTalkedToGT(0)
GlobalGT("Marketh_Ring","GLOBAL",2)~ THEN BEGIN 1
  SAY ~Hello again. What are you still doing around here?~
  IF ~Global("SPRITE_IS_DEADMarketh","GLOBAL",1)
Global("Marketh_Ring","GLOBAL",3)~ THEN REPLY ~Marketh's dead. I killed him.~ GOTO 15
  IF ~OR(2)
Global("SPRITE_IS_DEADMarketh","GLOBAL",0)
Global("Marketh_Ring","GLOBAL",4)~ THEN REPLY ~Nothing much. Farewell, Norl.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Hmm... I suppose even Marketh's goons aren't bored enough to come in here and harass me. My name is Norl. I am a gem-cutter. Marketh keeps me here so I can cut gemstones for his master and craft jewelry for his concubine.~
  IF ~~ THEN REPLY ~What's wrong with your legs?~ GOTO 3
  IF ~~ THEN REPLY ~Who's Marketh?~ JOURNAL ~Lower Dorn's Deep.

In Durdel Anatha, we met a gem-cutter named Norl, who hates Marketh. Marketh forces Norl to create jewelry for his concubine.~ GOTO 4
  IF ~~ THEN REPLY ~Who's his master?~ GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY ~Marketh hobbled me because I tried to escape. I suppose I should be happy. At least he didn't cut out my tongue. Someday that bastard will get what's coming to him.~
  IF ~~ THEN REPLY ~Who's Marketh?~ GOTO 4
  IF ~~ THEN REPLY ~Who's Marketh's master?~ GOTO 5
  IF ~Global("SPRITE_IS_DEADMarketh","GLOBAL",1)~ THEN REPLY ~He already did. I killed him.~ GOTO 15
END

IF ~~ THEN BEGIN 4
  SAY ~Marketh is the human who lives in Old Dorn's Palace. He's set himself up as the Lord Chamberlain. He lives there with his concubine, Ginafae, and his two bodyguards. A gang of his thugs, led by a halfling named Seth, guards the entrance to the palace. Marketh likes to make himself seem very worldly and important. He's nothing but a common thug.~
  IF ~~ THEN REPLY ~Who does Marketh work for? What's he doing down here?~ GOTO 5
  IF ~~ THEN REPLY ~What's wrong with your legs?~ GOTO 3
END

IF ~~ THEN BEGIN 5
  SAY ~Marketh serves a priest of a human god called Ilmater.  I don't know anything about the religion, but it seems to me like it must be a church of cruel punishment and slavery. He's always telling us that we have to suffer for Ilmater, and that we have to be slaves to his will and the will of the church.~
  IF ~~ THEN REPLY ~What is this priest's name? What does he look like?~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~His name is Poquelin. Revered Brother Poquelin. He looks like a madman. He wears white robes with red stains on the bottom, like he walks through blood. The stains are on his sleeves, too. His wrists are always in bandages. He's got a red cap that he wears and his eyes... they're like ice.~
  IF ~~ THEN REPLY ~Hmm. Where can I find this man?~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~I don't know. I'm not sure I want to know, either. Every once in a while, when Marketh comes here, I have the urge to jump up and hit him. I thought about doing the same thing when Poquelin came here. As soon as I did, he grabbed my face and looked right into my eyes. It was like he knew.~
  IF ~~ THEN REPLY ~Please help me to find Marketh and get rid of him.~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~Certainly. I would leap at the chance. Just tell me what I need to do.~
  IF ~PartyHasItem("Portrait")~ THEN REPLY ~Marketh seems to have a ring that he uses to teleport all over Dorn's Deep. If you could make a copy of that ring, we might be able to switch it and trap him.~ JOURNAL ~Lower Dorn's Deep.

A gem-cutter named Norl told us he would help me get rid of Marketh if we could get hold of Marketh's ring. Of course, if we could do that, making a copy of the ring would be unnecessary.~ GOTO 9
  IF ~!PartyHasItem("Portrait")~ THEN REPLY ~Hmm. That is a problem. I'll try to figure something out. Farewell.~ DO ~SetGlobal("Marketh_Ring","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~I know that ring well, but not that well. If I could get hold of the ring itself, I could do it. Otherwise, I don't believe I'd be able to make an accurate copy.~
  IF ~~ THEN REPLY ~Well, I do have a drawing of him that I got from two sculptors. It shows his ring in great detail. Would that do the trick?~ JOURNAL ~Lower Dorn's Deep.

We gave Norl a sketch of Marketh that we got from two sculptors in the palace. He said that he could use the sketch to make the ring.~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY ~Yes... yes... that will do nicely. This ring will be my greatest piece yet...~
  IF ~~ THEN REPLY ~Sure. Here you go. I'll come back in a while to pick the ring up.~ DO ~TakePartyItem("Portrait")
SetGlobal("Marketh_Ring","GLOBAL",2)
SetGlobalTimer("Ring_Quest_Time","GLOBAL",7200)~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("Marketh_Ring","GLOBAL",1)~ THEN BEGIN 11
  SAY ~Ah. You again?~
  IF ~PartyHasItem("Portrait")~ THEN REPLY ~I've got a drawing of Marketh from two sculptors. It shows the ring that Marketh uses to teleport all over Dorn's Deep. If you could make a copy of that ring, we might be able to switch it and trap him.~ JOURNAL ~Lower Dorn's Deep.

A gem-cutter named Norl told us he would help me get rid of Marketh if we could get hold of Marketh's ring. We gave Norl a sketch of Marketh that we got from two sculptors in the palace. He said that he could use the sketch to make the ring.~ GOTO 10
  IF ~!PartyHasItem("Portrait")~ THEN REPLY ~Never mind, Norl. Farewell.~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("Marketh_Ring","GLOBAL",2)
!GlobalTimerExpired("Ring_Quest_Time","GLOBAL")~ THEN BEGIN 12
  SAY ~I'm sorry, but the ring's not ready yet. Come back later and I'll have what you need.~
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("Marketh_Ring","GLOBAL",2)
GlobalTimerExpired("Ring_Quest_Time","GLOBAL")~ THEN BEGIN 13
  SAY ~Ah! The ring is finished, gracious allies. Here it is, a silver band with a big fat emerald for Marketh's big fat head. It won't be easy to switch them, I'd imagine, but Callarduran will be with you.~
  IF ~~ THEN REPLY ~Thanks, Norl. Farewell.~ DO ~GiveItemCreate("RingCop",LastTalkedToBy,0,0,0)
SetGlobal("Marketh_Ring","GLOBAL",3)~ JOURNAL ~Lower Dorn's Deep.

Norl finished the copy of Marketh's teleportation ring and gave it to us. Before we left, he told me Callarduran would be with us.~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~Let me know when you give Marketh the punishment he has coming to him. I can't wait to see his reign of terror come to an end.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
  SAY ~Justice has finally been served. Thank you for your help. I will remember you for the rest of my days.~
  IF ~~ THEN DO ~SetGlobal("Marketh_Ring","GLOBAL",4)~EXIT
END
