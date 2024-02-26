BEGIN ~DDIRTYLL~

IF ~  Gender(LastTalkedToBy,MALE)
OR(3)
NumberOfTimesTalkedTo(0)
!PartyHasItem("HideUmb")
Global("Umber_Hulk_Armor","GLOBAL",1)
~ THEN BEGIN 0
  SAY ~Welcome to Dirty Llew's, sir.  We have a fine selection available for you today, straight from the stinking bowels of Faerun!  Heh heh heh.~
  IF ~  GlobalLT("Llew_Shield","GLOBAL",1)
PartyHasItem("HideBee")
~ THEN REPLY ~Dirty Llew, do you know anyone who could do anything with these beetle shells?~ GOTO 9
  IF ~  GlobalTimerExpired("Llew_Timer","GLOBAL")
Global("Llew_Shield","GLOBAL",1)
~ THEN REPLY ~Is my shield ready yet, Dirty Llew?~ DO ~SetGlobal("Llew_Shield","GLOBAL",2)
GiveItemCreate("BeetShld",Player1,0,0,0)
~ GOTO 18
  IF ~~ THEN REPLY ~Why do they call you "Dirty Llew?"~ GOTO 3
  IF ~~ THEN REPLY ~Great, let me see your wares.~ DO ~StartStore("LDD_DL1",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~I have to go now.  Farewell.~ GOTO 4
END

IF ~  Gender(LastTalkedToBy,FEMALE)
CheckStatLT(LastTalkedToBy,16,CHR)
OR(3)
NumberOfTimesTalkedTo(0)
!PartyHasItem("HideUmb")
Global("Umber_Hulk_Armor","GLOBAL",1)
~ THEN BEGIN 1
  SAY ~Aye, lass.  Welcome to Dirty Llew's.  We have a fine selection for a lady with your... discriminating tastes.  Heh heh heh.~
  IF ~  GlobalLT("Llew_Shield","GLOBAL",1)
PartyHasItem("HideBee")
~ THEN REPLY ~Dirty Llew, do you know anyone who could do anything with these beetle shells?~ GOTO 10
  IF ~  GlobalTimerExpired("Llew_Timer","GLOBAL")
Global("Llew_Shield","GLOBAL",1)
~ THEN REPLY ~Is my shield ready yet, Dirty Llew?~ DO ~SetGlobal("Llew_Shield","GLOBAL",2)
GiveItemCreate("BeetShld",Player1,0,0,0)
~ GOTO 19
  IF ~~ THEN REPLY ~Why do they call you "Dirty Llew?"~ GOTO 5
  IF ~~ THEN REPLY ~Great, let me see your wares.~ DO ~StartStore("LDD_DL2",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~I have to go now.  Farewell.~ GOTO 6
END

IF ~  CheckStatGT(LastTalkedToBy,15,CHR)
Gender(LastTalkedToBy,FEMALE)
OR(3)
NumberOfTimesTalkedTo(0)
!PartyHasItem("HideUmb")
Global("Umber_Hulk_Armor","GLOBAL",1)
~ THEN BEGIN 2
  SAY ~Oh... my.  Dirty Llew's is honored by the presence of such a... lovely... voluptuous... radiant... oh... mmm... lady.  Would the alluring lady like to peruse our... wares?~
  IF ~  GlobalLT("Llew_Shield","GLOBAL",1)
PartyHasItem("HideBee")
~ THEN REPLY ~Dirty Llew, do you know anyone who could do anything with these beetle shells?~ GOTO 11
  IF ~  GlobalTimerExpired("Llew_Timer","GLOBAL")
Global("Llew_Shield","GLOBAL",1)
~ THEN REPLY ~Is my shield ready yet, Dirty Llew?~ DO ~SetGlobal("Llew_Shield","GLOBAL",2)
GiveItemCreate("BeetShld",Player1,0,0,0)
~ GOTO 20
  IF ~~ THEN REPLY ~Why do they call you "Dirty Llew?"~ GOTO 7
  IF ~~ THEN REPLY ~Great, let me see your wares.~ DO ~StartStore("LDD_DL3",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~Uh, I have to go now, Dirty Llew.~ GOTO 8
END

IF ~~ THEN BEGIN 3
  SAY ~Heh heh heh.  It's because of my fondness for the ladies.  I have quite a reputation when it comes to my fondness for the ladies, you see.  *Quite* a reputation.  Heh heh heh.~
  IF ~~ THEN REPLY ~Can I see your wares?~ DO ~StartStore("LDD_DL1",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~I have to go now.  Farewell.~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~Thanks for nothin', you lousy no buyin' worthless bastard.  Slow-witted son of an aboleth, I hope you fall into an open pit and get eaten by hook horrors.  I'll come relieve myself on your grave when you're buried, you cheap, copper-pinching miser scum.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Aw, it's just a nickname, you know.  I'm a hard worker, so the boys are always calling me "Dirty Llew."  Heh heh heh.~
  IF ~~ THEN REPLY ~Can I see your wares?~ DO ~StartStore("LDD_DL2",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~I have to go now.  Farewell.~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~Ah, okay.  Come back anytime though, missy.  Heh heh heh.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Oh... oooh... mmm.  Did I say... "Dirty Llew?"  I meant "Dainty Llew."  Ladies are always... uh... telling me how well-groomed and respectable I am.  That's me... *Dainty* Llew.  Mmm... mmm...~
  IF ~~ THEN REPLY ~Can I see your wares?~ DO ~StartStore("LDD_DL3",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~Uh... I have to go now... Dainty Llew.~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~Please... come back whenever you... mmm... need anything.  Oh... oooh.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~Yeah.  I know some craftsmen who could turn that shell into a huge shield.  Tough, too.  It'd cost you ten thousand gold, though.  It'd take one day, too.  Heh heh.~
  IF ~  PartyGoldGT(9999)
~ THEN REPLY ~Okay.  Sounds good.~ DO ~TakePartyGold(10000)
TakePartyItem("HideBee")
SetGlobalTimer("Llew_Timer","GLOBAL",ONE_DAY)
SetGlobal("Llew_Shield","GLOBAL",1)
~ GOTO 12
  IF ~  PartyGoldLT(10000)
~ THEN REPLY ~Okay.  Sounds good.~ GOTO 15
  IF ~~ THEN REPLY ~Why do they call you "Dirty Llew?"~ GOTO 3
  IF ~~ THEN REPLY ~Let me see your wares.~ DO ~StartStore("LDD_DL1",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~I have to go now, Dirty Llew.~ GOTO 4
END

IF ~~ THEN BEGIN 10
  SAY ~Yes, lass.  I know some craftsmen who could turn that shell into a huge shield.  Tough, too... like me.  It'd cost you nine thousand gold, though.  It'd take one day, too.  Heh heh.~
  IF ~  PartyGoldGT(8999)
~ THEN REPLY ~Okay.  Sounds good.~ DO ~TakePartyGold(9000)
TakePartyItem("HideBee")
SetGlobalTimer("Llew_Timer","GLOBAL",ONE_DAY)
SetGlobal("Llew_Shield","GLOBAL",1)
~ GOTO 13
  IF ~  PartyGoldLT(9000)
~ THEN REPLY ~Okay.  Sounds good.~ GOTO 16
  IF ~~ THEN REPLY ~Why do they call you "Dirty Llew?"~ GOTO 5
  IF ~~ THEN REPLY ~Let me see your wares.~ DO ~StartStore("LDD_DL2",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~I have to go now, Dirty Llew.~ GOTO 6
END

IF ~~ THEN BEGIN 11
  SAY ~Oh... mmm... yes.  I know some craftsmen who could turn that shell into a huge, thick sh... shield.  Cost you sev... five thousand gold and take one day, though.  Mmm.  Ooooh.~
  IF ~  PartyGoldGT(4999)
~ THEN REPLY ~Okay.  Sounds good.~ DO ~TakePartyGold(5000)
TakePartyItem("HideBee")
SetGlobalTimer("Llew_Timer","GLOBAL",ONE_DAY)
SetGlobal("Llew_Shield","GLOBAL",1)
~ GOTO 14
  IF ~  PartyGoldLT(5000)
~ THEN REPLY ~Okay.  Sounds good.~ GOTO 17
  IF ~~ THEN REPLY ~Why do they call you "Dirty Llew?"~ GOTO 7
  IF ~~ THEN REPLY ~Let me see your wares.~ DO ~StartStore("LDD_DL3",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~Uh... I have to go now, Dirty Llew.~ GOTO 8
END

IF ~~ THEN BEGIN 12
  SAY ~Terrific.  Your shield will be ready in one day.  Come pick it up then.~
  IF ~~ THEN REPLY ~Why do they call you "Dirty Llew?"~ GOTO 3
  IF ~~ THEN REPLY ~Let me see your wares.~ DO ~StartStore("LDD_DL1",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~Uh... I have to go now, Dirty Llew.~ GOTO 4
END

IF ~~ THEN BEGIN 13
  SAY ~Terrific.  Your shield will be ready in one day.  Come pick it up then, lass.  I'll be waiting here... in the dark... alone.  Heh heh.~
  IF ~~ THEN REPLY ~Why do they call you "Dirty Llew?"~ GOTO 5
  IF ~~ THEN REPLY ~Let me see your wares.~ DO ~StartStore("LDD_DL2",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~Uh... I have to go now, Dirty Llew.~ GOTO 6
END

IF ~~ THEN BEGIN 14
  SAY ~Oooh... yes... a most excellent choice, my dear.  Come back in one day and I will be waiting with your shield.  Oooh... Mmm...~
  IF ~~ THEN REPLY ~Why do they call you "Dirty Llew?"~ GOTO 7
  IF ~~ THEN REPLY ~Let me see your wares.~ DO ~StartStore("LDD_DL3",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~Uh... I have to go now... Dainty Llew.~ GOTO 8
END

IF ~~ THEN BEGIN 15
  SAY ~Eh?  You don't have enough gold you stinky bastard!  Get lost until you have some coin.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY ~Poor dear, you don't seem to have enough money.  Don't worry, lass.  I'll keep it here for you.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY ~Ooooh, my darling... you don't appear to have enough gold coin here.  Perhaps we could... uh, I mean... perhaps you could come back later when you have the money.  Don't worry... mmm... oooh.  I'll still be here.  Waiting.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18
  SAY ~Yeah, here it is, you impatient son of an aboleth.~
  IF ~~ THEN REPLY ~Thanks.  Can I see your wares?~ DO ~StartStore("LDD_DL1",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~Farewell, Dirty Llew.~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY ~Yes, dear.  It's right here.  Heh heh.~
  IF ~~ THEN REPLY ~Thanks.  Can I see your wares?~ DO ~StartStore("LDD_DL2",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~Farewell, Dirty Llew.~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY ~Ooooh.  Mmmm.  Yes.  Here, my... lovely... darling.~
  IF ~~ THEN REPLY ~Uh... okay.  Can I see your wares?~ DO ~StartStore("LDD_DL3",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~Farewell, Dirty Llew.~ EXIT
END

IF ~  !NumberOfTimesTalkedTo(0)
Global("Umber_Hulk_Armor","GLOBAL",0)
PartyHasItem("HideUmb")
~ THEN BEGIN 21
  SAY ~Heh heh... hey there.  I see you have a fine, sturdy umber hulk hide with you.  Makes excellent armor, umber hulk hide.  I happen to have a suit, if you're interested.  I'd trade you this suit for the hides you have on you.  It's only available for a limited time.  Interested?~
  IF ~~ THEN REPLY ~Sure.  Here you go.~ DO ~TakePartyItem("HideUmb")
SetGlobal("Umber_Hulk_Armor","GLOBAL",1)
GiveItemCreate("UmHulk",Player1,0,0,0)
~ GOTO 22
  IF ~~ THEN REPLY ~No thanks. ~ DO ~SetGlobal("Umber_Hulk_Armor","GLOBAL",1)
~ GOTO 23
END

IF ~~ THEN BEGIN 22
  SAY ~Excellent.  Here you are.  A fine suit of armor for you.~
  IF ~  Gender(LastTalkedToBy,MALE)
~ THEN REPLY ~Thanks.  What do you have for sale?~ DO ~StartStore("LDD_DL1",LastTalkedToBy)
~ EXIT
  IF ~  Gender(LastTalkedToBy,FEMALE)
CheckStatLT(LastTalkedToBy,16,CHR)
~ THEN REPLY ~Thanks.  What do you have for sale?~ DO ~StartStore("LDD_DL2",LastTalkedToBy)
~ EXIT
  IF ~  Gender(LastTalkedToBy,FEMALE)
CheckStatGT(LastTalkedToBy,15,CHR)
~ THEN REPLY ~Thanks.  What do you have for sale?~ DO ~StartStore("LDD_DL3",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~Farewell, Dirty Llew.~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY ~Ah.  It's a crying shame, you know.  Good umber hulk hides going to waste like that.~
  IF ~  Gender(LastTalkedToBy,MALE)
~ THEN REPLY ~What do you have for sale?~ DO ~StartStore("LDD_DL1",LastTalkedToBy)
~ EXIT
  IF ~  Gender(LastTalkedToBy,FEMALE)
CheckStatLT(LastTalkedToBy,16,CHR)
~ THEN REPLY ~What do you have for sale?~ DO ~StartStore("LDD_DL2",LastTalkedToBy)
~ EXIT
  IF ~  Gender(LastTalkedToBy,FEMALE)
CheckStatGT(LastTalkedToBy,15,CHR)
~ THEN REPLY ~What do you have for sale?~ DO ~StartStore("LDD_DL3",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY ~Farewell, Dirty Llew.~ EXIT
END
