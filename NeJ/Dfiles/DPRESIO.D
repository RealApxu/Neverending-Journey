BEGIN ~DPRESIO~

IF ~True()~ THEN BEGIN 0
  SAY ~Who are you?~
  IF ~~ THEN REPLY ~Hello. I am <CHARNAME>. Who are you?~ GOTO 1
  IF ~~ THEN REPLY ~Who are you?~ GOTO 9
  IF ~~ THEN REPLY ~I... I am sorry for disturbing you. I meant no offense and did not presume to know your affairs. I shall leave, Farewell.~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY ~Your name dosn't sound familiar to me. And who I am is of little importance for you. What are you looking for? ~
  IF ~~ THEN REPLY ~We are looking for the evil plaguing Kuldahar.~ GOTO 2
  IF ~~ THEN REPLY ~We are looking for the Heartstone.~ GOTO 6
  IF ~~ THEN REPLY ~We are looking for the evil plaguing Kuldahar and for the Heartstone.~ GOTO 8
  IF ~~ THEN REPLY ~I am really sorry, but it's not your buisness. Farewell.~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~You will not find it here.~
  IF ~~ THEN REPLY ~Thank you. Farewell.~ GOTO 3
  IF ~~ THEN REPLY ~And would you tell us where we could find it?~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY ~Farewell? I think not. Coming such a long way, you are probably very desperating to die. So be it.~
  IF ~~ THEN DO ~SetGlobal("Know_Presio","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Are you mercenaries? For whom are you working?~
  IF ~!InParty("Hrothgar")
~ THEN REPLY ~We are not mercenaries. We serve the cause of righteousness.~ GOTO 5
  IF ~InParty("Hrothgar")
~ THEN EXTERN ~HROTHJ~ 7
  IF ~!InParty("Hrothgar")
~ THEN REPLY ~Yeah. We are mercenaries looking for the Heartstone.~ GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY ~The righteous eventually descends to the methods of the brutal... But I have no time to discuss it with you. Coming such a long way, you are probably very desperating to die. So be it.~
  IF ~~ THEN DO ~SetGlobal("Know_Presio","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~You will never get it because it's mine. MINE! (*shout*)~
  IF ~~ THEN REPLY ~Lady, it's seems to me you are crazy.~ GOTO 7
  IF ~~ THEN REPLY ~I... I am sorry for disturbing you. I meant no offense and did not presume to know your affairs. I shall leave, Farewell.~ GOTO 3
END

IF ~~ THEN BEGIN 7
  SAY ~Am I crazy? Coming such a long way, you are probably very desperating to die. So be it.~
  IF ~~ THEN DO ~SetGlobal("Know_Presio","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~It's not the same. And you will never get the Heartstone because it's mine. MINE! (*shout*)~
  IF ~~ THEN REPLY ~Lady, it's seems to me you are crazy.~ GOTO 7
  IF ~~ THEN REPLY ~I... I am sorry for disturbing you. I meant no offense and did not presume to know your affairs. I shall leave, Farewell.~ GOTO 3
END

IF ~~ THEN BEGIN 9
  SAY ~Who I am is of little importance for you. Coming such a long way, you are probably very desperating to die. So be it.~
  IF ~~ THEN DO ~SetGlobal("Know_Presio","GLOBAL",1)
Enemy()
~ EXIT
END
