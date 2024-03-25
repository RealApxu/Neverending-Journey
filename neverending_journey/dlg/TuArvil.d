BEGIN ~TUARVIL~

IF ~RandomNum(12, 1)~ THEN BEGIN 0 // from:
  SAY ~If I'd known the academy was going to be so hot all the time, I'd have opted to go to Ulcaster!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 2)~ THEN BEGIN 1 // from:
  SAY ~*Sighs*... Sand, sand and yet more sand, everywhere I look I see sand!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 3)~ THEN BEGIN 2 // from:
  SAY ~I can't believe my luck... here I am, studying at the greatest Academy in the land.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 4)~ THEN BEGIN 3 // from:
  SAY ~Yea gods, why did I choose to study enchantment. That Xan is so bloody pessimistic and uninspiring for an enchanter!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 5)~ THEN BEGIN 4 // from:
  SAY ~If you haven't chosen your specialisation yet take a tip from me, avoid conjuration... Mordecai sets more homework than the rest of the tutors put together!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 6)~ THEN BEGIN 5 // from:
  SAY ~You should join Theodoran's classes... he's ace at casting those Invocation spells.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 7)~ THEN BEGIN 6 // from:
  SAY ~Damn this heat! Word is we're in for another blasted sand storm tomorrow.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 8)~ THEN BEGIN 7 // from:
  SAY ~Has anyone else noticed the absence of so many senior staff? Only a few days ago, you couldn't even go to the privy without one on your tail.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 9)~ THEN BEGIN 8 // from:
  SAY ~Sorry no time to chat, I've just discovered I have an exam next and I haven't memorised my spells!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 10)~ THEN BEGIN 9 // from:
  SAY ~You'll have to excuse me, I've just come from one of Ezekiel's classes and I need to lie down for a bit.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 11)~ THEN BEGIN 10 // from:
  SAY ~Lavallin sure keeps some strange components on the top shelves in his store.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 12)~ THEN BEGIN 11 // from:
  SAY ~I heard from someone, who heard from some one else that there were some pretty big names in the Academy last night... no sign of them today though.~
  IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("VP_Brial_Search","LOCALS",0) PartyHasItem("TuLette4")~ THEN BEGIN 12
  SAY ~Hey! Do I know you?~
  IF ~~ THEN REPLY ~No I am new here... name's <GABBER>, I am looking for a tutor named Brial. Any idea where she might be?~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY ~Hi <GABBER>, I am Arvilais. If it's a tutor you're looking for and she isn't in the classrooms, then she'll probably be in her apartments, but believe me... you don't want to be found poking around up there!~
  IF ~~ THEN DO ~SetGlobal("VP_Brial_Search","LOCALS",1)~ EXIT
END