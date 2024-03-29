BEGIN ~Feilton~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Greetings. This is somewhat different to the situation I had expected to find here. What goes on?~
  IF ~~ THEN REPLY ~Does it matter what you were expecting? I have the merchandise to sell, you wish to buy, deal is the same.~ GOTO 1
  IF ~~ THEN REPLY ~Nothing for you to worry about. A slight change in ownership has occurred that is all. The merchandise is now mine to dispose of.~ GOTO 1
  IF ~~ THEN REPLY ~Nothing to concern yourself over, the merchandise is mine by right of possession. You can take my word for it that the previous owners are not going to return from the place I sent them to reclaim it.~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~Then we will say no more. I am Feilton, now let me take a look at what you have for me... not much of a profit for me in this sorry looking bunch, is this the best you have?~
  IF ~~ THEN REPLY ~They are young Feilton, they will grow in strength and stamina. A bit of honest hard work will muscle them up.~ GOTO 2
  IF ~~ THEN REPLY ~They are young, not yet set in their ways, a bit like puppies. They will adapt quickly in their new life, making them less trouble for the buyers.~ GOTO 2
  IF ~~ THEN REPLY ~Look at it this way Feilton, at least they are not going to have the will power to cause you problems during transportation.~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~There is something in what you say. How many you got here, let me count... Okay, 13. I make it. Shall we say 1,300 gp for them all?~
  IF ~~ THEN REPLY ~13 you say? Strange, I thought I counted 14? No matter, 1,300 gp you say, that is 100 gp a piece, I know they probably worth more, but I am not in the mood to  bargain. Give me the gold and take them.~ GOTO 3
  IF ~~ THEN REPLY ~13 you say? Strange, I counted 14, I guess one got must of got himself killed in the fight. No matter I am not about to let you cheat me Feilton? I say you give me 2,500 gp or I take what coin you have from your body and then deal with these wretches after.~ GOTO 4
  IF ~~ THEN REPLY ~I think not, they might be a sorry sight at the moment but I know the males will fetch more because of their youth, and the females, well we both know why they will fetch more! I will accept no less than 2,500 gp.~ GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY ~Pleasure to be doing business with you. Perhaps you will remember my name if you should find any more of the same merchandise falling into your hands.~
  = ~You may look for Officer Dirth in Athkatla, as he knows my whereabouts. Goodbye for now.~
  IF ~~ THEN DO ~GivePartyGold(1300) ReputationInc(-5) ActionOverride("FeilGrd1",EscapeArea()) ActionOverride("FeilGrd2",EscapeArea()) ActionOverride("FeilGrd3",EscapeArea()) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Threats are not necessary. I am a trader and sometimes it pays to haggle a price, not this time I see.~
  = ~Here take your gold and if you should find any more of the same merchandise falling into your hands, remember the name of Feilton.~
  = ~You may look for Officer Dirth in Athkatla, as he knows my whereabouts. Goodbye for now.~
  IF ~~ THEN DO ~GivePartyGold(2500) ReputationInc(-5) ActionOverride("FeilGrd1",EscapeArea()) ActionOverride("FeilGrd2",EscapeArea()) ActionOverride("FeilGrd3",EscapeArea()) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~2,000 gp and that is my final offer. What are you going to do with the merchandise if I do not take it off your hands?~
  IF ~~ THEN REPLY ~I suppose 2,000 gp will cover my inconvenience, just! Take your merchandise Feilton and I will take my gold.~ GOTO 6
  IF ~~ THEN REPLY ~I said 2,500 gp Feilton, are you hard of hearing? It matters not to me if you pay me the gold or if I take it from your body, but I imagine it matters to you! As for the merchandise, I can just as easily dispose of that in the same way I shall dispose of you, no problem!~ GOTO 4
END

IF ~~ THEN BEGIN 6
  SAY ~Then the exchange is made. If you should find any more of the same merchandise falling into your hands, remember the name of Feilton.~
  = ~You may look for Officer Dirth in Athkatla, as he knows my whereabouts. Goodbye for now.~
  IF ~~ THEN DO ~GivePartyGold(2500) ReputationInc(-5) ActionOverride("FeilGrd1",EscapeArea()) ActionOverride("FeilGrd2",EscapeArea()) ActionOverride("FeilGrd3",EscapeArea()) EscapeArea()~ EXIT
END