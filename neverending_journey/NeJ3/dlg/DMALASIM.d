BEGIN ~DMALASIM~

IF ~True()~ THEN BEGIN 0
  SAY ~Take one more step and these slaves will die.  You see the golems to each side of me?  They are more than capable of killing all of these pathetic creatures.~
  IF ~~ THEN REPLY ~Hold on.  I'm not going anywhere.  Just don't hurt the slaves.~ DO ~Enemy()~ GOTO 1
  IF ~Global("Golem_Commands","GLOBAL",1)
CheckStatLT(LastTalkedToBy,9,INT)~ THEN REPLY ~Malavon, I have just one word for you: Stam.~ DO ~Enemy()~ GOTO 8
  IF ~Global("Golem_Commands","GLOBAL",1)
CheckStatGT(LastTalkedToBy,8,INT)
CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY ~Malavon, I have just one word for you: Met.~ DO ~SetGlobal("Golem_Commands","GLOBAL",2)
Enemy()~ GOTO 9
  IF ~Global("Golem_Commands","GLOBAL",1)
CheckStatGT(LastTalkedToBy,15,INT)~ THEN REPLY ~Malavon, I have two words for you: Kalam, Stam.~ DO ~SetGlobal("Golem_Commands","GLOBAL",3)
Enemy()~ GOTO 10
  IF ~~ THEN REPLY ~What's your problem?  Too afraid to fight me one-on-one?~ DO ~Enemy()~ GOTO 2
  IF ~~ THEN REPLY ~Eh, you're bluffing.~ DO ~Enemy()~ GOTO 3
  IF ~~ THEN REPLY ~You think I care about your stupid slaves?  Go ahead and kill them.  It'll just give me more time to get to you.~ DO ~Enemy()~ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY ~Okay.  Drop your weapons.  *Drop them!*  Drop any wands or potions you have, too.  We wouldn't want to hurt the precious little pathetic svirfneblin, now would we?~
  IF ~~ THEN REPLY ~I changed my mind.  You're dead.~ GOTO 4
  IF ~~ THEN REPLY ~You're crazy.~ GOTO 6
  IF ~~ THEN REPLY ~Fine, fine.  I'll do it.  Will it make you happy?~ GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY ~No, not really.  I just like using morality against people.  I also like watching these worms die.  Why not combine the two?  It's fun for everyone.  Well, maybe just for me.  I don't know.  I haven't been out of here much recently.  Why should I?  Ha ha!  I can see everything from here!  I AM ALWAYS WATCHING, WATCHING!~
  IF ~~ THEN REPLY ~You're crazy.~ GOTO 6
  IF ~~ THEN REPLY ~I'm calling your bluff.  You're not going to kill those slaves.~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~You're going to feel very bad in just a moment.  But I... oh, I will feel oh so *good.*  Ha ha ha!  Suffer!  Suffer!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~You're no fun at all.  Oh, well.  Matron Mother always said there'd be times like this.  Ha ha ha!  *Die!*~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~No, not really, but thanks for asking.  Now, if you wouldn't mind, *die!*~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~You're already boring me with your "crazy" talk.  I think that *I'll* be setting the standards for sanity around here, thank you.~
  IF ~~ THEN REPLY ~Do sane people cut the eyes out of dozens of gnomes?~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~They were *staring* at me, damn you!  They were always watching, just as you are watching!  My sisters were always watching, too.  Only Gina still has her eyes, just so she can see Marketh leering over her.~
  IF ~~ THEN REPLY ~I'm calling your bluff.  You're not going to kill those slaves.~ GOTO 3
  IF ~~ THEN REPLY ~Okay, fine.  You've convinced me.  You'll kill them.  Crazy bastard.  What do you want me to do?~ GOTO 1
END

IF ~~ THEN BEGIN 8
  SAY ~Well, thanks a lot, friend.  You just commanded my golems to attack.  Thanks for saving me the effort!  Ha ha ha!  Idiot.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~Aaaagh!  Damn you!  How did you find the command word to temporarily shut down my golems?  I'll have your eyes on a skewer for this!  *Die!*~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~What?  No.  *No!*  Stay back, my pets, stay back!  Aaaagh!~
  IF ~~ THEN EXIT
END
