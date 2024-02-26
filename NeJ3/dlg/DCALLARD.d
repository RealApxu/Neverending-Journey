BEGIN ~DCALLARD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Hello... what are you doing in here?  Lord Chamberlain Marketh will harm you if he finds you.~
  IF ~~ THEN REPLY ~Thank you for your concern, but I'll be alright.~ GOTO 2
  IF ~~ THEN REPLY ~Who are you?  What are you doing here?~ GOTO 3
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY ~Hello again.  Remember what I told you... this is a dangerous place.  Watch your back.~
  IF ~~ THEN REPLY ~I will.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Well, alright.  Don't say I didn't warn you, though.  This is a dangerous place.~
  IF ~~ THEN REPLY ~Who are you?  What are you doing here?~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~I am Callard.  I am a sculptor for Lord Chamberlain Marketh.  He took me out of the mines so my son and I could sculpt a statue of him.  Lord Chamberlain Marketh made us tear down the statue of Dorn.  Poor Dorn.  It's a good thing he can't see his little palace now.~
  IF ~~ THEN REPLY ~What would he think?~ GOTO 4
  IF ~~ THEN REPLY ~This is a very detailed sculpture.  How do you manage to do it without having Marketh here?~ GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY ~He would think that the world had become the Worm's Lair.  What I'm doing here... it's a disgrace.  If my son's life weren't at stake, I wouldn't have any part in it.~
  IF ~~ THEN REPLY ~The sculpture you're making of Marketh... how do you get so much detail on it without having him here?~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~When we svirfneblin sculptors see a person's face, it becomes a block of stone.  Inside of every block of stone, there are a million faces.  By looking at a block of stone, we instantly know how to chisel away everything that is not the face we see in our minds.~
  IF ~~ THEN REPLY ~Really?~ JOURNAL ~Lower Dorn's Deep.

A deep gnome sculptor named Callard gave us a portrait of Marketh.  He said that one of Marketh's bodyguards, Flozem, drew it.~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~No.  Actually, we just use this drawing of him.  It's pretty good.  Flozem, one of Lord Chamberlain Marketh's bodyguards, drew it.  You can have it if you want.  We already have most of the detail done.  The face and the ring were the hardest parts.~
  IF ~~ THEN REPLY ~Thanks.  Farewell.~ DO ~GiveItem("Portrait",Player1)
SetGlobal("Flozem_Portrait","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY ~Thanks... you know, you seem pretty easy-going for a man who lives in constant fear of his life.~ DO ~GiveItem("Portrait",Player1)
SetGlobal("Flozem_Portrait","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~I don't fear for my life, just for my son's.  Fear is the one thing I wouldn't give Marketh.  I would fight for him, mine for him, I'd even die for him to save my son.  I'd never let him terrify me.  That's why he went after my son.  We're almost half the size of Marketh, but we're all bigger men than he is.~
  IF ~~ THEN REPLY ~Thanks.  Farewell.~ EXIT
END
