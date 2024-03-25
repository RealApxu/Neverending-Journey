BEGIN ~TUGUARD2~

IF ~Global("VP_Breaking_Rules","GLOBAL",1)~ THEN BEGIN 0
  SAY ~You people there! What is the meaning of bearing arms in the Academy? You know the rules well enough!~
  IF ~PartyHasItem("TuSwordP")~ THEN REPLY ~I apologise for my forgetfulness. I found this sword whilst aiding Lavallin.~ GOTO 1
  IF ~~ THEN REPLY ~Whoops! I forgot for a moment.~ GOTO 3
  IF ~PartyHasItem("TuSwordP")~ THEN REPLY ~Hold a minute. I took this from the body of a thief and was about to give it to Lavallin.~ GOTO 1
  IF ~PartyHasItem("TuSwordP")~ THEN REPLY ~Speak to Lavallin. He will assure you that I am not intentionally carrying weapons. Here, take it yourself.~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~There is no excuse for weapons being on the premises. The rules are plain enough so that even an imbecile knows the consequences for flouting them.~
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~I'll take this sword and talk to Lavallin. You shall be warned only once. The rules must and will be upheld by all!~
  IF ~~ THEN DO ~RealSetGlobalTimer("VP_Last_Warning","GLOBAL",60) TakePartyItem("TuSwordP") DestroyItem("TuSwordP") EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~There is no excuse for weapons being on the premises. The rules are plain enough so that even an imbecile knows the consequences for flouting them.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~You shall be warned only once. The rules must and will be upheld by all!~
  IF ~~ THEN DO ~RealSetGlobalTimer("VP_Last_Warning","GLOBAL",60) TakePartyItem("TuSw1H01") TakePartyItem("TuSw1H02") TakePartyItem("TuMace") DestroyItem("TuSw1H01") DestroyItem("TuSw1H02") DestroyItem("TuMace") EscapeArea()~ EXIT
END

IF ~Global("VP_Breaking_Rules","GLOBAL",2)~ THEN BEGIN 5
  SAY ~You have been warned.~
  IF ~~ THEN DO ~SetGlobal("VP_Breaking_Rules","GLOBAL",3) SetGlobal("VP_HalruaaHostile","GLOBAL",1) Enemy()~ EXIT
END