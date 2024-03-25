//_____________________________________________________//
//                                                     //
//       Melora interjects with Renal Bloodscalp       //
//_____________________________________________________//
//                                                     //

ADD_TRANS_TRIGGER ~RENAL~ 0 ~!InParty("Melora")~ DO 0

ADD_TRANS_TRIGGER ~RENAL~ 0 ~!InParty("Melora")~ DO 1

ADD_TRANS_TRIGGER ~RENAL~ 0 ~!InParty("Melora")~ DO 2

ADD_TRANS_TRIGGER ~RENAL~ 0 ~!InParty("Melora")~ DO 3

EXTEND_BOTTOM RENAL 0
  IF ~InParty("Melora")~ THEN EXTERN ~MELORAJ~ 30
END

ADD_TRANS_TRIGGER ~RENAL~ 1 ~!InParty("Melora")~ DO 0

ADD_TRANS_TRIGGER ~RENAL~ 1 ~!InParty("Melora")~ DO 1

ADD_TRANS_TRIGGER ~RENAL~ 1 ~!InParty("Melora")~ DO 2

ADD_TRANS_TRIGGER ~RENAL~ 1 ~!InParty("Melora")~ DO 3

EXTEND_BOTTOM RENAL 1
  IF ~InParty("Melora")~ THEN EXTERN ~MELORAJ~ 30
END