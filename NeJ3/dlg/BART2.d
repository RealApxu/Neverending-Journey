BEGIN ~BART2~

IF ~RandomNum(4,1)
~ THEN BEGIN 0
  SAY ~Business is on the wane today, what with the fair just north of town.  So, would you like a drink?~
  IF ~~ THEN REPLY ~Yes.~ DO ~StartStore("tav4809",LastTalkedToBy(Myself))
~ JOURNAL ~Nashkel festival.

There is a festival east of Nashkel.  Many people are gathering there.~ EXIT
  IF ~~ THEN REPLY ~No.~ EXIT
END

IF ~RandomNum(4,2)
~ THEN BEGIN 1
  SAY ~If the mine production slows anymore we'll all be in the poorhouse.  So, would you like a drink?~
  IF ~~ THEN DO ~StartStore("tav4809",LastTalkedToBy(Myself))
~ JOURNAL ~The iron shortage.

The iron shortage and sabotage is affecting all levels of commerce.  Prices are higher, availability is lower.  People are tense.~ EXIT
END

IF ~RandomNum(4,3)
~ THEN BEGIN 2
  SAY ~Beware the woods to the west friend, for I hear tell of ogres and madmen.  So, would you like a drink?~
  IF ~~ THEN DO ~StartStore("tav4809",LastTalkedToBy(Myself))
~ JOURNAL ~Oddities west of Nashkel.

The bartender spoke of Ogres and madmen to the west of Nashkel.~ EXIT
END

IF ~RandomNum(4,4)
~ THEN BEGIN 3
  SAY ~Volo's blasted review cut my business in half!  I'll take him for a chat out back when next I see him!  So, would you like a drink?~
  IF ~~ THEN DO ~StartStore("tav4809",LastTalkedToBy(Myself))
~ EXIT
END