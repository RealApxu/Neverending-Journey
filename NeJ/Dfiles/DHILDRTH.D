BEGIN ~DHILDRTH~ 86006 // non-zero flags may indicate non-pausing dialogue

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Well met!  Why, ye seem to me like a fresh new vein of ore, all untried and untested.  I be Hildreth, should ye wish to know.~
  IF ~~ THEN REPLY ~A vein of ore? What do you mean?~  DO ~SetGlobal("Know_Hildreth", "GLOBAL", 1)~ GOTO 3
  IF ~!Race(Player1, Dwarf)~ THEN REPLY ~Hildreth? Isn't that sort of a feminine name for a burly dwarf warrior?~  DO ~SetGlobal("Know_Hildreth", "GLOBAL", 1)~ GOTO 2
  IF ~~ THEN REPLY ~Nice meeting you, Hildreth.  Now if you don't mind... we're rather busy.  Farewell.~  DO ~SetGlobal("Know_Hildreth", "GLOBAL", 1)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1 // from:
  SAY ~Hello again.~
  IF ~~ THEN REPLY ~I was wondering if you'd heard any news hereabouts.  Do you think you could help me out?~  GOTO 5
  IF ~~ THEN REPLY ~Nice to see you again.  Now if you'll excuse me... Farewell.~  EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY ~Do ye not have yer head screwed on straight?  I AM a female, friend.~
  IF ~~ THEN REPLY ~But... you have a beard.~  GOTO 4
  IF ~~ THEN REPLY ~Yeah, sure you are.~  GOTO 4
  IF ~~ THEN REPLY ~Uh... I see.  I think I'll be leaving.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY ~What I'm saying is that ye look a little new at this adventuring thing.  No offense intended, we all have to start somewheres.  If ye be looking for tips, I even have some news that might prove interesting to ye.~
  IF ~~ THEN REPLY ~Oh, I see.  What news do you have?~  GOTO 5
  IF ~~ THEN REPLY ~Well, I guess I understand what you're saying. I might come back later for the news.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.0
  SAY ~What, do I nay look like a wo... oh.  I see what it is now.  Dwarven women have beards, friend.~
  IF ~~ THEN REPLY ~Ah, that makes sense.  Say, have you heard any news from around here lately?~  GOTO 5
  IF ~~ THEN REPLY ~So you're a Dwarven woman?  Oh, well that explains things.  Farewell.~  EXIT
  IF ~~ THEN REPLY ~That's disgusting.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 3.0 1.0
  SAY ~I'm not all eyes and ears here.  Mostly I've been keeping to my cups to keep the chill away.  But I have heard that a local sword named Hrothgar is putting together some sort of expedition.  Sounds like it might be fun.  I'll be goin' along meself.~
  IF ~~ THEN REPLY ~Oh? What do you know about the expedition?~  GOTO 6
  IF ~~ THEN REPLY ~Interesting.  Thanks for the tip.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY ~The folks 'round here say that Hrothgar be a valiant man, but not the type to go dashing off to his death.  They say he be an excellent leader.  We're headed up to the mountains to investigate some sort of disturbance up there.  Ye'd best be talkin' to Hrothgar himself to hear the full story.~
  IF ~~ THEN REPLY ~That's a good idea.  I'll go find him now.  Farewell.~  EXIT
  IF ~~ THEN REPLY ~Well, if you're going it must be a good trip.  You seem like a seasoned adventurer.  Farewell for now.~  EXIT
END