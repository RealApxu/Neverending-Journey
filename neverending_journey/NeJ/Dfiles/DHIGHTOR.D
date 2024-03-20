BEGIN ~DHIGHTOR~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Ah.  A visitor.  Stay still for a moment.  I can't see you clearly.  My eyes are no longer strong.  Have you come as a student or a patient?~
  IF ~~ THEN REPLY ~Uh... what?~ GOTO 1
  IF ~~ THEN REPLY ~A student, of course.~ GOTO 2
  IF ~~ THEN REPLY ~Patient.~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY ~Student or patient... it's a simple question.~
  IF ~~ THEN REPLY ~For what purpose?~ GOTO 4
  IF ~~ THEN REPLY ~I'm a student.~ GOTO 2
  IF ~~ THEN REPLY ~I'm a patient.~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~Excellent!  Yxunomei finally listened to my requests.  Now, children, if you are to become truly cultured in our society, you must learn the fine vocation that I learned over a thousand years ago.  It is the most graceful, demanding art that our society has produced.~
  IF ~~ THEN REPLY ~And what, exactly, is this art?~ GOTO 5
  IF ~~ THEN REPLY ~I'm sure it is, you reptilian monster.  Die!~ GOTO 6
  IF ~~ THEN REPLY ~Can you excuse me for a moment?  I'll be right back.~ GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY ~Ah.  More hypnotized candidates from the baptist.  Perhaps you will possess some of the knowledge we are looking for.  Lie down on that table while I get out my instruments.  I only hope you last a bit longer than your friends.  Humanoids are such fragile creatures.~
  IF ~~ THEN REPLY ~We'll see who's weak, fiend.~ GOTO 6
  IF ~~ THEN REPLY ~Sure, just hold on a second...~ GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY ~Need you ask?~
  IF ~~ THEN REPLY ~Well... yes.~ GOTO 7
  IF ~~ THEN REPLY ~Of course not.  I'm a student.~ GOTO 2
  IF ~~ THEN REPLY ~No.  I'm a patient.~ GOTO 3
END

IF ~~ THEN BEGIN 5
  SAY ~Torture, of course.  It is the method by which our people have gathered information for thousands of years.  When purebloods like you are few or ineffective, we must rely on much more direct means for learning about our foes.~
  IF ~~ THEN REPLY ~Only creatures as vile as you would ever think of torture as an art.~ GOTO 6
  IF ~~ THEN REPLY ~Sure... I guess.~ GOTO 7
  IF ~~ THEN REPLY ~Yeah!  That's what I've always thought, too.  Torture's great.~ GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY ~Damn these weak eyes for failing me!  No matter.  You will suffer all the same, weaklings.~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Wait... wait... something about you doesn't seem right...   Impostors!  Impostors!  Damn my eyes for failing me!~
  IF ~~ THEN DO ~Enemy()~ EXIT
END
