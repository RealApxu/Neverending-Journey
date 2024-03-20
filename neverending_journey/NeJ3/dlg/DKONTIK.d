BEGIN ~DKONTIK~

IF WEIGHT #1 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~I am Kontik, a servant of Auril.  I do not wish to be disturbed.  Leave here or suffer the consequences.~
  IF ~~ THEN REPLY ~I would ask you some questions.~ GOTO 2
  IF ~~ THEN REPLY ~What consequences?~ GOTO 3
  IF ~~ THEN REPLY ~Very well.  Farewell.~ EXIT
END

IF WEIGHT #2 ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY ~I told you before that I did not wish to be disturbed.  You have chosen to ignore me.  Why?~
  IF ~~ THEN REPLY ~I would ask you some questions.~ GOTO 2
  IF ~~ THEN REPLY ~Never mind, farewell.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~No.  I have no time for you.  This is your last warning.  Leave here or suffer the consequences.~
  IF ~~ THEN REPLY ~What consequences?~ GOTO 3
  IF ~~ THEN REPLY ~Very well, farewell.~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~It is said that life experience is the best teacher.  So, experience this.  Children of Auril!  Slay these intruders!~
  IF ~~ THEN REPLY ~So be it!~ DO ~Enemy()~ JOURNAL ~Wyrm’s Tooth.

We met a woman named Kontik who claimed to be a follower of Auril. She became irritated with us quickly and attacked for no reason. We had to defend ourselves.~ EXIT
END

IF WEIGHT #0 ~Global("SPRITE_IS_DEADLYSAN","GLOBAL",1)~ THEN BEGIN 4
  SAY ~So, at last we meet.  I am Kontik, and I greet you.  ~
  IF ~~ THEN REPLY ~You were expecting me?~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~Oh, yes.  Your coming was foretold to me.  I have been waiting for your arrival.~
  IF ~~ THEN REPLY ~Foretold by whom?~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~The goddess.  She cast her gaze into the future and saw our paths cross here.  Thus she bid me to journey here.  To await your coming.~
  IF ~~ THEN REPLY ~Who is this goddess you speak of?~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~Why, Auril of course... She welcomes you.~
  IF ~~ THEN REPLY ~Auril, the Frostmaiden?  To what does she welcome me?~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~To the chill of her embrace, to the cold of her bosom, and to the black ice of her frozen heart.  She has prepared a place of honor for the *bastards* who slew her chosen, Lysan...  Did you think you could slay a child of Auril and not feel Her wrath?  Die, wretched fools!  Die that Auril may feast on your souls!~
  IF ~~ THEN REPLY ~If anyone is to die here it is to be you, Kontik!~ DO ~Enemy()~ JOURNAL ~Wyrm’s Tooth.

We met a woman named Kontik who claimed to be a follower of Auril. She said Auril sent her to slay us in retribution over the death of the priestess Lysan.~ EXIT
END
