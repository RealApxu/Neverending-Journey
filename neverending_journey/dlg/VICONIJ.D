APPEND ~VICONIJ~

IF ~~ THEN BEGIN NEJ186
  SAY ~I have bad memories of those areas abbil. I had not long arrived on the surface and my life would have been forfeit because of surfacer prejudices if it had not been for you. I owe you twice and will continue with you to this ruin for that reason alone.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 60
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ546
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ260
  IF ~InParty("Kachiko") InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ57
  IF ~InParty("Yoshimo") InParty("Kachiko") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ152
  IF ~InParty("Kachiko") !InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ58
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ 35
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ 7
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 12
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ158
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ NEJ206
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ NEJ321
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ NEJ252
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ222
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ NEJ188
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ185
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ NEJ310
END

IF ~~ THEN BEGIN NEJ187
  SAY ~You are expecting me to set foot in a school of mages! In Drow society no female would lower herself to do such a thing unless bidden to do so by the priestesses. Magic, fighting and the bedchamber are the only thing males serve any useful purpose in.~
  IF ~~ THEN GOTO NEJ188
END

IF ~~ THEN BEGIN NEJ188
  SAY ~Magic is therefore considered an inferior power in comparison to the power the priestesses wield. The magic schools, being for the male is a lowly place indeed! I will however, for your sake, try to hide my distaste whilst we are at this Halruaa.~
  IF ~True()~ THEN EXTERN ~TILORN~ 19
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ261
  IF ~InParty("Kachiko") InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ59
  IF ~InParty("Yoshimo") InParty("Kachiko") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ153
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ 36
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ 8
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ159
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ NEJ207
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ NEJ322
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ NEJ253
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ223
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ NEJ189
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ189
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ NEJ311
END

IF ~~ THEN BEGIN firattak
  SAY ~Humph... should such a creature seek to terrorise our cities in the Underdark, no drow warrior would  baulk from his duty to drive it out. You surfacers have no backbone!~
  IF ~True()~ THEN EXTERN ~SHARTJ~ legacy406a
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ firattak
END

IF ~~ THEN BEGIN tafficuh
  SAY ~Ha! See what your male pride has brought you to gnome!~
 IF ~True()~ THEN EXTERN ~TAFFICP~ umberhk3
 IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ tafficuh
 IF ~InParty("Kachiko") InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ tafficuh
 IF ~InParty("Yoshimo") InParty("Kachiko") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ tafficuh
 IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ tafficuh
 IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ tafficuh
 IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ tafficuh
 IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ tafficuh
 IF ~InParty("Nalia") !Dead("Nalia") OR(2) Global("EnteredAR1304","GLOBAL",1) !Global("NaliaKeepPlot","GLOBAL",0)~ THEN EXTERN ~NALIAJ~ tafficuh
 IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ tafficuh
 IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ tafficuh
 IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ tafficuh
 IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ tafficuh
 IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ tafficuh
END

END