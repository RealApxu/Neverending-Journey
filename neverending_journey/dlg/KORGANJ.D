APPEND ~KORGANJ~

IF ~~ THEN BEGIN NEJ222
  SAY ~If we be travlin' to ruins, we best be showing a profit when we come out, or you, me, an' me axe will be having some words!~
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
END

IF ~~ THEN BEGIN NEJ223
  SAY ~Now that be more like it! Wizards be always storing gold and treasure that needs liberating for m....uh...our use!~
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
END

IF ~~ THEN BEGIN NEJ224
  SAY ~Don't be such a load of wusses', 'tis only a bloody slab o'meat after all, like a dead cow!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN firattak
  SAY ~(*Licking his thumb and running it along the edge of his axe's head*)... Jus getting her ready... in case ye ave an idea to go blowin fire at our backsides as we leave.~
  IF ~True()~ THEN EXTERN ~SHARTJ~ legacy406a
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ firattak
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~VICONIJ~ firattak
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ firattak
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ firattak
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN EXTERN ~TAFFICJ~ firattak
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ firattak
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ firattak
END

IF ~~ THEN BEGIN tafficuh
  SAY ~Never thought I'd git t'see a gnome bigger than m'self!~
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
END

END