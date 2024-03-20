BEGIN ~DGORG~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~What in the nine hells do you want?~
  IF ~~ THEN REPLY ~I would like to ask you some questions.~ GOTO 2
  IF ~Global("Kill_Gorg","GLOBAL", 3)~ THEN REPLY ~I am here to slay you so that I may free the slaves.~ GOTO 11
  IF ~~ THEN REPLY ~Nothing, farewell for now.~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY ~What in the nine hells do you want?~
  IF ~~ THEN REPLY ~I would like to ask you some questions.~ GOTO 2
  IF ~Global("Kill_Gorg","GLOBAL", 3)~ THEN REPLY ~I am here to slay you so that I may free the slaves.~ GOTO 11
  IF ~~ THEN REPLY ~Nothing, farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~So get on with it.~
  IF ~~ THEN REPLY ~Who are you?~ GOTO 3
  IF ~~ THEN REPLY ~What are you doing down here?~ GOTO 4
  IF ~~ THEN REPLY ~Can you tell me anything about these caverns?~ GOTO 9
  IF ~Global("Explore_Cave","GLOBAL", 3)~ THEN REPLY ~I am curious about the cave to the north.  Do you know anything about it?~ GOTO 10
  IF ~~ THEN REPLY ~I will be going now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~Gorg.  That’s my name. ~
  IF ~~ THEN REPLY ~I have some questions for you.~ GOTO 2
  IF ~~ THEN REPLY ~I must be leaving now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~See the pen over there?  I’m watching those good for nothing slaves...  Well, they were good for nothing.  We found a use for them, though!~
  IF ~~ THEN REPLY ~What use is that?~ GOTO 5
  IF ~~ THEN REPLY ~I have some more questions for you.~ GOTO 2
  IF ~~ THEN REPLY ~I must be leaving now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~We feed them to Frostbite and his ilk.  Keeps them in line.~
  IF ~Global("Frostbite_Dead","GLOBAL", 1)~ THEN REPLY ~Those days are now over and done.  Frostbite is dead.~ GOTO 12
  IF ~~ THEN REPLY ~You *feed* them to Frostbite?  What do you mean?~ GOTO 8
  IF ~~ THEN REPLY ~I have some more questions for you.~ GOTO 2
  IF ~~ THEN REPLY ~I must be leaving now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~Humph.  Go find out for yourself, small one.  Go back to the throne room and on the way out turn left and then turn right at the shrine...  You’ll find out who frostbite is then.~
  IF ~~ THEN REPLY ~I do not know where the throne room is.  Can you direct me?~ GOTO 7
  IF ~~ THEN REPLY ~I have some more questions for you.~ GOTO 2
  IF ~~ THEN REPLY ~I must be leaving now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Go past the slave pens and follow the passage to the left.  It will lead you to the throne room.~
  IF ~~ THEN REPLY ~I have some more questions for you.~ GOTO 2
  IF ~~ THEN REPLY ~I must be leaving now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~Just what I said.  You got a hearing problem or something?  We feed the slaves to Frostbite and that keeps him and his kind in line.~
  IF ~~ THEN REPLY ~Who or what is Frostbite?~ GOTO 6
  IF ~~ THEN REPLY ~I have some more questions for you.~ GOTO 2
  IF ~~ THEN REPLY ~I must be leaving now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~Bah!  Look around, small one.  You’ll learn more than you want to know about these caverns.  I’ve nothing to tell you.~
  IF ~~ THEN REPLY ~I have some more questions for you.~ GOTO 2
  IF ~~ THEN REPLY ~I must be leaving now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~I don’t know much.  That cave is too small for us to get into...  It stinks though...  and I hear something moving in there at times...  That’s all I know.~
  IF ~~ THEN REPLY ~I have some more questions for you.~ GOTO 2
  IF ~~ THEN REPLY ~I must be leaving now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY ~Ha!  So you think you can defeat Gorg?  I will slay you and hang your carcass on the wall behind me for all to see.  You shall be my trophy!~
  IF ~~ THEN REPLY ~We shall see who is a trophy.  Prepare to die!~ DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY ~Dead, you say?  What did he die from?~
  IF ~~ THEN REPLY ~I killed him.~ GOTO 13
  IF ~GlobalGT("Kill_Frost","GLOBAL", 2)~ THEN REPLY ~I slew him to end the sacrifice of the slaves. ~ GOTO 14
  IF ~~ THEN REPLY ~I cannot say.  I have some more questions for you.~ GOTO 2
  IF ~~ THEN REPLY ~I must be leaving now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~Well, good riddance to him.~
  IF ~~ THEN REPLY ~I have some more questions for you.~ GOTO 2
  IF ~~ THEN REPLY ~I must be leaving now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY ~Oh really?  Well, I guess I’m going to have to slay you for that.  Die scum!~
  IF ~~ THEN REPLY ~So be it!~ DO ~Enemy()~ EXIT
END
