BEGIN ~DKUTOWNG~ 85706 // non-zero flags may indicate non-pausing dialogue

IF ~~ THEN BEGIN 0 // from: 63.0 60.0 59.0 58.0 57.0 56.0 55.1 52.1 51.2 50.1 48.1 46.1 41.1 40.5 39.2 38.1 33.1 32.1 31.2 30.3 29.1 27.1 25.2 24.5 23.2 22.4 21.1 20.1 19.2 18.2 17.1 16.1 15.2 13.0 12.1 11.2 10.0 9.1 5.1 4.1 3.6 2.0
  SAY ~What did you want to know about Kuldahar?  Or did you want to know what's been going on *around* Kuldahar?~
  IF ~Global("Vale_Quest","GLOBAL",1) Global("Vale_Rumor","GLOBAL",0)~ THEN REPLY ~Do you know anything about the Vale of Shadows?~  DO ~IncrementGlobal("Vale_Rumor","GLOBAL",1)~ GOTO 34
  IF ~Global("Vale_Quest","GLOBAL",1) Global("Vale_Rumor","GLOBAL",1)~ THEN REPLY ~I've heard that some people make pilgrimages to the crypts in the Vale of Shadows -- do you know anything about that?~  DO ~IncrementGlobal("Vale_Rumor","GLOBAL",1)~ GOTO 39
  IF ~Global("Vale_Quest","GLOBAL",1) Global("Vale_Rumor","GLOBAL",2)~ THEN REPLY ~Someone mentioned I talk to Mirek, and someone else spoke of Kresselack.  Do you know anything about the creatures that inhabit the Vale of Shadows?~  DO ~SetGlobal("Vale_Rumor","GLOBAL",0)~ GOTO 47
  IF ~Global("Temple_Quest","GLOBAL",1) Global("TT3600_Visited","GLOBAL",0)~ THEN REPLY ~Do you know anything about the Temple of the Forgotten God?~  GOTO 51
  IF ~Global("Deye_Quest","GLOBAL",1)~ THEN REPLY ~Do you know anything about Dragon's Eye Mountain?~  GOTO 49
  IF ~Global("Know_Balance","GLOBAL",0)~ THEN REPLY ~I need to find the Archdruid of Kuldahar.  Where is he?~  GOTO 11
  IF ~Global("Kuldahar_Rumor","GLOBAL",0)~ THEN REPLY ~"Around Kuldahar?" Do you mean the weather?~  DO ~IncrementGlobal("Kuldahar_Rumor","GLOBAL",1)~ GOTO 53
  IF ~Global("Kuldahar_Rumor","GLOBAL",1)~ THEN REPLY ~I've heard talk of the weather... and disappearances.  What do you know of those?~  DO ~IncrementGlobal("Kuldahar_Rumor","GLOBAL",1)~ GOTO 55
  IF ~Global("Kuldahar_Rumor","GLOBAL",2)~ THEN REPLY ~I've heard about missing people and the strange weather.  Do you know what's causing it? ~  DO ~IncrementGlobal("Kuldahar_Rumor","GLOBAL",1)~ GOTO 56
  IF ~Global("Kuldahar_Rumor","GLOBAL",3)~ THEN REPLY ~Do people leave the town at all?~  DO ~IncrementGlobal("Kuldahar_Rumor","GLOBAL",1)~ GOTO 57
  IF ~Global("Kuldahar_Rumor","GLOBAL",4)~ THEN REPLY ~Any strange monster sightings? ~  DO ~IncrementGlobal("Kuldahar_Rumor","GLOBAL",1)~ GOTO 58
  IF ~Global("Kuldahar_Rumor","GLOBAL",5)~ THEN REPLY ~Any idea where the source of Kuldahar's troubles might be coming from?~  DO ~IncrementGlobal("Kuldahar_Rumor","GLOBAL",1)~ GOTO 59
  IF ~Global("Kuldahar_Rumor","GLOBAL",6)~ THEN REPLY ~Can you tell me anything about the Spine of the World?~  DO ~IncrementGlobal("Kuldahar_Rumor","GLOBAL",1)~ GOTO 60
  IF ~Global("Easthaven_Rumor","GLOBAL",7)~ THEN REPLY ~I've heard a lot about the town.  Anything else going on of interest?~  DO ~SetGlobal("Easthaven_Rumor","GLOBAL",0)~ GOTO 61
  IF ~~ THEN REPLY ~I'd like to know about Kuldahar itself, actually.~  GOTO 14
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~Global("Kuldahar_Murder","GLOBAL",1)~ THEN BEGIN 1 // from:
  SAY ~I've heard of you.  I suggest you leave Kuldahar before we send your corpse to the Vale of Shadows, butcher.~
  IF ~~ THEN REPLY ~I won't be leaving...  but I may send your corpse ahead to warn the dead of my coming.~  DO ~Enemy() ReputationInc(-5)~ EXIT
  IF ~~ THEN REPLY ~I'll leave.  For now.~  EXIT
END

IF ~GlobalGT("Kuldahar_Attack","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Where in the hells did those creatures come from that stormed Kuldahar?  One moment, everything was calm, then suddenly... the great tree was being attacked!~
  IF ~Global("Arundel_Belhifet","GLOBAL",0)~ THEN REPLY ~I don't know - but I *will* get to the bottom of it.  In the meantime, I needed to ask you some things about Kuldahar.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 3 // from:
  SAY ~Back again, eh?  Something else I can help you with?~
  IF ~Global("Vale_Quest","GLOBAL",1) Global("Vale_Rumor","GLOBAL",0)~ THEN REPLY ~Do you know anything about the Vale of Shadows?~  DO ~IncrementGlobal("Vale_Rumor","GLOBAL",1)~ GOTO 34
  IF ~Global("Vale_Quest","GLOBAL",1) Global("Vale_Rumor","GLOBAL",1)~ THEN REPLY ~I've heard that some people make pilgrimages to the crypts in the Vale of Shadows -- do you know anything about that?~  DO ~IncrementGlobal("Vale_Rumor","GLOBAL",1)~ GOTO 39
  IF ~Global("Vale_Quest","GLOBAL",1) Global("Vale_Rumor","GLOBAL",2)~ THEN REPLY ~Someone mentioned I talk to Mirek, and someone else spoke of Kresselack.  Do you know anything about the creatures that inhabit the Vale of Shadows?~  DO ~SetGlobal("Vale_Rumor","GLOBAL",0)~ GOTO 47
  IF ~Global("Temple_Quest","GLOBAL",1) Global("TT3600_Visited","GLOBAL",0)~ THEN REPLY ~Do you know anything about the Temple of the Forgotten God?~  GOTO 51
  IF ~Global("Deye_Quest","GLOBAL",1)~ THEN REPLY ~Do you know anything about Dragon's Eye Mountain?~  GOTO 49
  IF ~Global("Know_Balance","GLOBAL",0)~ THEN REPLY ~I need to find the Archdruid of Kuldahar.  Where is he?~  GOTO 11
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~NumTimesTalkedTo(0) RandomNum(3, 2)~ THEN BEGIN 4 // from:
  SAY ~Wh -- by the hells, I wasn't expecting any new faces in Kuldahar with the passes being what they are.  You from Easthaven?  How did you get through? ~
  IF ~~ THEN REPLY ~We were part of an expedition from Easthaven - but not all of us made it.  ~  GOTO 9
  IF ~~ THEN REPLY ~Hold your tongue; I have some questions about this town I would have you answer first.~  GOTO 0
  IF ~Global("Know_Balance","GLOBAL",0)~ THEN REPLY ~I need to find the Archdruid of Kuldahar.  Where is he?~  GOTO 11
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~NumTimesTalkedTo(0) RandomNumLT(3, 4)~ THEN BEGIN 5 // from:
  SAY ~I *heard* there were strangers in town, but I didn't believe it.  You from Easthaven?  How did you get through? ~
  IF ~~ THEN REPLY ~We were part of an expedition from Easthaven - but not all of us made it.  ~  GOTO 9
  IF ~~ THEN REPLY ~Hold your tongue; I have some questions about this town I would have you answer first.~  GOTO 0
  IF ~Global("Know_Balance","GLOBAL",0)~ THEN REPLY ~I need to find the Archdruid of Kuldahar.  Where is he?~  GOTO 11
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~NumTimesTalkedTo(0) RandomNum(3, 1)~ THEN BEGIN 6 // from:
  SAY ~Stop right there - don't take another step closer.  Who are you? How did you get through the Pass?~
  IF ~~ THEN REPLY ~I mean no harm.  What's wrong?~  GOTO 7
  IF ~~ THEN REPLY ~Sorry to trouble you.  I will take my questions elsewhere.~  EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY ~We've had some troubles of late.  And now we've got strangers in town that shouldn't have been able to make it through the Pass.  Care to explain how you got here?~
  IF ~~ THEN REPLY ~We were part of an expedition from Easthaven - but not all of us made it.  ~  GOTO 9
  IF ~~ THEN REPLY ~Hold your tongue; I have some questions about this town I would have you answer first.~  GOTO 8
  IF ~Global("Know_Balance","GLOBAL",0)~ THEN REPLY ~I need to find the Archdruid of Kuldahar.  Where is he?~  GOTO 11
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY ~Take your questions elsewhere, stranger, for you'll get no answers from me.  You watch yourself in this town -- if you cross anyone, we'll see to it you don't leave.~
  IF ~~ THEN REPLY ~Look, calm yourself; we mean no harm.  We were part of an expedition from Easthaven - but not all of us made it.  ~  GOTO 9
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 7.0 5.0 4.0
  SAY ~My sympathies for your fallen comrades -- What happened? ~
  IF ~~ THEN REPLY ~The Pass is snowed in, and to make things worse, there's a horde of creatures in the Pass, mostly goblins and orcs.  I doubt any caravans will be through for quite some time.~  GOTO 10
  IF ~~ THEN REPLY ~Hold your tongue; I have some questions about this town I would have you answer first.~  GOTO 0
  IF ~Global("Know_Balance","GLOBAL",0)~ THEN REPLY ~I need to find the Archdruid of Kuldahar.  Where is he?~  GOTO 11
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY ~That is grim news indeed.  I fear things here in Kuldahar are not much better -- you may wish you'd stayed in Easthaven.~
  IF ~~ THEN REPLY ~Tell me about Kuldahar.~  GOTO 0
  IF ~Global("Know_Balance","GLOBAL",0)~ THEN REPLY ~I need to find the Archdruid of Kuldahar.  Where is he?~  GOTO 11
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 9.2 7.2 5.2 4.2 3.5 0.5
  SAY ~Archdruid of Kuldahar?  Friend, there *is* no Archdruid of Kuldahar.  I hope you didn't travel through the Pass to find one, else your journey's been in vain.  ~
  IF ~Class(Player1, DRUID)~ THEN REPLY ~No... the Archdruid is here - I can feel his presence in the land.  He may simply not be advertising his presence to others.~  GOTO 12
  IF ~!Class(Player1, DRUID)~ THEN REPLY ~Is there anyone, another druid perhaps, that might know for certain?~  GOTO 12
  IF ~~ THEN REPLY ~Hmm.  Tell me about Kuldahar, then.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1 11.0
  SAY ~Well, there's old Arundel - we've seen him talking to birds, but we figured that he was... well, a little touched in the head.  Could be he knows where you'd find a druid.  ~
  IF ~~ THEN REPLY ~Where is the house of this Arundel? ~  GOTO 13
  IF ~~ THEN REPLY ~I may look for him, then.  I had more questions about Kuldahar first, however.~  GOTO 0
  IF ~~ THEN REPLY ~I will seek him out, then.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY ~Southwest section of town, there's a two-story house embedded into the tree; looks like a big stone wall with a door.  That's Arundel's house.  It's just south and east of the Kuldahar Run, east of the Bridge.~
  IF ~~ THEN REPLY ~I may look for him, then.  I had more questions about Kuldahar first, however.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 14 // from: 63.1 60.1 59.1 58.1 57.1 56.1 55.0 54.0 52.0 51.1 50.0 48.0 46.0 41.0 40.4 39.1 38.0 33.0 32.0 31.1 30.2 29.0 27.0 25.1 24.4 23.1 22.3 21.0 20.0 19.1 18.1 17.0 16.0 15.1 0.14
  SAY ~Well, Kuldahar's not a big place, but I can tell you a bit about it, if you want.  ~
  IF ~~ THEN REPLY ~How long has that tree been here?  It's huge.~  GOTO 15
  IF ~~ THEN REPLY ~Any place I could tip back a tankard?  I've got quite a thirst.~  GOTO 17
  IF ~GlobalLT("Aldwin_Eidan","GLOBAL",2)~ THEN REPLY ~I'm looking for a place to rest, actually.~  GOTO 18
  IF ~Global("Aldwin_Eidan","GLOBAL",2)~ THEN REPLY ~I'm looking for a place to rest, actually.~  GOTO 19
  IF ~~ THEN REPLY ~Any supply shops or weapon shops? ~  GOTO 21
  IF ~~ THEN REPLY ~There any churches or temples nearby?~  GOTO 22
  IF ~Race(Player1, GNOME)~ THEN REPLY ~I thought I saw a... ship... lying by the great tree when I came in.~  GOTO 30
  IF ~!Race(Player1, GNOME)~ THEN REPLY ~I thought I saw a... ship... lying by the great tree when I came in.~  GOTO 31
  IF ~~ THEN REPLY ~We saw a tower by the tree from the road.  Is that your local watchtower?~  GOTO 33
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY ~Been here as long as I can remember - a blessing as near as I can tell.  The chilly weather doesn't even touch the town with the tree growing here; it radiates enough heat to keep things green, which is a sight for tired eyes here in the North.  But hells, if you came through the Pass, you'll know that already.~
  IF ~Class(Player1,DRUID)~ THEN REPLY ~The tree seems... weak, somehow.  Ill.  Yet I know not why.  Is there something wrong with it?~  GOTO 16
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 16 // from: 24.1 15.0
  SAY ~It's more than that - it's like the Great Tree's influence is... shrinking, somehow.  We don't know why.  People have had to abandon the outlying farmsteads when the temperature dropped, though.  No telling what's next.~
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY ~Ah, you'd be looking for Whitcomb's place, the Root Cellar.  You'll find that just a little southeast of the base of the great tree, in the middle of a cluster of three buildings.  Keep an eye out - with the roots being as huge as they are, you can walk right over the tavern and not know it's there.  ~
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.2
  SAY ~Well - hmmmm.  There's the Evening Shade, but... well, the previous innkeeper was one of the townsfolk who's gone missing, and it's come under new ownership.  Some halfling merchant from the south.  Not a very friendly fellow, but I suppose the Evening Shade's all there is for travelers.  You don't want to be sleeping outside with all the disappearances.~
  IF ~~ THEN REPLY ~Disappearances?~  GOTO 20
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.3
  SAY ~There's the Evening Shade - but well, I don't mean to tell tales, but from what I've heard the current owner actually found the old owner dead in the inn, and he buried the body in secret and tried to forge a claim to the inn.  Very shady stuff - but he *did* come clean to the elders; a guilty conscience, I suppose.  In any event, the Evening Shade's all there is for travelers.  You don't want to be sleeping outside with all the disappearances.~
  IF ~~ THEN REPLY ~I don't know if a guilty conscience had anything to do with it.  What's this about disappearances?~  GOTO 20
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 18.0
  SAY ~Aye, a lot of people have gone missing recently - one of them was Conlan's boy, Sheemish.  The next morning, the whole town searched for the boy but turned up nothing.  He was just gone.  Vanished without a trace.  Then Mother Egenia from the church, Eidan the Innkeeper, Maegan Potts - and others.  Not a trace of any of them.  *Nothing.*~
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 21 // from: 14.4
  SAY ~There's two - if weapons are what you're wanting, go see Conlan the Smith, in the northern center part of town; his forge is burning day and night, so it's hard to miss.  If you're looking for general supplies, go see Gerth - his shop's near Kuldahar run, north of the bridge.  It's got a railing that runs around the edge, and juts out over the water.~
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.5
  SAY ~There's a Temple to Ilmater here, in the northeast canyon, just beneath the wrecked airship.  Don't know if that's your faith or not, but the Brothers and the Reverend Mother are good people.~
  IF ~!Class(Player1,CLERIC) !Class(Player1,PALADIN)~ THEN REPLY ~Ilmater?~  GOTO 23
  IF ~Class(Player1,CLERIC)~ THEN REPLY ~Ilmater?  The Broken God, correct?~  GOTO 23
  IF ~Class(Player1,PALADIN)~ THEN REPLY ~Ilmater?  The Broken God, correct?~  GOTO 23
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.2 22.1 22.0
  SAY ~Aye, he's the god of suffering, the crying god.  His priests seek to help alleviate the sufferings of others by taking on their pain.  Don't know all the teachings, but that's pretty much how I understand it.~
  IF ~~ THEN REPLY ~Don't you worship him?~  GOTO 24
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY ~Well, I'll tell you friend, one look at the Great Tree of Kuldahar, and it seems to me that nature's the only thing really deserving of worship around here.  I mean - the branches nearly scrape the clouds, it seems.  Beautiful sight, it is.~
  IF ~Class(Player1,DRUID) Global("Druid_Blessing","GLOBAL",0)~ THEN REPLY ~It gratifies me to hear of your respect for nature.  I, too, have taken nature into my heart, and it grants me strength.  ~  GOTO 25
  IF ~Class(Player1,DRUID) Global("Druid_Blessing","GLOBAL",1)~ THEN REPLY ~The tree is strong, indeed - but it seems... weak, somehow.  Ill.  Yet I know not why.~  GOTO 16
  IF ~Global("Ilmater_Blessing","GLOBAL",0) !Class(Player1,DRUID) OR(2) Alignment(Player1,LAWFUL_GOOD) Alignment(Player1,NEUTRAL_GOOD) OR(2) Class(Player1,CLERIC) Class(Player1,PALADIN)~ THEN REPLY ~Have you ever heard the teachings of Ilmater?  I think they might make you see the church differently.~  GOTO 28
  IF ~Class(Player1,PALADIN) Global("Ilmater_Blessing","GLOBAL",0)~ THEN REPLY ~Have you ever heard the teachings of Ilmater?  I think they might make you see the church differently.~  GOTO 28
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY ~If I had half that oak's strength, I'd be a fortunate one, I would.~
  IF ~Class(Player1,DRUID)~ THEN REPLY ~I could bestow upon you a minor blessing, if you're willing.~  DO ~SetGlobal("Druid_Blessing","GLOBAL",1)~ GOTO 26
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY ~Aye - I'd appreciate such a kindness, I would.  ~
  IF ~~ THEN REPLY ~Very well.  Close your eyes - feel the ground beneath your feet, the running water of the creek, the wind through the branches... now open your eyes.~  DO ~GiveItemCreate("Misc33",Player1, 0, 0, 0) AddExperienceParty(11500)~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY ~Whoa.  Everything seems... clearer... nay, sharper, somehow.  Thank you.  Here - take this; it's not much, but it might be enough to pay for your stay here in Kuldahar.~
  IF ~~ THEN REPLY ~Your offering is welcomed.  I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~Thank you.  I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I am grateful, but I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.3 24.2
  SAY ~Well, maybe so.  What are his teachings?~
  IF ~~ THEN REPLY ~Ilmater is the willing sufferer.  He takes on the burdens and pains of others, and so do his priests.  I'm sure you've noticed the priests put others ahead of themselves, and they are always there when one needs healing or comfort.~  DO ~SetGlobal("Ilmater_Blessing","GLOBAL",1) AddExperienceParty(11500)~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY ~Hmm.  I suppose I'd always assumed the priests had been helping the town in the hopes of gaining converts.  Maybe I'll attend one of their worship days and see a little more of what the church is like.  Thanks for opening my eyes a little.~
  IF ~~ THEN REPLY ~It was my pleasure.  I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~You're welcome.  I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 30 // from: 14.6
  SAY ~Oh, you mean that airship Fiddlebender's holed up in?   Yeah, well, I thought you were related to him when you first entered town.~
  IF ~Global("Spoke_Gnome","GLOBAL",0)~ THEN REPLY ~Why?  Is he a gnome?~  GOTO 32
  IF ~Global("Spoke_Gnome","GLOBAL",1)~ THEN REPLY ~So THAT'S where Fiddlebender is.  I've been getting tired of being mistaken for him.  He lives in the airship, you say?~  GOTO 32
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 31 // from: 14.7
  SAY ~Oh, you mean that airship Fiddlebender's holed up in?   Yeah, well, for the whole story, you'd have to speak to him about it.  ~
  IF ~~ THEN REPLY ~This... Fiddlebender, he lives in the airship, then? ~  GOTO 32
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 30.1 30.0
  SAY ~Aye, Fiddlebender's our local... 'alchemist,' I guess you Southerners might say.  Makes potions and concoctions.  And the occasional explosion.  He'll need to start adding chimneys to pump out the smoke at the rate he's going.~
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 33 // from: 14.8
  SAY ~No, that's the tower of Orrick the Grey.  Fortunate we are to have a wizard this far north.  Friendlier than most spell-casters I've known; he values his privacy, but I still see him tip back a tankard or two with the best of them at the Root Cellar.  He's got some goblin that does chores for him.  ~
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 34 // from: 3.0 0.0
  SAY ~The Vale of Shadows?  Might want to ask Mirek.  He and his brother Silas make a pilgrimage there every year to pay their respects to their ancestors.  I think they left on their trip a day or two ago, though, so they won't be back for a while.~
  IF ~Global("Mirek_Quest","GLOBAL",0)~ THEN REPLY ~I'll see if I can find them in the Vale, then.~  GOTO 36
  IF ~GlobalGT("Mirek_Quest","GLOBAL",0) GlobalLT("Mirek_Quest","GLOBAL",5)~ THEN REPLY ~I ran into Mirek.  He was nearly killed by a pack of yetis that were prowling the Vale.  I offered to go get a heirloom of his back.~  GOTO 36
  IF ~Global("Mirek_Quest","GLOBAL",5)~ THEN REPLY ~I ran into Mirek.  He was nearly killed by a pack of yetis that were prowling the Vale.  I ended up going to fetch one of his family heirlooms back from a yeti that had swallowed it... and his brother.~  GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.2
  SAY ~So you're the one!  Bravo, indeed.  Takes a braver one than me to face down one of those winter beasts.  ~
  IF ~~ THEN REPLY ~Thanks.  Can you tell me anything else about the Vale, especially the crypts?~  GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0 34.1 34.0
  SAY ~Friend, don't go stepping foot into the Vale of Shadows - it's not a place for the living, and as long as the dead mind their own affairs, we mind ours.~
  IF ~~ THEN REPLY ~I have to go there - the Vale may be the source of the troubles in Kuldahar.~  GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY ~Never been to the Vale of Shadows myself, but I've heard it's covered in shadows - it's like twilight there all the time.  No good'll come from the living setting foot in the Vale.  Let evil feed on evil, that's what I say.~
  IF ~~ THEN REPLY ~There's not much choice.  Any advice or information you could offer would be welcome.~  GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY ~Well, I don't know too much about the Vale - or even like talking about it, for that matter.  You may have better luck with some of the other townsfolk.  They may know more than I do, and there's no telling what random tidbit someone might cough up when you're talking with them.~
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I'll ask some of the other townsfolk, then.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 39 // from: 3.1 0.1
  SAY ~You know, just last month, Gerth was going on about one of the tombs said to be in the Vale of Shadows - says one of them's the tomb of Kresselack the Black Wolf.~
  IF ~~ THEN REPLY ~Kresselack?  Don't think I've ever heard of him.~  GOTO 40
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I'll ask some of the other townsfolk, then.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY ~Terrorized this region years ago, he did, with a whole legion of soldiers, shamans, and priests under his banner.~
  IF ~Class(Player1, CLERIC)~ THEN REPLY ~Priests? What kind of priests?~  GOTO 42
  IF ~Class(Player1, FIGHTER) Global("Sword_Gem","GLOBAL",0)~ THEN REPLY ~That's a good-sized force for this region.  It'd take a man of some strength to lead such a band, especially if it had spell casters in it.~  GOTO 44
  IF ~Class(Player1, RANGER) Global("Sword_Gem","GLOBAL",0)~ THEN REPLY ~That's a good-sized force for this region.  It'd take a man of some strength to lead such a band, especially if it had spell casters in it.~  GOTO 44
  IF ~Class(Player1,PALADIN) Global("Sword_Gem","GLOBAL",0)~ THEN REPLY ~That's a good-sized force for this region.  It'd take a man of some strength to lead such a band, especially if it had spell casters in it.~  GOTO 44
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I'll ask some of the other townsfolk, then.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY ~If so, it's another reason the living should avoid the Vale.~
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I'll ask some of the other townsfolk, then.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 42 // from: 40.0
  SAY ~Priests that would make the dead rise, friend.  'Bonedancers,' I think they called them.  That's another reason the Vale of Shadows should be left alone.  I doubt Kresselack rests easily in his crypt.~
  IF ~~ THEN REPLY ~Bonedancers?  That would make them priests of Myrkul, Lord of the Dead.  The Bonedancers' duty lies in raising undead guardians - especially for tombs they don't wish defiled.  I imagine Kresselack's tomb is well-guarded by undead.    ~  DO ~SetGlobal("Priest_Gem","GLOBAL",1) GiveItemCreate("Misc34",Player1, 0, 0, 0)~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY ~Look, if you're making your way to the Vale to try and help us here in Kuldahar, there's no reason you shouldn't be outfitted properly, especially if you'll be facing anything these... 'Bonedancers'... have raised from their graves.  Take this small token with my good graces.  Maybe you can purchase something from Orrick at the tower or Fiddlebender to make those undead think twice about tangling with you.~
  IF ~~ THEN REPLY ~Your token is appreciated.  Thank you.~  GOTO 46
END

IF ~~ THEN BEGIN 44 // from: 40.3 40.2 40.1
  SAY ~Rumor has it he had a sword as large as a man, able to cleave enemies in half.  Not only that, but it had some enchantment that helped Kresselack ward off the cold... but not the chill of death, I'll wager.~
  IF ~~ THEN REPLY ~Well, a good blade can be the best right hand a leader can have.  It can turn a capable leader into a champion of the people.  ~  DO ~SetGlobal("Sword_Gem","GLOBAL",1) GiveItemCreate("Misc34",Player1, 0, 0, 0)~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY ~Look, if you're making your way to the Vale to try and help us here in Kuldahar, there's no reason you should have steel that's any less than Kresselack's - here's a small token you can use at Conlan's smithy, if you need to purchase a better blade.  Take it with my good graces.~
  IF ~~ THEN REPLY ~Your token is appreciated.  Thank you.~  GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0 43.0
  SAY ~You can thank me by being cautious and staying alive.  If you have to cross paths with the dead, do it from a distance, with a LOT of arrows.  Most of them can do horrible things just by *touching* you.~
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 47 // from: 3.2 0.2
  SAY ~Saw one of those huge worms, carrion crawlers, once -- by the road leading to the Vale of Shadows.  When one of the townsfolk spotted it, it was feasting on a caravan guard that had stepped out to relieve himself of his  "traveler's burden."  Must have been quite a shock to him... but not for long, fortunately.~
  IF ~~ THEN REPLY ~What did you do?~  GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY ~Me and some of the men got together and drove the damn thing off with arrows - those crawlers can paralyze a man with their tentacles, and if they do, it's a long, horrible death watching them eat you, as you lie there... helpless.~
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 49 // from: 3.4 0.4
  SAY ~Dragon's Eye is a volcanic mountain to the north, with lava boiling in its belly.  To hear tell, trolls infest the region - normal trolls inside the mountain and those damnable ice trolls infest the outside.~
  IF ~~ THEN REPLY ~Ice trolls?~  GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY ~Aye, trolls, but made all of ice.  They're not uncommon here in the North.  They aren't nearly as tough as normal trolls, but you need enchanted weapons to hit them.~
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 51 // from: 3.3 0.3
  SAY ~We don't talk about it much here in town.  Place is a bad omen, it is.  I hear giants worship there, and worse things.  We leave them alone, and they leave us alone.  Maybe one day the winter'll freeze 'em all, and we'll never have to worry about them again.~
  IF ~~ THEN REPLY ~Giants? ~  GOTO 52
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY ~Aye, verbeeg giants.  Half again as tall as a man, dressed all in furs.  Saw one once a long time ago.  Pretty much stick to themselves, but they can snap a tree in half just by leaning against it.  Wouldn't want to have to fight one.~
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 53 // from: 0.6
  SAY ~This winter's been a season of evil here in Kuldahar - people vanishing, sudden storms, monsters sighted in the Pass - it's all going to get a lot worse before the year is done, mark my words.~
  IF ~~ THEN REPLY ~I see.  Anything else you can tell me?~  GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY ~Ask some of the other townsfolk - they might know something I don't, and you'll never know what bit of information they got in their heads they might randomly cough up when asked.~
  IF ~~ THEN REPLY ~Very well, then.  Can you tell me a little about the town?~  GOTO 14
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 55 // from: 0.7
  SAY ~Well, a lot of people have gone missing recently - one of them was Conlan's boy, Sheemish.  The next morning, the whole town searched for the boy but turned up nothing.  He was just gone.  Vanished without a trace.  Then Mother Egenia from the church, Eidan the Innkeeper, Maegan Potts - and others.  Not a trace of any of them.  *Nothing.*~
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 56 // from: 0.8
  SAY ~It's said the ring of warmth around the great tree of Kuldahar is shrinking.  Decent folk have needed to leave the outlying farmsteads and move closer to Kuldahar when the snows claimed their home.  Maybe the Great Oak's dying -- if so, it's the beginning of the end for Kuldahar.  ~
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 57 // from: 0.9
  SAY ~Some of the folks hereabouts make pilgrimages to the Vale of Shadows to pay their respects to the dead.  They haven't done that much of late, mostly because of all the troubles we've been having.  ~
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 58 // from: 0.10
  SAY ~Well, no new critters - but have you seen any beetles in the Pass or in Easthaven?  Hear tell, the Kuldahar tree draws them to the area somehow.  Seen fire beetles, normal beetles, and even some giant varieties in some of the caves in the area.  You'd think they couldn't survive this far north, but they do anyways.~
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 59 // from: 0.11
  SAY ~There's a temple up in the mountains to some nameless god.  Rumor has it the temple was founded by some priests from this very town years ago.  Could be that's where our troubles are coming from.~
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 60 // from: 0.12
  SAY ~Well, I hear there's miles of dwarven ruins in the Spine of the World Mountains.  If someone could find their way in there, I'd imagine they'd find halls paved in gold and chandeliers of fire gems.~
  IF ~~ THEN REPLY ~I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 61 // from: 0.13
  SAY ~Don't know if you've heard, but our town wizard's got this goblin that runs chores for him.  ~
  IF ~~ THEN REPLY ~Oh?~  GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY ~Aye, just last week, the goblin was over at Gerth's, and I saw him trip over the railing and fall into the water!  Me and a couple of other folks fished him out, but he was as wet as a knucklehead trout.  ~
  IF ~~ THEN REPLY ~I'll bet.~  GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY ~Funny part is, the goblin said he didn't need any help - he was about to cast a 'flying spell' and magic himself outta the river.  Ha!  No wonder goblins don't live long.~
  IF ~~ THEN REPLY ~Not when I'm around, they don't.  I had some more questions about Kuldahar in general.~  GOTO 0
  IF ~~ THEN REPLY ~I had some more questions about the town.~  GOTO 14
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~  EXIT
END