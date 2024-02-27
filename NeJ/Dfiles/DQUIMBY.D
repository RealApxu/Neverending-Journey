BEGIN ~DQUIMBY~

IF ~NumTimesTalkedTo(0)
Global("Know_Balance", "GLOBAL", 0)~ THEN BEGIN 0 // from:
  SAY ~Greetings, traveler!  The name's Quimby, and I welcome you to my inn!~
  IF ~~ THEN REPLY ~Well met, Quimby.  You seem rather... enthusiastic.~  GOTO 2
  IF ~~ THEN REPLY ~Hear anything interesting lately, Quimby?~  GOTO 3
  IF ~~ THEN REPLY ~I'd like a room, friend.~  DO ~StartStore("EHInn", Player1)~ EXIT
  IF ~~ THEN REPLY ~Thanks, but I am just passing through.  Farewell.~  EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("Know_Balance", "GLOBAL", 0)~ THEN BEGIN 1 // from:
  SAY ~I welcome you back to my humble inn, traveler!  How may Quimby be of assistance?~
  IF ~~ THEN REPLY ~Hear any interesting news, Quimby?~  GOTO 3
  IF ~~ THEN REPLY ~How much does a room cost, Quimby?~  DO ~StartStore("EHInn", Player1)~ EXIT
  IF ~~ THEN REPLY ~Thanks again Quimby, but I am just passing through.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY ~Ah!  Enthusiastic!  Yes!  It is rare that I get any travelers at this time of year.  Thus, I want all of my guests to feel WELCOME!  Ha-HA!~
  IF ~~ THEN REPLY ~Er... okay.  How about a room, Quimby?~  DO ~StartStore("EHInn", Player1)~ EXIT
  IF ~~ THEN REPLY ~Indeed.  Have you heard any interesting news lately, Quimby?~  GOTO 3
  IF ~~ THEN REPLY ~Do you get ANY travelers at this time of year?~  GOTO 4
  IF ~~ THEN REPLY ~Hmm.  Thanks, Quimby, but I must be going.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 3 // from: 4.1 2.1 1.0 0.1
  SAY ~Actually, yes.  The whole town's been talking about the upcoming expedition into the Spine of the World.  Excitement!~
  IF ~~ THEN REPLY ~I see.  So, about those rooms, Quimby.~  DO ~StartStore("EHInn", Player1)~ EXIT
  IF ~~ THEN REPLY ~Really?  Tell me more about this expedition.~  GOTO 5
  IF ~~ THEN REPLY ~Thanks for the information, Quimby.  I must be going.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY ~We do have one!  Ha-HA!  Yes, his name is Erevain something or another.  He is an elf AND an adventurer to boot!~
  IF ~~ THEN REPLY ~Well, if an elf AND adventurer likes the rooms here, who am I to pass up the opportunity?  How much, Quimby?~  DO ~StartStore("EHInn", Player1)~ EXIT
  IF ~~ THEN REPLY ~Did he bring any interesting news with him?~  GOTO 3
  IF ~~ THEN REPLY ~Interesting.  Farewell, Quimby.~  EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY ~Well, Hrothgar no doubt will be leading the expedition.  I've heard that Accalia, the initiate at the temple, is going, though I suppose Everard will stay behind to minister to the town.  There's a dwarf named Hildreth who's going along as well, and even Pomab has agreed to go!  Ah, what a grand adventure it will be!~
  IF ~~ THEN REPLY ~That's interesting.  How about a room, Quimby?~  DO ~StartStore("EHInn", Player1)~ EXIT
  IF ~~ THEN REPLY ~Thanks, Quimby.  I must be going.  Farewell.~  EXIT
END

IF ~GlobalGT("Know_Balance", "GLOBAL", 0)
Global("Freed_Everard", "GLOBAL", 0)~ THEN BEGIN 6 // from:
  SAY ~Please... I don't want to die.  Not here.  Not like this.  You've got to do something.  Ask Everard.  Yes, that's it.  He'll know what to do.~
  IF ~~ THEN REPLY ~I shall speak with him straight away.  Farewell.~  EXIT
END

IF ~GlobalGT("Know_Balance", "GLOBAL", 0)
Global("Freed_Everard", "GLOBAL", 1)~ THEN BEGIN 7 // from:
  SAY ~Thank you, stranger.  If you manage to get through this alive... you'll be welcome to stay at my Inn anytime -- free of charge.~
  IF ~~ THEN REPLY ~Thank you.  Farewell.~  EXIT
END