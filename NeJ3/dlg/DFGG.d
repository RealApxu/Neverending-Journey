BEGIN ~DFGG~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Stop right there.  What business do you have here?~
  IF ~Global("Know_Ilmadia","GLOBAL",1)~ THEN REPLY ~I'm here to see Maiden Ilmadia.~ GOTO 1
  IF ~~ THEN REPLY ~Killing is my business.  You're my next customer, big guy.~ GOTO 2
  IF ~~ THEN REPLY ~My business is none of your concern.~ GOTO 3
  IF ~~ THEN REPLY ~Nothing.  I'm just lost.  I'll find my own way out, thanks.~ DO ~SetGlobal("Ilmadia_Attack","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY ~Hrmph.  Fine.  Go east from here until you reach her house at the edge of the lake.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Oh, is that so?  You're going to have to do business with my brothers too, then.  All of them.~
  IF ~~ THEN REPLY ~Heh.  I was just joking.  Sorry.  I'll go now.~ GOTO 4
  IF ~~ THEN REPLY ~Sounds good.  I'll take care of your mom and dad too if you keep this attitude up.~ GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY ~Right now, your business is my only concern.  If you don't give me a good reason for you being here, I'm gonna pound your little head in.~
  IF ~~ THEN REPLY ~Get out of my way.  You're all talk and no action.  I don't have time for loudmouths and idiots.~ GOTO 6
  IF ~~ THEN REPLY ~I'd like to see you try.~ DO ~SetGlobal("Ilmadia_Attack","GLOBAL",2)~ GOTO 5
  IF ~Class(LastTalkedToBy(Myself),PALADIN)~ THEN REPLY ~When one has faith, one needs no further reason.  As an agent of a just god, I command you to step aside.~ GOTO 7
  IF ~Class(LastTalkedToBy(Myself),CLERIC)
Alignment(LastTalkedToBy(Myself),LAWFUL_GOOD)~ THEN REPLY ~When one has faith, one needs no further reason.  As an agent of a just god, I command you to step aside.~ GOTO 7
  IF ~Class(LastTalkedToBy(Myself),CLERIC)
Alignment(LastTalkedToBy(Myself),LAWFUL_EVIL)~ THEN REPLY ~Silence, infidel!  Out of my way before I leave the markings of my black faith on your wart-covered hide!~ GOTO 8
  IF ~~ THEN REPLY ~Okay, okay, I got it.  I'm leaving.~ DO ~SetGlobal("Ilmadia_Attack","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~Yeah, get out of here... before I get angry.  Scuttle around the palace with the rest of Marketh's puny gang.  Heh.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~That's it.  I'm already tired of your big mouth.  Get ready to be crushed, pipsqueak.~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~Heh.  Fine, tough guy.  If you're looking for Ilmadia, you can find her to the east.  Follow the edge of the lake to her house.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Fine, paladin.  Have it your way.  Maiden Ilmadia is to the east.  Follow the edge of the lake to her house.  By the way, if you start getting any funny ideas in your head, we'll break your bones one by one, holy warrior.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~I think you're probably looking for Brother Perdiem, but if you really want to talk to her, Maiden Ilmadia is to the east.  Follow the edge of the lake to her house.  Don't get any funny ideas in your head, black vicar.~
  IF ~~ THEN EXIT
END