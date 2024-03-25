BEGIN ~WVELDA~

IF ~Global("VP_Necro_Test","GLOBAL",5)~ THEN BEGIN 0
  SAY ~I tell you Wvelda, I heard sounds coming from inside the mausoleum. Quickly, you must unlock the door... (*Sounds of scuffing feet and someone fumbling with the lock is heard.*) What's the hell are you doing here!~
  IF ~~ THEN DO ~SetGlobal("VP_Necro_Test","GLOBAL",6) CreateCreatureDoor("TuMageM",[248.536],9) CreateCreatureDoor("TuMageM",[279.560],9)~ EXIT
END