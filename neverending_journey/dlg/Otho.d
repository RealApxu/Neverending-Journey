BEGIN ~OTHO~

IF ~RandomNum(4,0) Global("VP_Slave_Released","GLOBAL",0) GlobalLT("VP_Dar_Quest","GLOBAL",5)~ THEN BEGIN 0
  SAY ~A horrible fate awaits us! We are all doomed!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,1) Global("VP_Slave_Released","GLOBAL",0) GlobalLT("VP_Dar_Quest","GLOBAL",5)~ THEN BEGIN 1
  SAY ~May the Gods bless your quest.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2) Global("VP_Slave_Released","GLOBAL",0) GlobalLT("VP_Dar_Quest","GLOBAL",5)~ THEN BEGIN 2
  SAY ~I would rather kill myself than be enslaved to human scum!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3) Global("VP_Slave_Released","GLOBAL",0) GlobalLT("VP_Dar_Quest","GLOBAL",5)~ THEN BEGIN 3
  SAY ~Don't fail us. Our freedom is in your hands.~
  IF ~~ THEN EXIT
END

IF ~RandomNumLT(4,5) Global("VP_Slave_Released","GLOBAL",0) GlobalLT("VP_Dar_Quest","GLOBAL",5)~ THEN BEGIN 4
  SAY ~Leave me be. I am in a terrible mood.~
  IF ~~ THEN EXIT
END

IF ~OR(2) Global("VP_Slave_Released","GLOBAL",1) Global("VP_Dar_Quest","GLOBAL",6)~ THEN BEGIN 5
  SAY ~I... I am Otho. I... we thanks you for freeing us, we has nothing we can give you.~
  IF ~~ THEN REPLY ~I am not looking for a reward. Please Otho, tell me how you come to be in such a defenceless position here?~ GOTO 6
  IF ~~ THEN REPLY ~My friend Dar has dragged me here in order to see what help we could be to you. Tell me Otho, how did you come to be in this mess and what are you going to do now?~ GOTO 6
  IF ~~ THEN REPLY ~You clearly have no idea how to protect yourselves, so what in The Nine Hells were doing settling in such an out of the way place as this?~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~We was doin' ok. We send our prophet to Candlekeep to find wisdom, to teach us more of the way. That was long time ago, we thinks he's dead, not sure what to do now?~
  IF ~OR(2) !InParty("Dar") Dead("Dar")~ THEN REPLY ~Well, Dar was supposed to know that, and he would surely answer your question as it is actually his quest. In his absense, I wish you good luck and farewell.~ GOTO 7
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ otho1
END

IF ~~ THEN BEGIN 7
  SAY ~I wish you the same in return. Again, thank you for freeing us.~
  IF ~~ THEN DO ~SetGlobal("VP_Slave_Released","GLOBAL",2) SetGlobal("VP_Talked_to_Ottho","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~We all thank you. We'll wait here for your word or return of prophet. Maybe we begin to build again and have new hope.~
  IF ~OR(2) !InParty("Melora") Dead("Melora")~ THEN DO ~SetGlobal("VP_Talked_to_Ottho","GLOBAL",1) SetGlobal("VP_Slave_Released","GLOBAL",2) SetGlobal("VP_Dar_Quest","GLOBAL",7)~ EXIT
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ darquest
END

IF ~Global("VP_Talked_to_Ottho","GLOBAL",1) !Global("VP_DrBook_Found","GLOBAL",2) Global("VP_Idle_Reply","LOCALS",0)~ THEN BEGIN 8a
  SAY ~May the Gods bless your quest.~
  IF ~~ THEN DO ~SetGlobal("VP_Idle_Reply","LOCALS",1)~ EXIT
END

IF ~Global("VP_Talked_to_Ottho","GLOBAL",1) !Global("VP_DrBook_Found","GLOBAL",2) Global("VP_Idle_Reply","LOCALS",1)~ THEN BEGIN 8b
  SAY ~Thank you for freeing us. We are greatly in your debt.~
  IF ~~ THEN DO ~SetGlobal("VP_Idle_Reply","LOCALS",0)~ EXIT
END

IF ~PartyHasItem("DrBook1") PartyHasItem("DrBook2") PartyHasItem("DrBook3") Global("VP_DrBook_Found","GLOBAL",2) GlobalGT("VP_Dar_Quest","GLOBAL",6) GlobalLT("VP_Dar_Quest","GLOBAL",80) GlobalGT("VP_Slave_Released","GLOBAL",1)~ THEN BEGIN 9
  SAY ~You return, we thinks you left us like Bardo. Is ... is Bardo dead, Otho sees he not with you?~
  IF ~~ THEN EXTERN ~DARJ~ quest41
END

IF ~~ THEN BEGIN 10
  SAY ~(*Sighs*) Then wees lost, no Bardo, no wisdom. We not know where to go, who will lead now?~
  IF ~~ THEN EXTERN ~DARJ~ quest42
END

IF ~~ THEN BEGIN 11
  SAY ~(*Hangs his head*) Otho can not, him no leader. Him only keeps the people together when him says Bardo be back soon with wisdom. Now Otho tells them, no wisdom to guide, no Bardo to teach us. Wees lost!~
  IF ~~ THEN EXTERN ~DARJ~ quest43
END

//IF ~~ THEN BEGIN 12
//  SAY ~Otho not sure... Will Dar not stay, lead us? Him very wise, we follow Dar. Will him teach us, please?~
//  IF ~~ THEN DO ~TakePartyItem("DrBook1") //TakePartyItem("DrBook2") //TakePartyItem("DrBook3")~ EXTERN ~DARJ~ quest44
//END

IF ~~ THEN BEGIN 12
  SAY ~Otho not sure... Will Dar not stay, lead us? Him very wise, we follow Dar. Will him teach us, please?~
  IF ~~ THEN EXTERN ~DARJ~ quest44
END

IF ~~ THEN BEGIN 13
  SAY ~Otho thanks Dar and his friends, him try to be strong to lead wisely.~
  IF ~~ THEN DO ~TakePartyItem("DrBook1") TakePartyItem("DrBook2") TakePartyItem("DrBook3")~ EXTERN ~DARJ~ quest45
END