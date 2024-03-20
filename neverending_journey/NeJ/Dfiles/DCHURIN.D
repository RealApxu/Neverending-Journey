BEGIN ~DCHURIN~ 82997 // non-zero flags may indicate non-pausing dialogue

IF ~NumTimesTalkedTo(0) Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Good day.  I am Churin.  How may I help you?~
  IF ~~ THEN REPLY ~Well met.  I am <GABBER>.  What do you do here, Churin?~  GOTO 1
  IF ~~ THEN REPLY ~Good day to you, Churin. Have you heard about anything interesting happening in Easthaven lately?~  GOTO 3
  IF ~~ THEN REPLY ~Oh, no need to help. I was just passing by.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 1 // from: 4.1 3.0 0.0
  SAY ~Me?  Ah, nothing much.  I manage this warehouse here for the fishmonger, Gaspar.  I get paid a sum to store scrimshaw and emergency food supplies here through the harsh winters.~
  IF ~~ THEN REPLY ~Well, that certainly sounds like it would be important in a place like this.  What does the rest of Easthaven do?~  GOTO 2
  IF ~~ THEN REPLY ~Harsh winters, eh?  Sounds lovely.  Anything interesting happen around town lately?~  GOTO 3
  IF ~~ THEN REPLY ~An important job, certainly.  I must be off now, Churin.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY ~Well, most of them fish for Knucklehead Trout in Lac Dinneshere.  It's not a rich living in terms of wealth, but living up here, a man can still lead a very rich life.~
  IF ~~ THEN REPLY ~I see.  Have you heard anything interesting around town lately?~  GOTO 3
  IF ~~ THEN REPLY ~Interesting.  Thanks for the information.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 3 // from: 4.0 2.0 1.1 0.1
  SAY ~Well, spending as much time as I do here in this stuffy ol' warehouse, I don't get to hear much gossip.  If you really want to know what's going on in these parts, I suggest you buy a few rounds over at the Winter's Cradle tavern.  You'll find that drinking and spinning yarns are two of Easthaven's favorite pastimes.~
  IF ~~ THEN REPLY ~Interesting.  Tell me, what do you do for a living, Churin?~  GOTO 1
  IF ~~ THEN REPLY ~The tavern eh?  Alright, I'll try my luck there.  Farewell.~  EXIT
END

IF ~NumTimesTalkedToGT(0) Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 4 // from:
  SAY ~Hello again.  Can I help you with something?~
  IF ~~ THEN REPLY ~Have you heard any interesting news lately, Churin?~  GOTO 3
  IF ~~ THEN REPLY ~What do you do for a living, Churin?~  GOTO 1
  IF ~~ THEN REPLY ~No, Churin, but thanks for the offer.  Farewell.~  EXIT
END

IF ~GlobalGT("Know_Balance","GLOBAL",0) Global("Freed_Everard","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY ~Amazing.  I didn't think anyone could put down those brutes.  You should speak with Everard.  He'll be wanting to form a plan to save us all.~
  IF ~~ THEN REPLY ~I shall speak with him straight away.  Farewell.~  EXIT
END

IF ~GlobalGT("Know_Balance","GLOBAL",0) Global("Freed_Everard","GLOBAL",1)~ THEN BEGIN 6 // from:
  SAY ~Thank you for saving us.  The last thing I wanted was to die in this miserable town.~
  IF ~~ THEN REPLY ~You're welcome.  Farewell.~  EXIT
END