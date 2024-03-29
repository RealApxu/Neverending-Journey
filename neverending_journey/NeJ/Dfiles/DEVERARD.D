BEGIN ~DEVERARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from: 39.2 21.1 20.1 19.1 18.1 17.0 16.1 15.1 14.3 13.1 12.1 11.1 10.2 9.1 8.1 7.1 6.3 5.1 4.1 2.0
  SAY ~You are free to ask, traveler.  I promise no answers.~ [EVER_01]
  IF ~!Class(Player1,PALADIN) !Class(Player1,CLERIC)~ THEN REPLY ~Tempus is the god of war, is he not?~  GOTO 4
  IF ~Class(Player1,PALADIN)~ THEN REPLY ~I come to show respect to your god and his worshippers, Everard.  Still, there is not much battle to be had here in Easthaven, I hope?~  GOTO 4
  IF ~Class(Player1,CLERIC)~ THEN REPLY ~Tempus is the god of war.  Easthaven seems far removed from any battles.~  GOTO 4
  IF ~Global("Jered_Stone","GLOBAL",1)~ THEN REPLY ~Accalia told me to ask you about "Jerrod's Stone."  She said it has something to do with one of your holy days.~  GOTO 9
  IF ~GlobalGT("Jered_Stone","GLOBAL",1)~ THEN REPLY ~I wished to hear the tale of Jerrod's Stone again.~  GOTO 9
  IF ~~ THEN REPLY ~You carry the scars of war, Everard.  Were you wounded in battle?~  GOTO 5
  IF ~~ THEN REPLY ~Do you know anything about the expedition that Hrothgar's putting together?~  DO ~SetGlobal("Know_Messenger","GLOBAL",1)~ GOTO 18
  IF ~Global("Know_Messenger","GLOBAL",1)~ THEN REPLY ~I heard there was a messenger who came to the temple from Kuldahar.~  GOTO 19
  IF ~~ THEN REPLY ~What's that glyph-covered door beneath the statue?~  GOTO 39
  IF ~~ THEN REPLY ~I was wondering if we might pay our respects to the temple... and perhaps receive some healing.~  DO ~StartStore("EHTemple",Player1)~ EXIT
  IF ~~ THEN REPLY ~Never mind.  I have intruded.  Farewell.~  EXIT
END

IF WEIGHT #7 ~Global("Know_Everard","GLOBAL",0) Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~[Suspicious] Hmm.  Hrothgar mentioned there were strangers in town.  [Slight attack to words] What is it you want?~ [EVER_02]
  IF ~~ THEN REPLY ~I am <CHARNAME>.  Are you the high priest of this temple?~  DO ~SetGlobal("Know_Everard","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY ~Never mind.  I have intruded.  Farewell.~  EXIT
END

IF WEIGHT #6 ~GlobalGT("Know_Everard","GLOBAL",0) Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~[Not pleased to see party] Your journey has brought you to this temple again.  What is it you want?~ [EVER_03]
  IF ~~ THEN REPLY ~I had some questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I was wondering if we might pay our respects to the temple... and perhaps receive some healing.~  DO ~StartStore("EHTemple",Player1)~ EXIT
  IF ~~ THEN REPLY ~Never mind.  I have intruded.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY ~Yes.  I am Everard... [mentally has to remind himself he has a title] Everard of Tempus, Battle-Priest of the Lord of Battles.  What brings you here?~ [EVER_04]
  IF ~!Class(Player1,PALADIN) !Class(Player1,CLERIC)~ THEN REPLY ~Tempus is the god of war, is he not?~  GOTO 4
  IF ~Class(Player1,PALADIN)~ THEN REPLY ~I come to show respect to your god and his worshippers, Everard.  Still, there is not much battle to be had here in Easthaven, I hope?~  GOTO 4
  IF ~Class(Player1,CLERIC)~ THEN REPLY ~Tempus is the god of war.  Easthaven seems far removed from any battles.~  GOTO 4
  IF ~Global("Jered_Stone","GLOBAL",1)~ THEN REPLY ~Accalia told me to ask you about "Jerrod's Stone."  She said it has something to do with one of your holy days.~  GOTO 9
  IF ~GlobalGT("Jered_Stone","GLOBAL",1)~ THEN REPLY ~I wished to hear the tale of Jerrod's Stone again.~  GOTO 9
  IF ~~ THEN REPLY ~You carry the scars of war, Everard.  Were you wounded in battle?~  GOTO 5
  IF ~~ THEN REPLY ~Do you know anything about the expedition that Hrothgar's putting together?~  DO ~SetGlobal("Know_Messenger","GLOBAL",1)~ GOTO 18
  IF ~Global("Know_Messenger","GLOBAL",1)~ THEN REPLY ~I heard there was a messenger who came to the temple from Kuldahar.~  GOTO 19
  IF ~~ THEN REPLY ~What's that glyph-covered door beneath the statue?~  GOTO 39
  IF ~~ THEN REPLY ~I was wondering if we might pay our respects to the temple... and perhaps receive some healing.~  DO ~StartStore("EHTemple",Player1)~ EXIT
  IF ~~ THEN REPLY ~Never mind.  I have intruded.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.1 3.0 0.2 0.1 0.0
  SAY ~[Reprimanding]War is but *one* of Tempus' aspects.  Warriors, true warriors, worship him as well.  ~ [EVER_05]
  IF ~~ THEN REPLY ~You carry the scars of war, Everard.  Were you wounded in battle?~  GOTO 5
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~Never mind.  I have intruded.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 5 // from: 21.0 4.0 3.5 0.5
  SAY ~These eyes have seen battle, yes... and my skin bears the mark of swords and axes.  That was long ago.  [Resigned, slightly angry]Now my place is here.~ [EVER_06]
  IF ~~ THEN REPLY ~Why would you leave battle behind?~  GOTO 6
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY ~[Reprimanding, but spoken as if he's had to tell himself this many times as well]Because there are *many* ways one may serve one's God.  I am of the Order of the Broken Blade.  My [bitter]*duty* is to watch this place.~ [EVER_07]
  IF ~!Class(Player1,PALADIN) !Class(Player1,CLERIC)~ THEN REPLY ~Order of the Broken Blade?~  GOTO 7
  IF ~Class(Player1,PALADIN)~ THEN REPLY ~Order of the Broken Blade?  They guard areas sacred to Tempus, correct?~  GOTO 7
  IF ~Class(Player1,CLERIC)~ THEN REPLY ~Order of the Broken Blade?  They guard areas sacred to Tempus, correct?~  GOTO 7
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.2 6.1 6.0
  SAY ~Yes.  We are... [corrects self]were... warriors.  Wounded in battle, our injuries now keep us far from the front lines.  Still, we are fit to guard holy sites to our lord.~ [EVER_08]
  IF ~~ THEN REPLY ~This is a holy site?~  GOTO 8
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY ~It is sacred to *Tempus,* yes.  It marks the field where the barbarian Jerrod gave up his life ages ago.  He lies encased in stone beneath this temple.~ [EVER_09]
  IF ~~ THEN REPLY ~What happened?~  DO ~SetGlobal("Jered_Stone","GLOBAL",2)~ GOTO 9
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 9 // from: 39.1 39.0 8.0 3.4 3.3 0.4 0.3
  SAY ~Jerrod was a shaman who lived long ago.  He brought unity to the northern tribes and led them to victory against the army of Arakon... at the cost of his life.~ [EVER_10]
  IF ~~ THEN REPLY ~How did he die?~  GOTO 10
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY ~Once Arakon saw his army routed by Jerrod and the northern tribes, he sought to bring the hells to his aid.  Arakon opened a gate to the Lower Planes.~ [EVER_11]
  IF ~Class(Player1,MAGE)~ THEN REPLY ~But... demons?  Arakon would have been damning himself.~  GOTO 11
  IF ~!Class(Player1,MAGE)~ THEN REPLY ~He brought demons to the battlefield?  The northern tribes would have been destroyed.~  GOTO 12
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY ~Arakon was an archMAGE.  Storms moved at his word.  Legions worshipped him as a god.  Such men would rather damn themselves than admit defeat.~ [EVER_12]
  IF ~~ THEN REPLY ~But if Arakon summoned demons to the battlefield - then the northern tribes would have been destroyed.~  GOTO 12
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 10.1
  SAY ~I do not believe that.  Jerrod did.  It is said that Tempus himself appeared to Jerrod upon the battlefield, and Jerrod took that as a sign.~ [EVER_13]
  IF ~~ THEN REPLY ~A sign to do what?~  GOTO 13
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY ~Jerrod believed Tempus was calling him to sacrifice himself for his people to insure victory.  And so he cast his body into the portal, his blood fusing it to stone.  It lies entombed beneath the temple to this day.~ [EVER_14]
  IF ~~ THEN REPLY ~You don't sound like you agree with Jerrod's choice.~  GOTO 14
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY ~[Bitter, frustrated] Jerrod had no *need* to sacrifice himself.  Tempus' appearance was a test of faith, proof Jerrod's people had already won the field that day.  Jerrod failed his god and died a *coward's* death.  ~ [EVER_15]
  IF ~!Class(Player1,PALADIN) !Class(Player1,CLERIC)~ THEN REPLY ~Are you sure his death was in vain?  Jerrod did seal the por-~  GOTO 15
  IF ~Class(Player1,PALADIN)~ THEN REPLY ~But Tempus is known to appear to warriors who can dictate the outcome of a battle.  So perhaps Jerrod's death was not in v--~  GOTO 15
  IF ~Class(Player1,CLERIC)~ THEN REPLY ~But Tempus is known to appear to warriors who can dictate the outcome of a battle.  So perhaps Jerrod's death was not in v--~  GOTO 15
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.2 14.1 14.0
  SAY ~[Angry that anyone is showing sympathy for Jerrod's sacrifice] One dies for Tempus with a BLADE in one's hand, not by martyring oneself within the embrace of infernal magics!  Jerrod's DUTY was to stand with his comrades, not cast himself to his death when the field was already theirs!~ [EVER_16]
  IF ~~ THEN REPLY ~His sacrifice may have prevented other deaths, Everard.~  DO ~SetGlobal("Jered_Stone","GLOBAL",3)~ JOURNAL ~Jerrod's Stone.

We met with the local priest of Tempus, Everard, and we heard the tale of "Jerrod's Stone."  It tells the tale of a barbarian shaman that sacrificed himself to seal a demon's portal that lies buried beneath the temple.  Strangely enough, Everard seemed to have contempt for Jerrod and his sacrifice.~  GOTO 16
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY ~[Slightly incredulous] Sacrifice?  Let me say of this "sacrifice," *young* one, then we shall speak of this no more.  Sacrifice is a death that has meaning.  When it is in vain, it is not sacrifice, it is a *waste.*  [Calms down a little]*That* is the lesson of Jerrod's Stone.~ [EVER_17]
  IF ~~ THEN REPLY ~And this stone is buried beneath the temple?~  GOTO 17
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY ~Aye, a great stone disk that holds Jerrod's corpse for eternity.  And so I watch and guard it, in Tempus' name.~ [EVER_18]
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 18 // from: 3.6 0.6
  SAY ~[Slight irritation because he's not going because he's wounded] I have heard of it, yes.  A messenger from Kuldahar visited the temple not long ago, and it has spurred Hrothgar to see what is happening in the North.~ [EVER_19]
  IF ~~ THEN REPLY ~A messenger?~  GOTO 19
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 3.7 0.7
  SAY ~Yes.  A man from Kuldahar found his way to our door, and he was dead by morning.  He claimed he was a messenger from the Archdruid of Kuldahar.  ~ [EVER_20]
  IF ~~ THEN REPLY ~What did he want?~  JOURNAL ~Disturbances in Kuldahar.

Everard, the head priest of Tempus in Easthaven, confirmed there was a messenger from the northern town of Kuldahar that came to the Temple of Tempus and died shortly after his arrival.  Before his death, the messenger spoke of great disturbances in Kuldahar and asked the people of Easthaven for help. Apparently, Hrothgar is organizing an expedition to Kuldahar to investigate the matter.~  GOTO 20
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY ~[Slightly unsettled as he remembers messenger's last words] The man spoke of... disturbances in Kuldahar.  [Slightly dismissive]His wounds prevented me from making any sense of his words - perhaps Hrothgar understood more than I, for he's preparing an expedition.~ [EVER_21]
  IF ~~ THEN REPLY ~Are you going on this expedition?~  GOTO 21
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY ~No, for my place is here.  [Hints that he was not invited, but suspects it is because of his wounds] Were I invited, I would still not go - my injuries would only slow the expedition.~ [EVER_22]
  IF ~~ THEN REPLY ~Your injuries... were you wounded in battle?~  GOTO 5
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF WEIGHT #4 ~GlobalGT("Know_Balance","GLOBAL",0) Global("Know_Everard","GLOBAL",0)~ THEN BEGIN 22 // from:
  SAY ~You - who are you?~ [EVER_23]
  IF ~~ THEN REPLY ~I am <CHARNAME>.  Are you all right?~  GOTO 24
END

IF WEIGHT #5 ~GlobalGT("Know_Balance","GLOBAL",0) GlobalGT("Know_Everard","GLOBAL",0)~ THEN BEGIN 23 // from:
  SAY ~[Wounded from torture] You - you have returned to Easthaven - I pray you are not too late.~ [EVER_24]
  IF ~~ THEN REPLY ~Everard, are you all right?~  GOTO 26
  IF ~~ THEN REPLY ~Look, Everard - there's no time to talk.  You need to gather your people and get far as you can from Easthaven.  Now go.~  GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 22.0
  SAY ~I... am Everard.  I was the priest of Tempus - the temple is the one that has become that... infernal ice tower.~ [EVER_25]
  IF ~~ THEN REPLY ~Everard - this is very important.  Do you know how I could get in?~  GOTO 26
  IF ~~ THEN REPLY ~Look, you need to gather your people and get far as you can from Easthaven.  Now go.~  GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.1 23.1
  SAY ~No!  I can help you!  The tower of ice, I --~ [EVER_26]
  IF ~~ THEN REPLY ~Do you know how to get in? ~  GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0 24.0 23.0
  SAY ~Yes... I was brought into the tower by the giants... they sought to... [trying to shake off memory of torture] break me, force me to break the glyphs...~ [EVER_27]
  IF ~GlobalLT("Jered_Stone","GLOBAL",2)~ THEN REPLY ~Glyphs to what?~  GOTO 27
  IF ~GlobalGT("Jered_Stone","GLOBAL",1)~ THEN REPLY ~Glyphs to wh...?  Wait -- the glyphs to *Jerrod's Stone?*~  GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY ~Jerrod's Stone... it is a portal to the hells.  If they open it, then... we are all damned.  Poquelin... his armies will number all the souls of hell.  Faerun will be destroyed...~ [EVER_28]
  IF ~~ THEN REPLY ~Everard - I need to get into that tower.~  GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY ~Yes... if they open it, then... we are all damned.  Poquelin... his armies will number all the souls of hell.  All Faerun will be destroyed...~ [EVER_29]
  IF ~~ THEN REPLY ~Everard - I need to get into that tower.~  GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 40.0 28.0 27.0
  SAY ~Let me... show you the sign.  The ice gives way beneath a symbol... crossed hands, blood upon the wrists... with it, you should be able to open the tower.  I will... follow later, if I can.~ [EVER_30]
  IF ~Global("Freed_Everard","GLOBAL",0)~ THEN REPLY ~Very well.  I will head to the tower, then.~  DO ~SetGlobal("Freed_Everard","GLOBAL",1) AddexperienceParty(16500)~ JOURNAL ~We found the high priest of Tempus, Everard, in the slave camp in destroyed Easthaven.  He provided the sign that will allow me to get inside the great ice tower.~  EXIT
  IF ~GlobalGT("Freed_Everard","GLOBAL",0)~ THEN REPLY ~Very well.  I will head to the tower, then.~  EXIT
END

IF WEIGHT #2 ~Global("Freed_Everard","GLOBAL",1) !Global("Everard_In_Temple","GLOBAL",0)~ THEN BEGIN 30 // from:
  SAY ~You have found your way in, I see... I will attempt to open the passageway below to Jerrod's Stone, but these glyphs are born of Tempus himself.  It may be beyond my power.~ [EVER_31]
  IF ~~ THEN REPLY ~Is there anything we can do to help?~  GOTO 31
  IF ~~ THEN REPLY ~Then hurry, damn your hide!  We don't have time to listen to your excuses! ~  GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.1 30.0
  SAY ~[Slightly angry, urgent] If you would help, climb this tower.  See if there is another way to Jerrod's Stone.~ [EVER_32]
  IF ~~ THEN REPLY ~Very well.  If we can find anything, we'll return.~  DO ~SetGlobal("Freed_Everard","GLOBAL",2)~ JOURNAL ~Everard is going to try and dispel the glyphs that block the passageway to Jerrod's Stone beneath the temple.  He asked us to search the rest of the tower for another way in.~  EXIT
END

IF WEIGHT #1 ~Global("Freed_Everard","GLOBAL",2) !Global("Everard_In_Temple","GLOBAL",0)~ THEN BEGIN 32 // from:
  SAY ~[Irritated, but determined] I am still trying to force the glyphs.  [Slightly hopeful, but urgent] Have you found anything? ~ [EVER_33]
  IF ~Global("Darkside","GLOBAL",1)~ THEN REPLY ~Why, yes... we discovered the crystal shard on one of the upper levels.  We made an arrangement with it.  It asked us to perform a simple murder to seal our bargain.~  GOTO 33
  IF ~~ THEN REPLY ~No, but I was wondering if perhaps we could receive some healing.~  DO ~StartStore("EHTemple",Player1)~ EXIT
  IF ~~ THEN REPLY ~Not yet - we're still searching.~  GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY ~What are you talking about?!  Bargain?  Wh--~ [EVER_34]
  IF ~~ THEN REPLY ~It would be far better to show you.  Prepare to die, Everard.~  DO ~Enemy()~ JOURNAL ~To seal our compact with the crystal shard, we attacked Everard.  The lame fool was hardly a threat... I wonder why the shard wanted him dead? ~  EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.2
  SAY ~[Commanding voice, some strength coming back] Keep looking, then.  There's nothing you can do to help me here.~ [EVER_35]
  IF ~~ THEN REPLY ~Very well.  If we can find anything, we'll return.~  EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY ~[Stern, interrupting demon's rant] Hold, Poquelin.  It will take more than boasting to bring you victory this day.~ [EVER_36]
  IF ~~ THEN REPLY ~Everard?~  DO ~SetGlobal("VP_Everard_Move","GLOBAL",1)~ EXIT
END

IF WEIGHT #0 ~Global("End_Portal","GLOBAL",1)~ THEN BEGIN 36 // from:
  SAY ~[Slightly in awe, almost ignoring Belhifet and the party] Jerrod's Stone.  I -- have never seen it.~ [EVER_37]
  IF ~~ THEN REPLY ~Everard?  How did you get here?~  GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY ~[Still in awe of the crucified man engraved on the stone] The glyphs.  They dissolved once I felt Tempus within me, calling me to battle.  I know now what I must do - [further realization] what Jerrod had to do.  ~ [EVER_38]
  IF ~GlobalLT("Jered_Stone","GLOBAL",2)~ THEN REPLY ~What are you talking about?~  GOTO 38
  IF ~GlobalGT("Jered_Stone","GLOBAL",1)~ THEN REPLY ~Everard, don't; there *must* be another way.  The tale of Jerrod's Stone doesn't mean th--~  GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.1 37.0
  SAY ~[Calm, at peace, bitterness gone.] The tale of Jerrod's Stone is a lesson in sacrifice.  Sacrificing oneself so that others might live - that was Jerrod's choice.  It has taken me a long time, too long, to realize the nobility in such a gesture.~ [EVER_39]
  IF ~~ THEN REPLY ~Everard, stop -- what are you doing?~  DO ~SetGlobal("Freed_Everard","GLOBAL",3) SetGlobal("End_Portal","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutscene("eeEndCt3")~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 3.8 0.8
  SAY ~[Matter-of-fact, as if the portal is like a vase in the room] The door leads beneath the temple to the site of Jerrod's Stone.  It was sealed with glyphs of Tempus to prevent entry long ago.~ [EVER_40]
  IF ~GlobalLT("Jered_Stone","GLOBAL",3)~ THEN REPLY ~Jerrod's Stone?~  GOTO 9
  IF ~GlobalGT("Jered_Stone","GLOBAL",2)~ THEN REPLY ~Can you tell me the tale of Jerrod's Stone again?~  GOTO 9
  IF ~~ THEN REPLY ~I see.  I had some other questions I wished to ask you.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF WEIGHT #3 ~GlobalGT("Know_Balance","GLOBAL",0) GlobalGT("Freed_Everard","GLOBAL",0) Global("Everard_In_Temple","GLOBAL",0)~ THEN BEGIN 40 // from:
  SAY ~[Wounded from torture] You - you have returned to Easthaven - I pray you are not too late.~ [EVER_24]
  IF ~~ THEN REPLY ~Everard - what's the symbol for getting into the tower again?~  GOTO 29
  IF ~~ THEN REPLY ~I was wondering if perhaps we could receive some healing.~  DO ~StartStore("EHTemple",Player1)~ EXIT
  IF ~~ THEN REPLY ~I hope not, either.  I'll make my way to the tower soon.~  EXIT
END