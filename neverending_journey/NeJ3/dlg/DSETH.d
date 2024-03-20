BEGIN ~DSETH~

IF ~True()~ THEN BEGIN 0
  SAY ~Papers, please.~
  IF ~~ THEN REPLY ~Uh... what?~ DO ~SetGlobal("Know_Seth","GLOBAL",1)~ JOURNAL ~Lower Dorn's Deep.

A halfling named Seth asked me for "papers" outside of a palace in Durdel Anatha.  When I expressed my confusion, he asked me if someone in the "Kraken Society" had sent me.~ GOTO 1
  IF ~~ THEN REPLY ~We don't have the papers you're looking for.~ DO ~SetGlobal("Know_Seth","GLOBAL",1)
Enemy()~ JOURNAL ~Lower Dorn's Deep.

A halfling named Seth asked me for "papers" outside of a palace in Durdel Anatha.  When I told him that I didn't have any papers for him, he had a gang of hidden goons leap out and attack me.~ GOTO 2
  IF ~~ THEN REPLY ~Sorry.  I must have left them at home.  Farewell.~ DO ~SetGlobal("Know_Seth","GLOBAL",1)
Enemy()~ JOURNAL ~Lower Dorn's Deep.

A halfling named Seth asked me for "papers" outside of a palace in Durdel Anatha.  When I told him that I didn't have any papers for him, he had a gang of hidden goons leap out and attack me.~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY ~Hmm.  I don't suppose you were *told* to come here by someone in the Kraken Society, were you?~
  IF ~~ THEN REPLY ~Nope.  I don't know what you're talking about.~ GOTO 2
  IF ~Race(Protagonist,Halfling)~ THEN REPLY ~No, brother.  I heard that one of my fellows was up in the big time down here and I came a lookin'.  Sorry for the intrusion.  How's about giving a distant kinsman some work?~ GOTO 11
  IF ~~ THEN REPLY ~Yep.  That's right.  Me and the Kraken Society... we go way back.  Ahh... the good old "Kraken Days."~ JOURNAL ~Lower Dorn's Deep.

I told Seth that I've known the Kraken Society for years.  Apparently, he wasn't convinced.  He had a bunch of thugs jump me.~ GOTO 4
  IF ~OR(3)
CheckStatGT(LastTalkedToBy,12,INT)
CheckStatGT(LastTalkedToBy,12,CHR)
CheckStatGT(LastTalkedToBy,12,WIS)~ THEN REPLY ~Yes.  I have connections with the Kraken Society.  I've done some jobs for them in the past, so they thought they could trust me with a job here.~ JOURNAL ~Lower Dorn's Deep.

I told Seth that I've done work for the Kraken Society.  I kept it pretty casual and nonchalant.  He wasn't entirely convinced, so he asked me a slew of questions about the Kraken and whom we were supposed to work and fight for.~ GOTO 5
  IF ~~ THEN REPLY ~Er.. I think I should go now.  Farewell.~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~How unfortunate for you. If you will excuse me... Get them! Now, now!~
  IF ~~ THEN DO ~SetGlobal("MAP_GROUP_HOSTILE10","MYAREA",1)
SetGlobal("SETH_ESCAPE","GLOBAL",1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~Not so fast, chum. If you don't have the proper papers, I'm afraid you'll have to be killed. Sorry about this. I'm sure you understand... Get them! Now, now!~
  IF ~~ THEN DO ~SetGlobal("MAP_GROUP_HOSTILE10","MYAREA",1)
SetGlobal("SETH_ESCAPE","GLOBAL",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Sure. For some reason, I just don't believe you. Sorry, old boy, but we're going to have to kill you... Get them! Now, now!~
  IF ~~ THEN DO ~SetGlobal("MAP_GROUP_HOSTILE10","MYAREA",1)
SetGlobal("SETH_ESCAPE","GLOBAL",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~But they didn't give you the proper papers.  I suppose that's not so surprising.  Very well.  What's the color of the kraken?~
  IF ~~ THEN REPLY ~Blue.~ GOTO 9
  IF ~~ THEN REPLY ~Yellow.~ GOTO 9
  IF ~~ THEN REPLY ~Red.~ GOTO 9
  IF ~~ THEN REPLY ~White~ GOTO 9
  IF ~~ THEN REPLY ~Green.~ GOTO 9
  IF ~~ THEN REPLY ~Purple.~ GOTO 7
  IF ~~ THEN REPLY ~Black.~ GOTO 9
  IF ~~ THEN REPLY ~I don't know.~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~I like it when a person can admit their own ignorance. I'm impressed. Now, if you'll excuse me... Get them! Now, now!~
  IF ~~ THEN DO ~SetGlobal("MAP_GROUP_HOSTILE10","MYAREA",1)
SetGlobal("SETH_ESCAPE","GLOBAL",1)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Who did you come here to work for?~
  IF ~~ THEN REPLY ~Yxunomei.~ GOTO 9
  IF ~~ THEN REPLY ~Bane.~ GOTO 9
  IF ~~ THEN REPLY ~Ilmater.~ GOTO 9
  IF ~~ THEN REPLY ~Marketh.~ GOTO 8
  IF ~~ THEN REPLY ~Tempus.~ GOTO 9
  IF ~~ THEN REPLY ~Dorn.~ GOTO 9
  IF ~~ THEN REPLY ~Hrothgar.~ GOTO 9
  IF ~~ THEN REPLY ~Presio.~ GOTO 9
  IF ~~ THEN REPLY ~I don't know.~ GOTO 6
END

IF ~~ THEN BEGIN 8
  SAY ~Under whose banner do we fight?~
  IF ~~ THEN REPLY ~Yxunomei.~ GOTO 9
  IF ~~ THEN REPLY ~Bane.~ GOTO 9
  IF ~~ THEN REPLY ~Ilmater.~ GOTO 10
  IF ~~ THEN REPLY ~Marketh.~ GOTO 9
  IF ~~ THEN REPLY ~Tempus.~ GOTO 9
  IF ~~ THEN REPLY ~Dorn.~ GOTO 9
  IF ~~ THEN REPLY ~Hrothgar.~ GOTO 9
  IF ~~ THEN REPLY ~Presio.~ GOTO 9
  IF ~~ THEN REPLY ~I don't know.~ GOTO 6
END

IF ~~ THEN BEGIN 9
  SAY ~Hmm.  Nice try... Get them! Now, now!~
  IF ~~ THEN DO ~SetGlobal("MAP_GROUP_HOSTILE10","MYAREA",1)
SetGlobal("SETH_ESCAPE","GLOBAL",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~Excellent.  Marketh will want to see you as soon as possible.  It's a busy time around here.~
  IF ~~ THEN REPLY ~Farewell.~ DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY ~Our blood isn't *that* thick, old chum. Oh... I suppose you can't cause much harm just to give Marketh a visit. Go on inside, but mind you, kinsman or not, I'll cut you down if you try anything... funny.~
  IF ~~ THEN REPLY ~Good morning and good day after that!  Farewell.~ DO ~EscapeArea()~ EXIT
END
