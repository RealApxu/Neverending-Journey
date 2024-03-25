APPEND ~ANOMENJ~

IF ~~ THEN BEGIN NEJ310
  SAY ~I agreed to travel with this group in the hope we would  be searching out and performing honourable deeds. I see no honour in wasting the time it will take to travel to these ruins you speak of. Bah, I will keep my own counsel for now.~
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
END

IF ~~ THEN BEGIN NEJ311
  SAY ~The past! You presume to send us into the past! You play with powers that only the Gods themselves should wield. It is good that I am going along with you to ensure you do not overstep the mark in what is right and what is wrong in what we do at this Halruaa!~
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
END

IF ~~ THEN BEGIN NEJ312
  SAY ~There is no honour in the desecration of the dead <CHARNAME>, only dishonour.~
  IF ~True()~ THEN EXIT
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ224
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ200
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ166
END

IF ~~ THEN BEGIN tafficuh
  SAY ~Ha! See what your arrogance and false pride has brought you to gnome. Maybe you will learn some humility from this experience.~
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
END

END