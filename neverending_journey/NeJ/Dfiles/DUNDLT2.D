BEGIN ~DUNDLT2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2
~True()~ THEN BEGIN 0 // from:
  SAY ~You are truly a powerful being to have dispatched my forces so readily.  I will use caution when I destroy you.~
  IF ~~ THEN REPLY ~That won't help you.  I'll still win.~  DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY ~As will I.~  DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY ~I have nothing more to say to you.~  DO ~Enemy()~ EXIT
END

IF WEIGHT #0 ~Class(Protagonist,1)~ THEN BEGIN 1 // from:
  SAY ~Ah, you have done most excellently, my friend.  For your appreciation of the dark arts, I will kill you last.~
  IF ~~ THEN REPLY ~Thanks.~  DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY ~That's a foolish decision.  I'll be going for you first.~  DO ~Enemy()~ EXIT
END

IF WEIGHT #1 ~Class(Protagonist,Paladin)~ THEN BEGIN 2 // from:
  SAY ~You and your vile unholy faith will now come to a terrible end, paladin.  Do not beg for mercy when my poison consumes you.~
  IF ~~ THEN REPLY ~Your words are meaningless to me, witch.  Faith is my armor and performing the will of my god is what pumps blood through my heart.~  DO ~Enemy()~ GOTO 4
  IF ~~ THEN REPLY ~I have nothing more to say to you, necromancer.~  DO ~Enemy()~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY ~Hmm.  Intriguing.  I am quite confident in my abilities.  If you truly seek this, I will accept.  If you have any allies out there, move them away from the bridge.  When I see that they are gone, I will meet you there for our... sport.~
  IF ~~ THEN REPLY ~I agree.  I'll do it.~  EXIT
  IF ~~ THEN REPLY ~On second thought, I think I'll take my chances with your minions.~  DO ~Enemy() Attack(Protagonist)~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 5.1 3.1 2.1 2.0
  SAY ~So be it.  You'll regret it... as do all dogs who blindly follow a crippled master into certain death.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY ~Yes!  I relish the thought of personally burying my mace in your head.  If you have allies, move them away from the bridge.  I will meet you there.~
  IF ~~ THEN REPLY ~I will fight you with honor.  You have my word.~  EXIT
  IF ~~ THEN REPLY ~I do not trust that you will fight me honorably.  I will face your minions, then you.~  DO ~Enemy() Attack(Protagonist)~ GOTO 4
END