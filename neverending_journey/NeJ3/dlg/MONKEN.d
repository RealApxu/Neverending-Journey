BEGIN ~MONKEN~

IF ~  NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY ~Stealing within the sanctity of Candlekeep?!  This is blasphemy of the highest order.  There is only one way that you can make this up.  Give up all the gold you have upon your person so that it may be used to benefit the library.~
  IF ~  PartyGoldGT(0)~ THEN REPLY ~It would seem that I have no choice; here's all my money.~ DO ~TakePartyGold(1000000)
SetGlobal("BribeEnforcer","GLOBAL",1)
Shout(2)
EscapeArea()~ EXIT
  IF ~~ THEN REPLY ~Up yours, you uppity bald virgin.~ DO ~Shout(1)
Enemy()~ EXIT
  IF ~~ THEN REPLY ~I don't have any gold.  Can't we just forgive and forget?~ GOTO 3
END

IF ~  StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 1 // from:
  SAY ~Even though you're a good friend, I can't reveal the secrets of our great library.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY ~You've made no friends here!  Move along!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY ~Thieving scoundrel!  Not even your esteemed father can save you from your just punishment.~
  IF ~~ THEN DO ~Shout(1)
Enemy()~ EXIT
END