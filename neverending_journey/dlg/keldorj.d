ADD_TRANS_TRIGGER KELDORJ 2 ~!InParty("Dar")~ DO 0

EXTEND_BOTTOM KELDORJ 2
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ darkeld1
END

ADD_TRANS_TRIGGER KELDORJ 3 ~!InParty("Dar")~ DO 0

EXTEND_BOTTOM KELDORJ 2
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ darkeld1
END

ADD_TRANS_TRIGGER KELDORJ 2 ~!InParty("Dar")~ DO 0

EXTEND_BOTTOM KELDORJ 3
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ darkeld1
END

ADD_TRANS_TRIGGER KELDORJ 3 ~!InParty("Dar")~ DO 0

EXTEND_BOTTOM KELDORJ 3
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ darkeld1
END

APPEND ~KELDORJ~

IF ~~ THEN BEGIN NEJ252
  SAY ~I am to make yet another arduous journey, this time whilst in your service, <CHARNAME>. (*Sighs*) Will Torm never end the travels of this old Paladin?~
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
  IF ~InParty("Nalia") !Dead("Nalia") OR(2) Global("EnteredAR1304","GLOBAL",1) !Global("NaliaKeepPlot","GLOBAL",0)~ THEN EXTERN ~NALIAJ~ NEJ321
END

IF ~~ THEN BEGIN NEJ253
  SAY ~These are strange words I hear from Tilorn. I have never seen such a thing done or even knew such a thing was possible.~
  IF ~~ THEN GOTO NEJ254
END

IF ~~ THEN BEGIN NEJ254
  SAY ~I know not what manner of men you and Tilorn are Hrothgar, nor do I wish to know at this present time, but I believe Torm would not have me aid you if your intent was evil, so I will follow you to this Halruaa and aid your cause in any way that I can.~
  IF ~True()~ THEN EXTERN ~TILORN~ 19
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ261
  IF ~InParty("Kachiko") InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ59
  IF ~InParty("Yoshimo") InParty("Kachiko") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ153
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ 36
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ 8
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ159
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ NEJ207
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ NEJ322
END

IF ~~ THEN BEGIN NEJ255
  SAY ~By all that is holy <CHARNAME>, is nothing sacred to you?~
  IF ~True()~ THEN EXIT
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ224
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ200
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ166
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ NEJ312
END

IF ~~ THEN BEGIN darkeld1
  SAY ~Please Dar, call me Keldorn. We are all friends here, and the formalities of titles have no place among friends.~
  IF ~~ THEN EXTERN ~DARJ~ darkeld2
END

IF ~~ THEN BEGIN darkeld2
  SAY ~Envy is a powerful emotion and unless it is contained, it can quickly give rise to wrongful actions in order to obtain that which is envied.~
  = ~As a follower of the teachings of Ilmater, I am surprised to hear you use such a term my friend.~
  IF ~~ THEN EXTERN ~DARJ~ darkeld3
END

IF ~~ THEN BEGIN darkeld3
  SAY ~(*He reaches up and puts his hand on the half orc's shoulder*) My friend, I understand why you should feel that love will always elude you.~
  = ~But love is not dependent solely on appearance or the race we are born into. Love reaches into the heart and it is that which is found there which deems us worthy of another's love.~
  IF ~~ THEN EXTERN ~DARJ~ darkeld4
END

IF ~~ THEN BEGIN darkeld4
  SAY ~(*His voice takes on a tone of sadness*) I can not answer you truthfully for the female heart is a mystery to all men, but I do  know that women are very different to men in the way they perceive a worthy lover.~
  = ~It is true, many will look at a man's face or his purse first, often not taking the time to look deeper into the heart where the true face of a man lies... and later they bemoan that they have married a cruel, heartless man.~
  = ~Then there is the woman who is first your friend... she has taken the time, watched, spoken with you and found you worthy to be called friend.~
  = ~Neither of you seek anything more than the bond that the love of friends forge, but as the friendship strengthens, so her eyes become open to what lies beneath. Then she may open her heart to a different sort of love.~
  IF ~~ THEN EXTERN ~DARJ~ darkeld5
END

IF ~~ THEN BEGIN darkeld5
  SAY ~Once again, I do not know Dar, but I do know that such women are to be found and you my friend, are so much more than the half-orc that you perceive yourself as.~
  = ~Not only myself but also your friends here have witnessed, many times, the honour that dwells within your heart.~
  = ~Should you be lucky enough to procure the love of such a woman, then you will be blessed because you'll know that your love embraces you for all that you are, and she will stand beside you, defending against any who would attempt to deride her love.~
  IF ~~ THEN EXTERN ~DARJ~ darkeld6
END

IF ~~ THEN BEGIN darkeld6
  SAY ~My friend, whatever the future does or does not bring, you will always have the friends that you have made this day. Remember this.~
  IF ~~ THEN DO ~RealSetGlobalTimer("VP_Dar_Keldor_Time","GLOBAL",1800)~ UNSOLVED_JOURNAL #48002 /* ~Keldorn wishes to visit his wife and family.

Apparently, Keldorn maintains a mansion of his own in the Government District here in Athkatla, and has asked that we visit the place so that he may introduce me to his family.~ */ EXIT
END

IF ~~ THEN BEGIN tafficuh
  SAY ~May your god take pity and forgive you gnome, for you are indeed a pitiful beast to behold.~
  IF ~True()~ THEN EXTERN ~TAFFICP~ umberhk3
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ tafficuh
  IF ~InParty("Kachiko") InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ tafficuh
  IF ~InParty("Yoshimo") InParty("Kachiko") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ tafficuh
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ tafficuh
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ tafficuh
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ tafficuh
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ tafficuh
  IF ~InParty("Nalia") !Dead("Nalia") OR(2) Global("EnteredAR1304","GLOBAL",1) !Global("NaliaKeepPlot","GLOBAL",0)~ THEN EXTERN ~NALIAJ~ tafficuh
END

END