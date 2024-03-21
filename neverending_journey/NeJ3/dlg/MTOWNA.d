BEGIN ~MTOWNA~

IF ~RandomNum(8,1)~ THEN BEGIN 0
  SAY ~You people look new to Nashkel. I assume you've come to see the fair.~
  IF ~~ THEN REPLY ~Where is this fair located?~ GOTO 5
END

IF ~RandomNum(8,2)~ THEN BEGIN 1
  SAY ~Move aside and I'll be on my way. I have no time to waste on idle blathering. Hard enough making a living without you slowing me down.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(8,3)~ THEN BEGIN 2
  SAY ~I hate this stupid town. Nothing ever happens around here. A person could die just from the boredom.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(8,4)~ THEN BEGIN 3
  SAY ~I don't know nuthin'. Sorry.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(8,5)~ THEN BEGIN 4
  SAY ~Get out of my sight! I'll do nothing for you!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~The fair?  It's just east of Nashkel.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(8,6)~ THEN BEGIN 6
  SAY ~We be proud citizens of Amn, here, not pussyfoots like you northerners...~
  IF ~~ THEN REPLY ~Amn? I thought this town was called Nashkel...~ GOTO 7
  IF ~~ THEN REPLY ~Watch your tongue or you'll soon be eating it.~ GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY ~You've lived a sheltered life if you've never heard of the great trading nation of Amn. Nashkel, here, marks its northernmost boundary.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~You heard me, pussyfoot... If you don't like it, take your troubles to the guards. This is Amnish law yer under, now.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(8,7)~ THEN BEGIN 9
  SAY ~Have you ever danced with the devil in the pale moonlight? Well... neither have I.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(8,8)~ THEN BEGIN 10
  SAY ~Hey there fella, looks like you and yer group are a traveling band. Well, if yer lookin' to have some fun, or maybe restock on your traveling equipment, the place to go is the fair. It's just east of town.~
  IF ~~ THEN EXIT
END