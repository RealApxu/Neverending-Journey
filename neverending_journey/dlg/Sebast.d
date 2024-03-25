BEGIN ~SEBAST~

IF ~~ THEN BEGIN 0
  SAY ~They are only students Vrielle. Though I have to wonder how they came to find their way here?~
  IF ~~ THEN EXTERN ~BRIAL~ 0
END

IF ~~ THEN BEGIN 1
  SAY ~By their own admission, they are spies Vrielle!~
  IF ~~ THEN DO ~SetGlobal("VP_Leveller_Quest","GLOBAL",7) SetGlobalTimer("VP_Reveal_Spies_D","GLOBAL",ONE_DAY) SetGlobal("VP_HalruaaAlarm","MYAREA",1) Shout(99) Enemy()~ EXIT
END