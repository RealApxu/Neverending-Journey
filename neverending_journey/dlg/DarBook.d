BEGIN ~DARBOOK~

IF ~True()~ THEN BEGIN 0
  SAY ~(*Suddenly an etheral voice resounds within your head*) Prove your worth and solve the riddle, then you'll get your life and freedom.

My first you put on glowing coal
And into it you put my whole
My second really is the first
My third mislikes the winter's cold.

What is it?~
  IF ~~ THEN REPLY ~Canape.~ GOTO 1
  IF ~~ THEN REPLY ~Tomatoe.~ GOTO 1
  IF ~~ THEN REPLY ~Cauldron.~ GOTO 1
  IF ~~ THEN REPLY ~Soul.~ GOTO 1
  IF ~~ THEN REPLY ~Panacea.~ GOTO 1
  IF ~~ THEN REPLY ~Porridge.~ GOTO 1
  IF ~~ THEN REPLY ~Fire.~ GOTO 1
  IF ~~ THEN REPLY ~Spring.~ GOTO 1
  IF ~~ THEN REPLY ~Potatoe.~ GOTO 2
  IF ~~ THEN REPLY ~Kindling.~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~Wrong answer. You lack wisdowm. My guardians will teach you.~
  IF ~~ THEN DO ~ActionOverride("DarSen1",Enemy()) ActionOverride("DarSen2",Enemy()) ActionOverride("DarSen3",Enemy()) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Correct answer. You may take my part of the book.~
  IF ~~ THEN DO ~SetGlobal("VP_Dar_Quest","GLOBAL",14) ActionOverride("DarSen1",DestroySelf()) ActionOverride("DarSen2",DestroySelf()) ActionOverride("DarSen3",DestroySelf()) DestroySelf()~ EXIT
END