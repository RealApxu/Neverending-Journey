BEGIN ~POGHM7~ 3419

IF ~True()
~ THEN BEGIN 0
  SAY ~Hello.  I am the level coordinator.  Is there anything I can help you with?~
  IF ~~ THEN REPLY ~No, I don't need your help.~ EXIT
  IF ~~ THEN REPLY ~Could you tell me where I could find Tethtoril?~ GOTO 1
  IF ~~ THEN REPLY ~I was wondering where I could find Ulraunt?~ GOTO 2
  IF ~~ THEN REPLY ~Have you seen Gorion today?~ GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY ~Tethtoril is a very busy man, and I don't keep track of his schedule.  Sorry.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~You can find Ulraunt in his apartment on the sixth floor.  I wouldn't bother him there though, he doesn't like unannounced intrusions.~
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3
  SAY ~Good friend, would you like me to give you a sermon on the wisdom of Oghma?  No?  Well, perhaps another time then.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~It would be wise for you to leave.  Now.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Gorion is waiting for you on the fifth floor.~
  IF ~~ THEN EXIT
END
