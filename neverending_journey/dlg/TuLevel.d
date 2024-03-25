BEGIN ~TULEVEL~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Speak out the �name and school� of the person who arrived at the meeting at 7:30.~
  IF ~~ THEN REPLY ~Almeric, the head of the *Meta* school.~ GOTO 2
  IF ~~ THEN REPLY ~Emillus Conjurer~ GOTO 2
  IF ~~ THEN REPLY ~Cherise Transmuter~ GOTO 2
  IF ~~ THEN REPLY ~Dyanna Invoker~ GOTO 2
  IF ~~ THEN REPLY ~Cherise Invoker~ GOTO 2
  IF ~~ THEN REPLY ~Emillus Transmuter~ GOTO 1
  IF ~~ THEN REPLY ~Benecia Conjurer~ GOTO 2
  IF ~~ THEN REPLY ~Almeric Mentalist~ GOTO 2
  IF ~~ THEN REPLY ~Benecia, the head of the *Meta* school.~ GOTO 2
  IF ~~ THEN REPLY ~Dyanna Mentalist~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY ~The passage has been unblocked, your way is open.~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT33")~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Your answer is wrong, the passage is being collapsed.~
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END