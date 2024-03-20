BEGIN ~DGENGRD~

IF ~Global("Kerish_Look","GLOBAL", 0)~ THEN BEGIN 0
  SAY ~Me not know you.  Who you?  Why you wander here?~
  IF ~~ THEN REPLY ~I’m here to see your leader.~ GOTO 2
  IF ~~ THEN REPLY ~Nothing.  Farewell.~ GOTO 3
END

IF ~Global("Kerish_Look","GLOBAL", 1)~ THEN BEGIN 1
  SAY ~Kerish let you walk.  He not let me speak to you.  Go now.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Hmmph.  You in wrong place to see Kerish.  You come with me now.  No more wander here.  I take to Kerish.~
  IF ~~ THEN REPLY ~Yes, take me to see Kerish.~ DO ~StartCutSceneMode()
StartCutScene("wtgcut2")~ EXIT
  IF ~~ THEN REPLY ~No, I have changed my mind.  Farewell.~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Then you leave.  Go now!~
  IF ~~ THEN REPLY ~Very well, farewell.~ DO ~StartCutScene("wtgcut1")~ EXIT
END
