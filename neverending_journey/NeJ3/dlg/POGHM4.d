BEGIN ~POGHM4~

IF ~RandomNum(2,1)~ THEN BEGIN 2
  SAY ~Good friend, would you like me to give you a sermon on the wisdom of Oghma?  No, well perhaps another time.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(2,2)~ THEN BEGIN 3
  SAY ~I am very busy with my patients, I'll have to ask that you give me some room.~
  IF ~~ THEN EXIT
END
