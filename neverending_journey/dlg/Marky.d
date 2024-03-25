BEGIN ~MARKY~

IF ~~ THEN BEGIN 0
  SAY ~There! They done it! They selled your peoples Bardo, kill 'em!~
  IF ~~ THEN EXTERN ~BARDO~ 1
END

IF ~~ THEN BEGIN 1
  SAY ~They did Bardo, Marky not forget faces. Him see them good before him run away.~
  IF ~~ THEN REPLY ~So one of you did escape, I knew I had counted eleven. I guess that was your lucky day Marky.~ GOTO 2
  IF ~~ THEN REPLY ~Ok... ok, at least they have a purpose in life now, be it serving others, but that has to be better than starving to death whilst they wait for a prophet who will never return.~ GOTO 2
  IF ~~ THEN REPLY ~You sprung me Marky, I did the foul deed. Now, will you both give me some space. I have places to be.~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~See, Marky tells you it's them, go on Bardo, you kill 'em, kill 'em dead!~
  IF ~~ THEN EXTERN ~BARDO~ 12
END