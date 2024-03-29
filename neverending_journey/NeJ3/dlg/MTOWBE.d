BEGIN ~MTOWBE~

IF ~RandomNum(14,1)~ THEN BEGIN 0
  SAY ~Aye, the world is falling apart around us and here before me lie a band of groveling adventurers, preying on my every word to hear rumors of the latest dungeon fad...~
  IF ~~ THEN REPLY ~Sorry to bother Your Highness...~ GOTO 1
  IF ~~ THEN REPLY ~Dungeons... ?~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY ~Stuff your sarcasm and get out of here, lout.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~You're pathetic... Okay, I'll rattle it off for you like I did for the last adventurer and the one before that. I have no doubt you'll share their fate. Let's see, there are the ruins of an old mage school to the southeast. Traps, dead things that try to kill you, you know the schtick... Then there's the Firewine Bridge: ghosts, winding narrow passageways, some poetry, blah, blah, blah... Honestly, I can't think of a life more tedious than that of an adventurer. Personally, I get far more out of wandering around aimlessly and scratching my arse like this.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(14,2)~ THEN BEGIN 3
  SAY ~A more puzzling thing I've never heard.  I was left for dead by the raiders, and a stranger healed me.  Had the worst visage I ever hope to lay eyes on, but his bearing I cannot question.~
  IF ~~ THEN EXIT
END

IF WEIGHT #7 ~RandomNum(14,4)~ THEN BEGIN 4
  SAY ~Blasted halflings talk in circles! I know not which is more treacherous, Firewine Ruins or Gullykin north of it.  Keep an eye on your purse strings if you wander through that area.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(14,5)~ THEN BEGIN 5
  SAY ~I still feel their arrows' sting in my haunches! Mind you be polite to the small-folk, lest you limp home as I! Halflings may look small, but they sure hurt when they attack in numbers and keep their distance.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(14,6)~ THEN BEGIN 6
  SAY ~It will be a cold day in the lower planes before I risk my neck in the elven ruin o' Firewine! Who knows what lurks around in those tight passages.  You can barely stand two abreast in there.  Tight enough to be a tomb, and for many a man it is.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(14,7)~ THEN BEGIN 7
  SAY ~That Ulcaster School was a storehouse of knowledge and magic, but them that haunt the place are no better for it.  Being dead longer than you were alive must tend to addle the mind.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(14,8)~ THEN BEGIN 8
  SAY ~Simple logic says there must be magic treasure in the ruins of a magician's school such as Ulcaster, but 'tis a treacherous task to get to it.  Dead wizards are not known to sleep soundly, nor to wake jovial.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(14,9) ~ THEN BEGIN 9
  SAY ~Rumor tells of a magical gate in the bottom o' the school ruins, but no-one knows where it leads.  Anywhere is better than that accursed place, if ye ask me!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(14,10)~ THEN BEGIN 10
  SAY ~'Twas some 300 years hence, but folk still cringe at the mention of the destruction at Ulcaster School.  I've not met a soul who claims to know why it occurred, and none that were there are alive to say.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(14,11)~ THEN BEGIN 11
  SAY ~That's a load of bull Matthew, your cousin's a huckster who doesn't know his way around his own garden.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(14,12)~ THEN BEGIN 12
  SAY ~Hey!  Shut your potato trap and give your tongue a holiday.  I don't want strangers in my business.  Shove off before I take offence to your face.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(14,13)~ THEN BEGIN 13
  SAY ~I hear the Zhentarim have been spotted about lately.  I bet ya them riff raff are up to no good.  Can't trust a single one of them, you can't.  They'll step over their own mother just for the sake of doing it!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(14,14)~ THEN BEGIN 14
  SAY ~Sorry buddy, but I'm just simple folk, and don't know anything about politics and such.~
  IF ~~ THEN EXIT
END