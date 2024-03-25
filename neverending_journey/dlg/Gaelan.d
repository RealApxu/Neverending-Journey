//_____________________________________________________//
//                                                     //
//         Melora interjects with Gaelan Bayle         //
//_____________________________________________________//
//                                                     //

REPLACE_STATE_TRIGGER GAELAN 0
~NumTimesTalkedTo(0) Global("VP_Recognise_Melora","LOCALS",0) OR(2) !InParty("Melora") Dead("Melora")~

ADD_TRANS_ACTION GAELAN
BEGIN 0 END
BEGIN /* empty = all transitions or alternatively,  BEGIN 0 1 2 etc*/ END
~SetGlobal("VP_Recognise_Melora","LOCALS",1)~

EXTEND_BOTTOM GAELAN 7
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ 27
END

EXTEND_BOTTOM GAELAN 66
  IF ~InParty("Melora")~ THEN DO ~SetGlobal("Linvail","GLOBAL",1) GiveItem("MISC4S",[PC])~ EXTERN ~MELORAJ~ 28
END

APPEND ~GAELAN~

IF ~NumTimesTalkedTo(0) Global("VP_Recognise_Melora","LOCALS",0) InParty("Melora") !Dead("Melora")~ THEN BEGIN NEJ0
  SAY ~Well I be jiggered... if it ain�t Melora Tenarien! I thought, on account of the rumpus ye�d caused round here, ye�d be a long ways away by now. Still, tis good ye still has yer head lass. Now, no need to be afeared... me friends �ave no interest in yer business... (*turning back to you*)...~
  IF ~~ THEN DO ~SetGlobal("VP_Recognise_Melora","LOCALS",1)~ GOTO NEJ2
END

IF ~~ THEN BEGIN NEJ1
  SAY ~Well I be jiggered... if it ain�t Melora Tenarien! I thought, on account of the rumpus ye�d caused round here, ye�d be a long ways away by now. Still, tis good ye still has yer head lass. Now, no need to be afeared... me friends �ave no interest in yer business... (*turning back to you*)...~
  IF ~~ THEN GOTO 8
END

END