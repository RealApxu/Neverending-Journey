BEGIN ~DEHRUM~

IF ~RandomNum(7, 1)~ THEN BEGIN 0 // from:
  SAY ~A stranger clad in woodland garb staggered into town the other night and collapsed on the doorstep over at the temple.  They say he was poisoned.  His face was all purple and blue, and his tongue had swelled up so's that he eventually choked to death on it.  Not a pleasant way to go, if you ask me.~ 
  IF ~~ THEN EXIT
END

IF ~RandomNum(7, 2)~ THEN BEGIN 1 // from:
  SAY ~I hear tell that a fellow over in Bryn Shander taught a tundra yeti to talk.  Isn't that something?~ 
  IF ~~ THEN EXIT
END

IF ~RandomNum(7, 3)~ THEN BEGIN 2 // from:
  SAY ~I've heard that some of the caravans headed south over the Spine of the World have been attacked lately.  Some say it isn't bandits neither, if you get my meaning.~ 
  IF ~~ THEN EXIT
END

IF ~RandomNum(7, 4)~ THEN BEGIN 3 // from:
  SAY ~Snowfall in the Spine of the World Mountains is particularly heavy this year.  If it keeps up, the passes will be sealed for months.~ 
  IF ~~ THEN EXIT
END

IF ~RandomNum(7, 5)~ THEN BEGIN 4 // from:
  SAY ~Strange lights have been flickering and flashing in the temple lately.  At least that's what Old Jed would have you believe.  More than likely it's the booze that's making the lights dance in front of his eyes.  He just happens to be looking at the temple when it kicks in.~ 
  IF ~~ THEN EXIT
END

IF ~RandomNum(7, 6)~ THEN BEGIN 5 // from:
  SAY ~That bitter old man Apsel the Scrimshander said that he saw goblins in the south woods last tenday.  He may THINK he saw goblins, but his vision's only worth anything when he's a finger's breadth away from a piece of Knucklehead.~ 
  IF ~~ THEN EXIT
END

IF ~RandomNum(7, 7)~ THEN BEGIN 6 // from:
  SAY ~The town hero, Hrothgar, has been talking about forming an expedition into the mountains near Kuldahar.  There's something strange going on up there, supposedly.~ 
  IF ~~ THEN EXIT
END
