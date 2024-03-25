APPEND ~YOSHJ~

IF ~~ THEN BEGIN NEJ152
  SAY ~You intend to let this man Hrothgar take you from your search for your Imoen? Any delay which leaves her at the mercy of that lunatic mage cannot be good. He may even now be putting her through more pain and torture, but it is of course your choice my friend.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 60
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ546
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ260
  IF ~InParty("Kachiko") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ57
END

IF ~~ THEN BEGIN NEJ153
  SAY ~We are going into the past, my friend, to change what has been! Ah! If only Yoshimo could do such a thing for himself.~
  IF ~True()~ THEN EXTERN ~TILORN~ 19
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ261
  IF ~InParty("Kachiko") InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ59
END

IF ~~ THEN BEGIN NEJ154
  SAY ~This cannot not be allowed my friend. We must do what is necessary to prevent it.~
  IF ~True()~ THEN EXTERN ~TERTIA~ 5
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 62
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ262
END

IF ~~ THEN BEGIN NEJ155
  SAY ~I am behind you, <CHARNAME>. I have no wish to face more wizards than is necessary!~
  IF ~True()~ THEN EXTERN ~RAYVON~ 2
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ rayvon2
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ rayvon
END

IF ~~ THEN BEGIN NEJ156
  SAY ~I would counsel you to think before you do this thing my friend and this comes from one who has done many shameful things to in order survive.~
  IF ~True()~ THEN EXIT
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ224
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ200
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ166
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ NEJ312
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ NEJ255
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 70
  IF ~InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ NEJ119
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ NEJ199
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ NEJ333
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~AERIEJ~ NEJ235
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ331
END

IF ~~ THEN BEGIN tranfail
  SAY ~It was very brave of you to even try on your own Kachiko. My stomach had butterflies doing somersaults inside me until I saw the beautiful Kachuko standing before me again. You must not let <CHARNAME> send you off alone again, or at least not without me.~
  IF ~~ THEN EXTERN ~TUMALV~ 24
END

IF ~~ THEN BEGIN tafficuh
  SAY ~So gnome, tell me, how do you intend getting out of this snare?~
  IF ~True()~ THEN EXTERN ~TAFFICP~ umberhk3
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ tafficuh
  IF ~InParty("Kachiko") InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ tafficuh
END

IF ~~ THEN BEGIN transmut
  SAY ~<CHARNAME>, please, you can't let Kachiko do this alone. At least not without knowing more about this guardian. Please?~
  IF ~~ THEN REPLY ~Kachiko?~ GOTO transmu1
END

IF ~~ THEN BEGIN transmu1
  SAY ~Kachiko, please...~
  IF ~~ THEN EXTERN ~KACHIJ~ NEJ701
END

END