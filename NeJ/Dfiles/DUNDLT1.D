BEGIN ~DUNDLT1~

IF ~NumTimesTalkedTo(0)
Global("ULt_Talk","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~To have come this far, you must be seeking death.  I will grant it to you, interloper.~
  IF ~~ THEN REPLY ~Uh... what?  Where is that voice coming from?  It doesn't sound like it's coming from a skeleton.~  DO ~SetGlobal("ULt_Talk","GLOBAL",1)~ JOURNAL ~Dragon's Eye.

We encountered an undead creation today that was used as the "eyes and mouth" of a necromancer.  It attacked us after it had addressed us.~  GOTO 1
  IF ~Class(Player1,6)~ THEN REPLY ~I sense no evil in this vessel's aura.  Cease using this undead husk as your proxy, coward.  If you have faith in your weak, dark gods, face me.~  JOURNAL ~Dragon's Eye.

We encountered an undead creation today that was used as the "eyes and mouth" of a necromancer.  I sensed no evil in it, so I demanded that the coward controlling the proxy face me.  From this, we learned that the necromancer was a worshipper of Talona, that disgusting goddess of poison and disease.~  GOTO 2
  IF ~Class(Player1,1)~ THEN REPLY ~Ah, an undead lieutenant.  You're speaking and watching us through this creation.  It is no small use of the Art.  Impressive.~  DO ~SetGlobal("ULt_Talk","GLOBAL",1)~ JOURNAL ~Dragon's Eye.

We encountered an undead creation today that was used as the "eyes and mouth" of a necromancer.  It attacked us after it had addressed us.~  GOTO 3
  IF ~~ THEN REPLY ~No, no... no interloping here.  I was just leaving...~  DO ~SetGlobal("ULt_Talk","GLOBAL",1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY ~Do not concern yourself with my true form.  This is my... servant.  He acts as my eyes and mouth.  And now he shall act as my sword.~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY ~You!  You have no right to profane Talona's power.  She is a goddess of awesome vile majesty.  You will bow before her when I offer you in sacrifice, holy warrior!~
  IF ~~ THEN REPLY ~Ah, Talona, is it?  Now I know what god's name I should curse when I stand over your heathen body.~  DO ~SetGlobal("ULt_Talk","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY ~Your threats do not shake my faith.  You cannot triumph.~  DO ~SetGlobal("ULt_Talk","GLOBAL",1)~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY ~Yes.  You are well learned.  It took me many years to learn the necromancy to augment my priestly powers.  It is nice to find someone who appreciates the dark arts.  It is a pity my minions have to destroy you now.~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.0
  SAY ~You will not live to regret those words, fool.~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Global("ULt_Talk","GLOBAL",1)~ THEN BEGIN 5 // from:
  SAY ~I am impressed.  You managed to pass my first legion.  It took me several months to amass that force.~
  IF ~~ THEN REPLY ~Sorry, stupid.  Your shambling cronies didn't even make me break a sweat.  You had better have a lot more legions if you're expecting to take me down.~  DO ~SetGlobal("ULt_Talk","GLOBAL",2)~ GOTO 6
  IF ~~ THEN REPLY ~Look, whoever you are, I couldn't care less about your plans for world conquest.  However, you and your cohorts are freezing the damned passes.  That affects me, so I'm going to have to pound your head in.  No offense, "friend." ~  DO ~SetGlobal("ULt_Talk","GLOBAL",2)~ GOTO 7
  IF ~~ THEN REPLY ~I have nothing more to say to you.~  DO ~SetGlobal("ULt_Talk","GLOBAL",2)~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2 5.0
  SAY ~You will pay for your arrogance, whelp.  The Old Enemy will suffer for sending you here.~
  IF ~~ THEN REPLY ~The Old Enemy?  What are you talking about?~  GOTO 8
  IF ~~ THEN REPLY ~Why were you and Lysan freezing the passes?~  GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY ~None taken.  However, you are attempting to thwart the will of Talona and our blessed ally, Yxunomei.  I cannot allow that to happen.  Also, we are *not* freezing the passes.  That is the work of the Old Enemy.  He and his minions will pay for their centuries of warfare.~
  IF ~~ THEN REPLY ~"The Old Enemy?"  Who is that?~  GOTO 8
  IF ~~ THEN REPLY ~Then why was Lysan helping you?~  GOTO 9
  IF ~~ THEN REPLY ~I'm through wasting time with you, listening to your rambling.  Farewell.~  DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 6.0
  SAY ~Do not involve yourself in this affair.  It is an ancient grudge between my worthy ally and her inferior.  Now, if you will excuse me, my pets must finish you off.  I have a war to plan.~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 6.1
  SAY ~Lysan?  That twit?  If she had known the truth of the matter, she never would have allied with us.  We don't seek to freeze the dale.  We seek to restore it to its proper form - full of life, warmth, and black, black, blood flowing for my goddess.~
  IF ~~ THEN REPLY ~Proper form?  What are you talking about?~  GOTO 10
  IF ~~ THEN REPLY ~Okay, Mistress Crazy.  I think I've heard enough.  Farewell.~  DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY ~Long ago, before our people lived in this world, it was a steaming jungle, where serpents and other creatures of venom thrived.  We seek a return to that time, for the glory of Talona and her allies.  Now, I believe I have educated you enough for today.  I have business to attend to.  Farewell.~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Global("ULt_Talk","GLOBAL",2)~ THEN BEGIN 11 // from:
  SAY ~Again?  I grow tired of feeding you scraps of bone and flesh.~
  IF ~~ THEN REPLY ~Little by little, you whiny tramp.  If that's how I have to take you apart, so be it.~  DO ~SetGlobal("ULt_Talk","GLOBAL",3)
Enemy()~ EXIT
  IF ~~ THEN REPLY ~I'm tired of being forced to stay in this gods-forsaken dale.  We're just about even, I'd say...~  DO ~SetGlobal("ULt_Talk","GLOBAL",3)
Enemy()~ EXIT
  IF ~~ THEN REPLY ~You will pay for your actions, I swear.~  DO ~SetGlobal("ULt_Talk","GLOBAL",3)
Enemy()~ EXIT
  IF ~~ THEN REPLY ~I have nothing more to say to you.  Farewell.~  DO ~SetGlobal("ULt_Talk","GLOBAL",3)
Enemy()~ EXIT
END

IF ~Global("ULt_Talk","GLOBAL",3)~ THEN BEGIN 12 // from:
  SAY ~You're getting a little closer than I care for.  Heed my warning.  Turn back.  The cold wights are nothing compared to my personal cadre of guardians.~
  IF ~~ THEN REPLY ~You're starting to sound like you're... afraid, my dear.  Bawk, bawk, bawk!~  DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY ~I'm not afraid of you, necromancer.  Bring on your best.  We'll see who is the victor.~  DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY ~I have nothing more to say to you.  Farewell.~  DO ~Enemy()~ EXIT
END