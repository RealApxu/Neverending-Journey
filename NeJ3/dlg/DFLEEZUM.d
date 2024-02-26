BEGIN ~DFLEEZUM~

IF ~True()~ THEN BEGIN 0
  SAY ~Hey!  What 'er you doin' here?~
  IF ~~ THEN REPLY ~Uh, I must have lost my way.  Perhaps you could help me.~ GOTO 1
  IF ~AreaCheck("TT8007")~ THEN REPLY ~Do you know where is the bell?~ GOTO 4
  IF ~Global("Know_Marketh","GLOBAL",1)~ THEN REPLY ~I'm looking for Marketh.  I've come to put an end to his tyranny.~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY ~I reckon I might be able to.  Where'r ya headed?~
  IF ~Global("Know_Marketh","GLOBAL",1)~ THEN REPLY ~To Marketh.  I have come to stop his mad reign.~ GOTO 2
  IF ~Global("Know_Seth","GLOBAL",1)~ THEN REPLY ~I'm looking for Seth.~ GOTO 3
  IF ~~ THEN REPLY ~Oh, nowhere in particular.  Farewell.~ GOTO 7
END

IF ~~ THEN BEGIN 2
  SAY ~Whoa, now, young fella.  I can't let you do that.  Marketh saved me and my brother's lives when I was imprisoned years ago.  I'm obliged to keep him safe from harm.~
  IF ~~ THEN REPLY ~Why were you imprisoned?~ GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY ~Seth?  That little runt's usually down by the front of the palace, harassing everyone who passes by.  If ya can't find him there, he might be in his room on the third floor.~
  IF ~~ THEN REPLY ~Great.  Thanks.  Farewell.~ DO ~SetGlobal("FLEEZ_MOVED","GLOBAL",1)
MoveToPointNoInterrupt([855.354])
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~The bell's on the third floor.  I dunno what you'd want with it, but yeah... it's up there.  Hmm...~
  IF ~~ THEN REPLY ~Great.  Thanks.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~A long time ago, I led some men into battle.  I got some people killed.  I'm not proud 'a what I done, but I did my time like a man.  Me and my brother got framed for murder when we was in jail.  We was to be hanged.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~Marketh had a plan to escape, but he needed some experienced warriors to help him git out.  He picked me and my brother.  We been protectin' him ever since.~
  IF ~Global("Know_Marketh","GLOBAL",1)~ THEN REPLY ~Where's Marketh?  I'm going to go talk to him.~ GOTO 7
  IF ~~ THEN REPLY ~That's great.  Farewell.~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~I'm sorry young fella, but I can't let ya go.  I get the impression you're up to no good.  I'm a gonna have to prevent you from wandering around in my employer's home, causin' mischief and the like.~
  IF ~~ THEN DO ~Enemy()~ EXIT
END
