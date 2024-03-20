BEGIN ~POGHM5~

IF ~RandomNum(2,1)
~ THEN BEGIN 0
  SAY ~I am pleased to see that you have taken time to pay tribute to wise Oghma.~
  IF ~~ THEN REPLY ~I was wondering what you had to offer at this temple of wisdom?~ DO ~StartStore("tem2304",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY ~Good day to you.~ GOTO 2
END

IF ~RandomNum(2,2)
~ THEN BEGIN 1
  SAY ~Good friend, would you like me to give you a sermon on the wisdom of Oghma?  No, well perhaps another time.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~It would be wise for you to leave THEN.  Now.~
  IF ~~ THEN EXIT
END