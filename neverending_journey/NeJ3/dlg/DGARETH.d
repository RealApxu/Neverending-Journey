BEGIN ~DGARETH~

IF WEIGHT #1 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Greetings, I am Gareth.  Oh my...  You are armed and armored...  Have you come to return us to slavery?~
  IF ~~ THEN REPLY ~No, I am not here to enslave you.~ GOTO 2
  IF ~Global("Return_Slaves","GLOBAL",1)~ THEN REPLY ~Yes, the salamanders want you back.  You are to come with me.~ JOURNAL ~Wyrm�s Tooth.

We informed Gareth that the frost salamanders asked us to return him and the other slaves. He said he would rather die than return to slavery and attacked us.~ GOTO 17
  IF ~~ THEN REPLY ~I will speak with you another time.  Farewell.~ EXIT
END

IF WEIGHT #2 ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY ~You have returned.  What can I do for you?~
  IF ~GlobalGT("Return_Slaves","GLOBAL",0)~ THEN REPLY ~The salamanders want you back. You are to come with me.~ GOTO 17
  IF ~Global("Get_Key","GLOBAL",1)~ THEN REPLY ~I said that I would consider helping you get the key to the exit from Kerish.~ GOTO 18
  IF ~Global("Get_Key","GLOBAL",2)~ THEN REPLY ~I have been thinking about helping you get the key to the exit from Kerish.~ GOTO 20
  IF ~Global("Get_Key","GLOBAL",3)~ THEN REPLY ~I have been trying to get the key to the exit from Kerish.~ GOTO 21
  IF ~Global("Get_Key","GLOBAL",4)~ THEN REPLY ~I am surprised to see you here, Gareth.~ GOTO 23
  IF ~Global("Heard_Vera_Dead","GLOBAL",1)Global("Know_Vera","GLOBAL",1)~ THEN REPLY ~Gareth, I have seen Vera.~ GOTO 27
  IF ~~ THEN REPLY ~Gareth, may I rest here?~ GOTO 29
  IF ~~ THEN REPLY ~I will speak with you another time.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Thank the gods.  Then perhaps you would agree to help us?  We are in a desperate situation.~
  IF ~~ THEN REPLY ~What is wrong?~ GOTO 3
  IF ~~ THEN REPLY ~I will speak with you another time.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~The people you see here are all slaves.  Recently we escaped our masters and fled here to this room.~
  IF ~~ THEN REPLY ~Who enslaved you?~ JOURNAL ~Wyrm�s Tooth.

We met a man named Gareth who claims to be an escaped slave of a group of frost salamanders.~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~I believe they are called frost salamanders.  They have humanoid torsos, reptilian heads, and serpentine tails.  They have an aura of cold about them and seem to thrive here in the glacier.~
  IF ~~ THEN REPLY ~I see.  So how did you manage your escape?~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~That is a long tale...  Will you listen?~
  IF ~~ THEN REPLY ~Yes, please begin.~ DO ~SetGlobal("Tell_Tale","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY ~No, I don�t have the time right now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~Very well...  We were held captive in the building directly above this one.  It appears to be some sort of museum.  There are numerous display cases showing specimens of aquatic life, all of which has succumbed to the cold of the glacier and frozen solid.~
  IF ~~ THEN REPLY ~Wait.  If your former masters are so close, why do they not just come and get you?~ JOURNAL ~Wyrm�s Tooth.

According to Gareth, frost salamanders are sensitive to heat. Perhaps we could use this knowledge against them.~ GOTO 7
  IF ~~ THEN REPLY ~Go on.~ GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY ~The temperature here is hot enough to cause them pain, and thus, they shun this place.~
  IF ~~ THEN REPLY ~I see.  Go on.~ GOTO 8
  IF ~~ THEN REPLY ~I have heard enough for now.  We can speak of this again later.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~There was one room within the museum the salamanders avoided, and we were ordered never to enter there.  So naturally, we began to wonder why.  We did our best to try and sneak in to see what it was the salamanders feared, but with little success.  Finally, a woman named Vera managed to do it!~
  IF ~~ THEN REPLY ~What did she find there?~ GOTO 9
  IF ~~ THEN REPLY ~I have heard enough for now.  We can speak of this again later.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~Ancient machinery -- really old stuff, most of it in ruin.  However, there was one device that emitted a soft glow and warmth!  Vera realized that the warmth must be why the salamanders avoided the area.  She also concluded the displays of the museum had not always been frozen -- perhaps this machinery was what kept the cold at bay in the past.~
  IF ~~ THEN REPLY ~Interesting conclusion.  Please continue.~ GOTO 10
  IF ~~ THEN REPLY ~I have heard enough for now.  We can speak of this again later.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~Vera felt that this was the chance of a lifetime.  There was no way to know if either she or anyone else would ever gain access to this room again so she decided to take action.  She began to fiddle with dials and knobs until suddenly an indicator began to pulse with a steady light.  At once the room filled with a warm glow and the hum of power.  Quietly she returned to tell us of her discovery.~
  IF ~~ THEN REPLY ~I see.  So what happened next?~ JOURNAL ~Wyrm�s Tooth.

We have learned that the slave leader is a woman named Vera.~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~At first, nothing.  For days we waited, always expecting the temperature to rise, but it never did.  We had finally given up hope when, just yesterday, a commotion started and the salamanders fled this room in a flurry of confusion.  Vera saw this as our one chance at freedom.  We could not allow the salamander�s time to reorganize and cut off our access to this room.  So, she yelled for all of us to run to the stairs that led here.  Many died in the attempt.  We are the few who survived.  If only Vera were here...~
  IF ~~ THEN REPLY ~Well done... Now, what is this desperate situation you said you were in?~ DO ~SetGlobal("Tell_Tale","GLOBAL",4)~ GOTO 12
  IF ~Global("Know_Vera","GLOBAL",0)~ THEN REPLY ~Vera is not here? She did not escape with the rest of you?~ DO ~SetGlobal("Tell_Tale","GLOBAL",4)~ GOTO 16
  IF ~Global("Know_Vera","GLOBAL",1)~ THEN REPLY ~Gareth, I have seen Vera.~ DO ~SetGlobal("Tell_Tale","GLOBAL",4)~ GOTO 25
END

IF ~~ THEN BEGIN 12
  SAY ~We have no food or water.  We are in the heart of enemy lands.  We will surely die if we stay here... the maddening thing is, we *have* discovered another exit that leads back to the surface, but it is locked and we do not have the key.~
  IF ~~ THEN REPLY ~It is probably in the hands of the salamanders. ~ GOTO 13
  IF ~~ THEN REPLY ~It is probably in the possession of the salamanders.  I suppose this is where you ask me to risk life and limb to get this key for you.~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY ~Yes.  We believe that Kerish, their leader, has the key.  Will you recover it for us?~
  IF ~~ THEN REPLY ~Hmm.  Yes, I will try to get this key for you.~ DO ~SetGlobal("Get_Key","GLOBAL",3)~ UNSOLVED_JOURNAL ~Wyrm�s Tooth.

Gareth has asked us to retrieve a key. The key unlocks the door to the passage leading to the surface. He believes it is in the possession of the salamanders. We have agreed to do this.~ GOTO 14
  IF ~~ THEN REPLY ~Fight a building full of frost salamanders?  I think not.~ DO ~SetGlobal("Get_Key","GLOBAL",2)~ JOURNAL ~Wyrm�s Tooth.

Gareth has asked us to retrieve a key, which will unlock the door to the passage leading to the surface. He believes the key is the possession of the salamanders. We told him we were not willing to fight a building full of frost salamanders for this key.~ GOTO 15
  IF ~~ THEN REPLY ~I will think about it.~ DO ~SetGlobal("Get_Key","GLOBAL",1)~ JOURNAL ~Wyrm�s Tooth.

Gareth has asked us to retrieve a key, which will unlock the door to the passage leading to the surface. He believes the key is the possession of the salamanders. We informed him that we would think about this.~ GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY ~Your bravery and compassion are beyond compare.  I do not know what to say other than thank you... which seems hardly enough under the circumstances.  Please recover the key quickly.  Our fate is in your hands.~
  IF ~~ THEN REPLY ~I will.  Farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY ~I understand your reluctance to do this but you are our only hope.  Please think the matter through and let me know if you change your mind.~
  IF ~~ THEN REPLY ~I will.  Farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY ~I am sorry, but no.  Vera never made it down here with the rest of us.  The last I saw, there was a wave of salamanders between her and escape.  I fear she is dead.~
  IF ~~ THEN REPLY ~I am sorry to hear that, Gareth. You mentioned being in a desperate situation. Can you tell me about it?~ DO ~SetGlobal("Heard_Vera_Dead","GLOBAL",1)~ GOTO 12
END

IF ~~ THEN BEGIN 17
  SAY ~Never!  We would rather die than return to slavery!~
  IF ~~ THEN REPLY ~So be it!~ DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY ~Yes.  Have you given any more thought to helping us?  We desperately need the key to the exit.~
  IF ~~ THEN REPLY ~Hmm.  Yes, I will try to get this key for you.~ DO ~SetGlobal("Get_Key","GLOBAL",3)~ UNSOLVED_JOURNAL ~Wyrm�s Tooth.

Gareth has asked us to retrieve a key. The key unlocks the door to the passage leading to the surface. He believes it is in the possession of the salamanders. We have agreed to do this.~ GOTO 19
  IF ~~ THEN REPLY ~Fight a building full of frost salamanders? I think not.  Farewell.~ DO ~SetGlobal("Get_Key","GLOBAL",2)~ JOURNAL ~Wyrm�s Tooth.

Gareth has asked us to retrieve a key, which will unlock the door to the passage leading to the surface. He believes the key is the possession of the salamanders. We told him we were not willing to fight a building full of frost salamanders for this key.~ EXIT
  IF ~~ THEN REPLY ~I am still thinking about it.  Farewell for now.~ DO ~SetGlobal("Get_Key","GLOBAL",1)~ JOURNAL ~Wyrm�s Tooth.

Gareth has asked us to retrieve a key, which will unlock the door to the passage leading to the surface. He believes the key is the possession of the salamanders. We informed him that we would think about this.~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY ~Your bravery and compassion are beyond compare.  I do not know what to say other than thank you... which seems hardly enough under the circumstances.  Please recover the key quickly.  Our fate is in your hands.~
  IF ~~ THEN REPLY ~I will be going now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY ~Oh?  I know you declined to help us, but we desperately need the key to the exit.  Will you get it for us?~
  IF ~~ THEN REPLY ~Hmm.  Yes, I will try to get this key for you.~ DO ~SetGlobal("Get_Key","GLOBAL",3)~ UNSOLVED_JOURNAL ~Wyrm�s Tooth.

Gareth has asked us to retrieve a key. The key unlocks the door to the passage leading to the surface. He believes it is in the possession of the salamanders. We have agreed to do this.~ GOTO 19
  IF ~~ THEN REPLY ~Fight a building full of frost salamanders?  I think not.~ DO ~SetGlobal("Get_Key","GLOBAL",2)~ JOURNAL ~Wyrm�s Tooth.

Gareth has asked us to retrieve a key, which will unlock the door to the passage leading to the surface. He believes the key is the possession of the salamanders. We told him we were not willing to fight a building full of frost salamanders for this key.~ EXIT
  IF ~~ THEN REPLY ~I am still thinking about it.  Farewell for now.~ DO ~SetGlobal("Get_Key","GLOBAL",1)~ JOURNAL ~Wyrm�s Tooth.

Gareth has asked us to retrieve a key, which will unlock the door to the passage leading to the surface. He believes the key is the possession of the salamanders. We informed him that we would think about this.~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY ~Yes.  Have you found the key?  We desperately need it.~
  IF ~PartyHasItem("KeyDug")~ THEN REPLY ~Yes, I have the key.~ DO ~SetGlobal("Get_Key","GLOBAL",4)
SetGlobal("Slaves_Free_1","GLOBAL",1)
TakePartyItem("KeyDug")
EraseJournalEntry(%Wyrm�s Tooth.

We met a man named Gareth who claims to be an escaped slave of a group of frost salamanders.%)
EraseJournalEntry(%Wyrm�s Tooth.

According to Gareth, frost salamanders are sensitive to heat. Perhaps we could use this knowledge against them.%)
EraseJournalEntry(%Wyrm�s Tooth.

We have learned that the slave leader is a woman named Vera.%)
EraseJournalEntry(%Wyrm�s Tooth.

Gareth has asked us to retrieve a key. The key unlocks the door to the passage leading to the surface. He believes it is in the possession of the salamanders. We have agreed to do this.%)
EraseJournalEntry(%Wyrm�s Tooth.

Gareth has asked us to retrieve a key, which will unlock the door to the passage leading to the surface. He believes the key is the possession of the salamanders. We told him we were not willing to fight a building full of frost salamanders for this key.%)
EraseJournalEntry(%Wyrm�s Tooth.

Gareth has asked us to retrieve a key, which will unlock the door to the passage leading to the surface. He believes the key is the possession of the salamanders. We informed him that we would think about this.%)
AddexperienceParty(7500)~ SOLVED_JOURNAL ~Wyrm�s Tooth.

We gave Gareth the key that unlocks the door to the passage leading to the surface. Now he and the other slaves can escape to safety.~ GOTO 22
  IF ~!PartyHasItem("KeyDug")~ THEN REPLY ~No, not yet.  I am still searching.  Farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY ~Oh my...  You have done it!  I will tell everyone to prepare to leave here immediately.  Thank you so much for what you have done. ~
  IF ~~ THEN REPLY ~You are welcome, Gareth.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY ~We are preparing to leave at this very moment.  Thank you for your help, friend.~
  IF ~~ THEN REPLY ~You are welcome, Gareth. ~ EXIT
END

IF WEIGHT #0 ~Global("Tell_Tale","GLOBAL",1)~ THEN BEGIN 24
  SAY ~Hello again.  Have you come to finish our conversation?~
  IF ~~ THEN REPLY ~Yes, please start at the beginning and relate your tale to me again.~ GOTO 6
  IF ~~ THEN REPLY ~No, not at this time.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY ~What? Where is she? Is she all right?~
  IF ~Global("Vera_Dead","GLOBAL",0)~ THEN REPLY ~She is safe and in hiding. That is all that I can say.~ DO ~AddexperienceParty(18600)~ GOTO 26
  IF ~Global("Vera_Dead","GLOBAL",1)~ THEN REPLY ~I am sorry to say that she is dead, Gareth.~ DO ~AddexperienceParty(18600)~ GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY ~I see...  Well, thank you for telling me.  I will let the others know the news.~
  IF ~~ THEN REPLY ~You are welcome, Gareth. You mentioned a desperate situation that you are in. Can you tell me about it?~ DO ~SetGlobal("Heard_Vera_Dead","GLOBAL",4)~ GOTO 12
END

IF ~~ THEN BEGIN 27
  SAY ~What?  Where is she?  Is she all right?~
  IF ~Global("Vera_Dead","GLOBAL",0)~ THEN REPLY ~She is safe and in hiding. That is all that I can say.~ DO ~AddexperienceParty(18600)~ GOTO 28
  IF ~Global("Vera_Dead","GLOBAL",1)~ THEN REPLY ~I am sorry to say that she is dead, Gareth.~ DO ~AddexperienceParty(18600)~ GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY ~I see... Well, thank you for telling me. I will let the others know the news.~
  IF ~~ THEN REPLY ~You are welcome, Gareth. Farewell.~ DO ~SetGlobal("Heard_Vera_Dead","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY ~Sure. I'll heal you and watch over you while you rest.~
  IF ~~ THEN  DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPHealC3")~ EXIT
END