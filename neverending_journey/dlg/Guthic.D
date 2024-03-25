BEGIN ~GUTHIC~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN BIGuthic1D100
  SAY ~Finally you have arrived. By Krognan's bony blade, it took a long time to track you down.~
  IF ~~ THEN GOTO BIGuthic1D105
END

IF ~~ THEN BEGIN BIGuthic1D105
  SAY ~Hand Erevain over, or suffer the same fate as these pathetic townsfolk. We shall collect our bounty one way or another.~
  IF ~~ THEN REPLY ~Why do you have such an interest in Erevain?~ GOTO BIGuthic1D290
  IF ~~ THEN REPLY ~What is this bounty you speak of?~ GOTO BIGuthic1D280
  IF ~~ THEN REPLY ~Who placed the bounty?~ GOTO BIGuthic1D270
  IF ~~ THEN REPLY ~Why have you attacked this town?~ GOTO BIGuthic1D260
  IF ~~ THEN REPLY ~Who is Krognan?~ GOTO BIGuthic1D250
  IF ~~ THEN REPLY ~I'll make no deals with murderers.~ GOTO BIGuthic1D160
  IF ~NumInPartyGT(1)~ THEN REPLY ~You are no match for us. Touch one hair of his and you join your maker.~ GOTO BIGuthic1D160
  IF ~NumInPartyLT(2)~ THEN REPLY ~You are no match for me. Touch one hair of his and you join your maker.~ GOTO BIGuthic1D160
  IF ~NumInPartyGT(1)~ THEN REPLY ~We have no wish to fight. Leave us be.~ GOTO BIGuthic1D240
  IF ~NumInPartyLT(2)~ THEN REPLY ~I have no wish to fight. Leave me be.~ GOTO BIGuthic1D240
  IF ~NumInPartyGT(1)~ THEN REPLY ~Please don't hurt us. I beg you.~ GOTO BIGuthic1D230
  IF ~NumInPartyLT(2)~ THEN REPLY ~Please don't hurt me. I beg you~ GOTO BIGuthic1D230
  IF ~CheckStatGT(Player1, 8, CHR) ~ THEN REPLY ~Surely, there is a way for us to come to some other arrangement.~ GOTO BIGuthic1D150
  IF ~~ THEN REPLY ~...~ GOTO BIGuthic1D110
END

IF ~~ THEN BEGIN BIGuthic1D110
  SAY ~No words? Eliminate these fools!~
  IF ~~ THEN DO ~SetGlobal("MAP_GROUP_HOSTILE21","MYAREA",1) ActionOverride("Gauthig",Enemy()) ActionOverride("Gauthug",Enemy()) ActionOverride("Lodieg",Enemy()) ActionOverride("Urgan",Enemy()) ActionOverride("Varbu",Enemy()) Enemy()~ EXIT
END

IF ~~ THEN BEGIN BIGuthic1D150
  SAY ~An interesting proposal.~
  IF ~~ THEN GOTO BIGuthic1D155
END

IF ~~ THEN BEGIN BIGuthic1D155
  SAY ~If you pay the bounty plus a finder's fee, then Shargaas the Night Lord shall allow you to keep Erevain. 15,000 gold pieces. No less.~
  IF ~ PartyGoldGT(14999)~ THEN REPLY ~Very Well. Take the gold and leave Erevain alone.~ GOTO BIGuthic1D220
  IF ~ PartyGoldLT(15000)~ THEN REPLY ~(Lie) Very Well. Take the gold and leave Erevain alone.~ GOTO BIGuthic1D210
  IF ~~ THEN REPLY ~15,000 is too much. We cannot pay that.~ GOTO BIGuthic1D200
  IF ~~ THEN REPLY ~What is this bounty you speak of?~ GOTO BIGuthic1D180
  IF ~~ THEN REPLY ~Who placed the bounty?~ GOTO BIGuthic1D190
  IF ~~ THEN REPLY ~Who is Shargaas?~ GOTO BIGuthic1D170
  IF ~~ THEN REPLY ~Never mind, I'll make no deals with your kind. You shall not have Erevain.~ GOTO BIGuthic1D160
  IF ~~ THEN REPLY ~...~ GOTO BIGuthic1D110
END

IF ~~ THEN BEGIN BIGuthic1D160
  SAY ~Fool! Die for the glory of the Night Lord. The corpses of my slain enemies serve me in undeath.~
  IF ~True()~ THEN DO ~SetGlobal("MAP_GROUP_HOSTILE21","MYAREA",1) ActionOverride("Gauthig",Enemy()) ActionOverride("Gauthug",Enemy()) ActionOverride("Lodieg",Enemy()) ActionOverride("Urgan",Enemy()) ActionOverride("Varbu",Enemy()) Enemy()~ EXIT
  IF ~See("Sharteel") !Dead("Sharteel")~ THEN EXTERN ~SHARTJ~ Guthic
  IF ~See("Imoen2") !Dead("Imoen2")~ THEN EXTERN ~IMOEN2J~ Guthic
  IF ~See("Imoen") !Dead("Imoen")~ THEN EXTERN ~IMOENJ~ Guthic
  IF ~See("Erevain") !Dead("Erevain")~ THEN EXTERN ~EREVAINJ~ 19
END

IF ~~ THEN BEGIN BIGuthic1D170
  SAY ~I shall educate you cretin. Shargaas is the Night Lord. The mighty orc deity of Stealth, Thieves, Darkness, Night, and the Undead. From his sightless caverns he plots and all shall know of his will. So again. Let us finish our discussion.~
  IF ~~ THEN GOTO BIGuthic1D155
END

IF ~~ THEN BEGIN BIGuthic1D180
  SAY ~We have been paid to retrieve Erevain, dead or alive for the bounty placed upon him. In Shargaas's name we shall complete this task. Let us finish our discussion.~
  IF ~~ THEN GOTO BIGuthic1D155
END

IF ~~ THEN BEGIN BIGuthic1D190
  SAY ~The holder of the bounty for Erevain is confidential and shall not be revealed by us. Let us finish our discussion.~
  IF ~~ THEN GOTO BIGuthic1D155
END

IF ~~ THEN BEGIN BIGuthic1D200
  SAY ~Then I shall say it again.~
  IF ~~ THEN GOTO BIGuthic1D105
END

IF ~~ THEN BEGIN BIGuthic1D210
  SAY ~You think you can deceive a follower of the god of thievery?~
  IF ~~ THEN GOTO BIGuthic1D160
END

IF ~~ THEN BEGIN BIGuthic1D220
  SAY ~Excellent. A wise decision. Shargaas, the Night Lord, shall spare your lives for now.~
  IF ~~ THEN DO ~ TakePartyGold(15000) ActionOverride("Gauthig",EscapeArea()) ActionOverride("Gauthug",EscapeArea()) ActionOverride("Lodieg",EscapeArea()) ActionOverride("Urgan",EscapeArea()) ActionOverride("Varbu",EscapeArea()) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN BIGuthic1D230
  SAY ~Then meet our demands.~
  IF ~~ THEN GOTO BIGuthic1D105
END

IF ~~ THEN BEGIN BIGuthic1D240
  SAY ~If you desired peace, then you would give us our target.~
  IF ~~ THEN GOTO BIGuthic1D160
END

IF ~~ THEN BEGIN BIGuthic1D250
  SAY ~I shall educate you imbecile. Krognan is a craftsman in the service of Shargaas the Night Lord. His bone weapons and armors are famous. I shall say it again.~
  IF ~~ THEN GOTO BIGuthic1D105
END

IF ~~ THEN BEGIN BIGuthic1D260
  SAY ~To collect our bounty. We shall do many things. I shall say it again.~
  IF ~~ THEN GOTO BIGuthic1D105
END

IF ~~ THEN BEGIN BIGuthic1D270
  SAY ~We have been paid to retrieve Erevain, dead or alive, for the bounty placed upon him. In Shargaas's name we shall complete this task. I shall say it again.~
  IF ~~ THEN GOTO BIGuthic1D105
END

IF ~~ THEN BEGIN BIGuthic1D280
  SAY ~The holder of the bounty for Erevain is confidential and shall not be revealed by us. I shall say it again.~
  IF ~~ THEN GOTO BIGuthic1D105
END

IF ~~ THEN BEGIN BIGuthic1D290
  SAY ~We have no interest in Erevain ourselves. We care only for the bounty. I shall say it again.~
  IF ~~ THEN GOTO BIGuthic1D105
END

APPEND ~IMOENJ~

IF ~~ THEN BEGIN Guthic
 SAY ~You're not taking him you stinky puntlicker!~
  IF ~True()~ THEN DO ~ActionOverride("Gauthig",Enemy()) ActionOverride("Gauthug",Enemy()) ActionOverride("Lodieg",Enemy()) ActionOverride("Urgan",Enemy()) ActionOverride("Varbu",Enemy()) ActionOverride("Guthic",Enemy())~ EXIT
 IF ~See("Sharteel") !Dead("Sharteel")~ THEN EXTERN ~SHARTJ~ Guthic
END

END

APPEND ~IMOEN2J~

IF ~~ THEN BEGIN Guthic
 SAY ~You're not taking him you stinky puntlicker!~
  IF ~True()~ THEN DO ~ActionOverride("Gauthig",Enemy()) ActionOverride("Gauthug",Enemy()) ActionOverride("Lodieg",Enemy()) ActionOverride("Urgan",Enemy()) ActionOverride("Varbu",Enemy()) ActionOverride("Guthic",Enemy())~ EXIT
 IF ~See("Sharteel") !Dead("Sharteel")~ THEN EXTERN ~SHARTJ~ Guthic
END

END

APPEND ~SHARTJ~

IF ~~ THEN BEGIN Guthic
 SAY ~Why are we sticking our necks out for this pathetic one? Ughh.~
  IF ~~ THEN DO ~ActionOverride("Gauthig",Enemy()) ActionOverride("Gauthug",Enemy()) ActionOverride("Lodieg",Enemy()) ActionOverride("Urgan",Enemy()) ActionOverride("Varbu",Enemy()) ActionOverride("Guthic",Enemy())~ EXIT
END

END