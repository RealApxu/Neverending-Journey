BEGIN ~SHOPKN~

IF ~PartyHasItem("MISC01")~ THEN BEGIN 0
  SAY ~There be a fine looking pelt, if I have ever seen one. Good on you! Here is a fair price for you. Pleasure doing business with you.~
  IF ~~ THEN DO ~TakePartyItem("MISC01")
GiveGoldForce(500)~ EXIT
END

IF ~!PartyHasItem("MISC01")~ THEN BEGIN 2
  SAY ~Interested in a little business on the side, friend? I've a man who swears by his grandmother he glimpsed a white wolf up in the Cloudpeak ice fields. It was but a short ways south, and she be easy pickings for a smart sword.  I'd pay you good money for its pelt, so it's a guaranteed sale if you go.  Keep it in mind on your travels.  Can I interest you with anything here in my humble shop?~
  IF ~~ THEN REPLY ~Yes, what do you have for sale?~ DO ~StartStore("sto4803",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~Nothing right now.~ EXIT
END