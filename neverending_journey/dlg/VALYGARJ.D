APPEND ~VALYGARJ~

IF ~~ THEN BEGIN NEJ158
  SAY ~A ruined academy of magic, now we get to see first hand the havoc mages cause.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 60
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ546
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ260
  IF ~InParty("Kachiko") InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ57
  IF ~InParty("Yoshimo") InParty("Kachiko") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ152
  IF ~InParty("Kachiko") !InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ58
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ 35
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ 7
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 12
END

IF ~~ THEN BEGIN NEJ159
  SAY ~Yea Gods, <CHARNAME>!! You are seriously thinking of dragging me to a place swarming with wizards?! I shudder at the mere thought of such a place.~
  IF ~~ THEN GOTO NEJ160
END

IF ~~ THEN BEGIN NEJ160
  SAY ~If any of those wizards as much as looks at me and makes any hand gestures in my direction, I swear by all that I hold dear, I will not be responsible for my actions!~
  IF ~True()~ THEN EXTERN ~TILORN~ 19
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ261
  IF ~InParty("Kachiko") InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ59
  IF ~InParty("Yoshimo") InParty("Kachiko") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ153
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ 36
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ 8
END

IF ~~ THEN BEGIN NEJ161
  SAY ~I can sense the foul taint of magic around this place before we even set foot on its soil. I say it is not too late to turn back before it corrupts us all.~
  IF ~Dead("Hrothgar")~ THEN REPLY ~It is too late Valygar, we can only go forward now until the time Tilorn brings us home.~ GOTO NEJ162
  IF ~Dead("Hrothgar")~ THEN REPLY ~And go where Valygar? Look around you, there is only dessert as far as the eye can see.~ GOTO NEJ162
  IF ~Dead("Hrothgar")~ THEN REPLY ~It was your choice to follow me ranger. I would appreciate it if you please, try and not scowl so at the mages whilst we are here.~ GOTO NEJ162
  IF ~Dead("Hrothgar")~ THEN REPLY ~Please Valygar, try to look and act like you are a mage. Our lives depend on you not acting hastily whilst we are here.~ GOTO NEJ162
  IF ~!Dead("Hrothgar")~ THEN REPLY ~It is too late Valygar, we can only go forward now until the time Tilorn brings us home.~ EXTERN ~HROTHJ~ 264
  IF ~!Dead("Hrothgar")~ THEN REPLY ~And go where Valygar? Look around you, there is only dessert as far as the eye can see.~ EXTERN ~HROTHJ~ 264
  IF ~!Dead("Hrothgar")~ THEN REPLY ~It was your choice to follow me ranger. I would appreciate it if you please, try and not scowl so at the mages whilst we are here.~ EXTERN ~HROTHJ~ 264
  IF ~!Dead("Hrothgar")~ THEN REPLY ~Please Valygar, try to look and act like you are a mage. Our lives depend on you not acting hastily whilst we are here.~ EXTERN ~HROTHJ~ 264
END

IF ~~ THEN BEGIN NEJ162
  SAY ~I fear I may not be able to keep this pretense up for too long. I have little patience or love for wizards and their black arts.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ163
  SAY ~I'm with Melora. You can never be sure what is going to come out of the mouth of a wizard! Best not to let them so much as open it!~
  IF ~~ THEN REPLY ~Both of you shut up before someone dies, and I'm not promising that it will be the mages!~ EXTERN ~MELORAJ~ 15
  IF ~~ THEN REPLY ~You both knew what would be expected from you when you agreed to come here. Now if neither of you can cope with it leave before we enter the Academy.~ EXTERN ~MELORAJ~ 15
  IF ~~ THEN REPLY ~I am not going to risk the lives of the rest of the group. If you two cannot see past your phobias for a while do us all a favor and leave now.~ EXTERN ~MELORAJ~ 15
  IF ~~ THEN REPLY ~Melora, Valygar if you wish to remain with the group then at least try and act like mages.~ EXTERN ~MELORAJ~ 15
END

IF ~~ THEN BEGIN NEJ164
  SAY ~Nor do I Melora, nor do I, but I will try to be more prudent whilst we are here <CHARNAME>.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ165
  SAY ~I hope so Hrothgar for I fear I may not be able to keep this pretense up for too long. I have little patience or love for wizards and their black arts.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ166
  SAY ~Poetic justice I say, a mage ending up as spell components.~
  IF ~True()~ THEN EXIT
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ224
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ200
END

IF ~~ THEN BEGIN NEJ167
  SAY ~As long as her tongue speak I say we don't give her a chance to use it!~
  IF ~True()~ THEN EXTERN ~KHARESSE~ 1
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ 125
END

IF ~~ THEN BEGIN tafficuh
  SAY ~Trusting a wizard and their black arts was always going to end badly for you gnome.~
  IF ~True()~ THEN EXTERN ~TAFFICP~ umberhk3
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ tafficuh
  IF ~InParty("Kachiko") InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ tafficuh
  IF ~InParty("Yoshimo") InParty("Kachiko") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ tafficuh
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ tafficuh
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ tafficuh
END

END