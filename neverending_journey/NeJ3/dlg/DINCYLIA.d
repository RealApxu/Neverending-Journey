BEGIN ~DINCYLIA~

IF ~RandomNum(3,1) !Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 0
  SAY ~Fire and light.  Blood slaughter.  The church is on fire.  Watch... watch... watching from the high tower over the great black sea.  Watch.  Witch.  Which?~
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2) !Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 1
  SAY ~Skitty scuttle skitty.  Ratta tikki tom till till skitty tom scuttle skitty precious father give me light in the... skitty scuttle.  Mother misery.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3) !Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 2
  SAY ~Perdition in the tree hollow calling me.  Where is the bell, the ringing bell?  Tree hollow switches swish swatting at the backs of the dead.~
  IF ~~ THEN EXIT
END

IF ~Global("Crazy_Priests","GLOBAL",1) !Global("Crazy_Incylia","GLOBAL",1)~ THEN BEGIN 3
  SAY ~My... who are you?  Where am I?  What... what have I done?  Oh my... oh... I remember it all now.  For my shame, I remember.  Thank you.  Thank you for saving us.~
  IF ~~ THEN DO ~SetGlobal("Crazy_Incylia","GLOBAL",1)~ EXIT
END

IF ~Global("Crazy_Priests","GLOBAL",1) Global("Crazy_Incylia","GLOBAL",1)~ THEN BEGIN 4
  SAY ~Again, I thank you for saving us from the madness that consumed so many.  I pray that you will find the tyrant behind this.~
  IF ~~ THEN EXIT
END
