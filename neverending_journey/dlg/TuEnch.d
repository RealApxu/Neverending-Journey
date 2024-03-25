BEGIN ~TuEnch~

IF ~True()~ THEN BEGIN 0
  SAY #41240 // ~Hello there, friend. Something I can do for you?~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY ~Hello, <CHARNAME>.~
  IF ~~ THEN REPLY ~Hello Sharia, nice to meet you.~ EXTERN ~XANH~ 21
  IF ~~ THEN REPLY ~Hello Sharia, you drew the short straw did you?~ EXTERN ~XANH~ 21
  IF ~~ THEN REPLY ~(*Not looking at Sharia*) The tasks Xan, just tell me what they are?~ EXTERN ~XANH~ 21
END