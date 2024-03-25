BEGIN ~TuMage5~ 1

IF ~~ THEN BEGIN 0
  SAY ~It is not necessary, Caius, the wheels have already been set in motion. What has started cannot now be stopped. We will see to this *other* concern when it is over.~
  IF ~~ THEN DO ~SetGlobal("VP_Know_Caius","GLOBAL",3) RealSetGlobalTimer("VP_Hrothar_Timer","GLOBAL",10) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT22")~ EXIT
END