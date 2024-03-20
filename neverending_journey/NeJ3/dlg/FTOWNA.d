BEGIN ~FTOWNA~

IF ~RandomNum(6,1)~ THEN BEGIN 0
  SAY ~What brings your band to our little town? Not much to see here, we're the pimple on Amn's buttocks. If you insist on staying, here's a little word of warning: people are real touchy, so don't go 'round stirring up any trouble.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,2)~ THEN BEGIN 1
  SAY ~I knows where I seen ya before. You're the people that are givin' an ass-thorn to the Iron Throne. It's nice to meet you.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,3)~ THEN BEGIN 2
  SAY ~Please,leave me be.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,4)~ THEN BEGIN 3
  SAY ~I'm just a naive girl. I don't know hardly anything.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,5)~ THEN BEGIN 4
  SAY ~Hello there luvey. The way yer all decked out, it looks as if yer the adventurin' type.~
  IF ~~ THEN REPLY ~Nice speaking to you lady, but we're in a hurry.~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~Fine then, you adventurin' types are always so impatient.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(6,6)~ THEN BEGIN 6
  SAY ~My sister was due from Beregost days ago. I hope she arrives soon. The soldiers say there might be an Ogre about. Nasty things, they are. Thankfully they are usually as dumb as a sack of hammers. Not that I would say that to one's face, mind you.~
  IF ~~ THEN EXIT
END