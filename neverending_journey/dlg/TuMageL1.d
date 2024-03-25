BEGIN ~TUMAGEL1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~What the... you are not Vrielle nor are you RayVon! Bradniar... quick... Ulcaster spies...~
  IF ~~ THEN DO ~SetGlobal("VP_Leveller_Quest","GLOBAL",10) SetGlobal("VP_HalruaaAlarm","MYAREA",1) Shout(99) Enemy()~ EXIT
END 