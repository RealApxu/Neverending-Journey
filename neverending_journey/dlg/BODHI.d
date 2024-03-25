//_____________________________________________________//
//                                                     //
//    First meeting with Bodhi - NPCs interject        //
//_____________________________________________________//
//                                                     //

EXTEND_BOTTOM BODHI 1
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ 4
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN EXTERN ~TAFFICJ~ bodhi
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 8
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 53
END

EXTEND_BOTTOM BODHI 28
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN DO ~MoveToPointNoInterrupt([648.1028]) UnLock("DOOR12") OpenDoor("DOOR12") SetGlobal("BodhiAppear","GLOBAL",2) SetGlobal("BodhiJob","GLOBAL",1) SetGlobal("WorkingForBodhi","GLOBAL",1) EscapeArea()~ EXTERN ~TAFFICJ~ bodhi2
  IF ~InParty("Melora") !Dead("Melora")~ THEN DO ~MoveToPointNoInterrupt([648.1028]) UnLock("DOOR12") OpenDoor("DOOR12") SetGlobal("BodhiAppear","GLOBAL",2) SetGlobal("BodhiJob","GLOBAL",1) SetGlobal("WorkingForBodhi","GLOBAL",1) EscapeArea()~ EXTERN ~MELORAJ~ 5
  IF ~InParty("Dar") !Dead("Dar")~ THEN DO ~MoveToPointNoInterrupt([648.1028]) UnLock("DOOR12") OpenDoor("DOOR12") SetGlobal("BodhiAppear","GLOBAL",2) SetGlobal("BodhiJob","GLOBAL",1) SetGlobal("WorkingForBodhi","GLOBAL",1) EscapeArea()~ EXTERN ~DARJ~ 9
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN DO ~MoveToPointNoInterrupt([648.1028]) UnLock("DOOR12") OpenDoor("DOOR12") SetGlobal("BodhiAppear","GLOBAL",2) SetGlobal("BodhiJob","GLOBAL",1) SetGlobal("WorkingForBodhi","GLOBAL",1) EscapeArea()~ EXTERN ~HROTHJ~ 54
END

EXTEND_BOTTOM BODHI 21
  IF ~InParty("Melora") !Dead("Melora")~ THEN DO ~EraseJournalEntry(6601) EraseJournalEntry(6605) EraseJournalEntry(6606) EraseJournalEntry(34188) EraseJournalEntry(34189) SetGlobal("BodhiAppear","GLOBAL",3) EscapeArea()~ SOLVED_JOURNAL #6602 EXTERN ~MELORAJ~ 6
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN DO ~EraseJournalEntry(6601) EraseJournalEntry(6605) EraseJournalEntry(6606) EraseJournalEntry(34188) EraseJournalEntry(34189) SetGlobal("BodhiAppear","GLOBAL",3) EscapeArea()~ SOLVED_JOURNAL #6602 EXTERN ~TAFFICJ~ bodhi3
  IF ~InParty("Dar") !Dead("Dar")~ THEN DO ~EraseJournalEntry(6601) EraseJournalEntry(6605) EraseJournalEntry(6606) EraseJournalEntry(34188) EraseJournalEntry(34189) SetGlobal("BodhiAppear","GLOBAL",3) EscapeArea()~ SOLVED_JOURNAL #6602 EXTERN ~DARJ~ 10
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN DO ~EraseJournalEntry(6601) EraseJournalEntry(6605) EraseJournalEntry(6606) EraseJournalEntry(34188) EraseJournalEntry(34189) SetGlobal("BodhiAppear","GLOBAL",3) EscapeArea()~ SOLVED_JOURNAL #6602 EXTERN ~HROTHJ~ 55
END