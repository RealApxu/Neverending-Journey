BEGIN ~DLISTEN~

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~What you want?~
  IF ~~ THEN REPLY ~I was wondering what you are doing.~ DO ~SetGlobal("Hear_Noise","GLOBAL",1)~ JOURNAL ~Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out, he finds nothing. This sounds a bit strange. Perhaps it bears checking out.~ GOTO 2
  IF ~~ THEN REPLY ~Nothing.  Farewell.~ EXIT
END

IF WEIGHT #3 ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY ~You again.  What you want this time?~
  IF ~~ THEN REPLY ~I was wondering what you are doing.~ DO ~SetGlobal("Hear_Noise","GLOBAL",1)~ JOURNAL ~Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out, he finds nothing. This sounds a bit strange. Perhaps it bears checking out.~ GOTO 2
  IF ~Global("Hear_Noise","GLOBAL",1)~ THEN REPLY ~You mentioned hearing something down the hall earlier.~ GOTO 8
  IF ~~ THEN REPLY ~Nothing.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Sometimes I hear noise down hall.  I go look but nothing there.  I not know what going on.  I worried.~
  IF ~~ THEN REPLY ~This is an old building.  It could be settling and that is what you hear.~ GOTO 3
  IF ~~ THEN REPLY ~Would you like me to take a look?  Maybe I will find something.~ DO ~SetGlobal("Hear_Noise","GLOBAL",3)~ JOURNAL ~Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out he finds nothing. This sounds a bit strange so we offered to check it out ourselves. Perhaps we will find something that he missed.~ GOTO 4
  IF ~Global("Know_Vera","GLOBAL",1)~ THEN REPLY ~Oh.  There is a woman hiding down there.  It is she that you hear moving around.~ DO ~SetGlobal("Hear_Noise","GLOBAL",4)
EraseJournalEntry(%Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out, he finds nothing. This sounds a bit strange. Perhaps it bears checking out.%)
EraseJournalEntry(%Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out he finds nothing. This sounds a bit strange so we offered to check it out ourselves. Perhaps we will find something that he missed.%)
AddexperienceParty(16500)~ SOLVED_JOURNAL ~Wyrm�s Tooth.

We talked to the salamander that was hearing things down the hall. We told him that Vera was hiding down there and that she was more than likely what he heard. He then killed her.~ GOTO 5
  IF ~Global("Know_Vera","GLOBAL",1)~ THEN REPLY ~I have been down there.  I found nothing that should concern you.  You worry for nothing.~ DO ~SetGlobal("Hear_Noise","GLOBAL",4)
EraseJournalEntry(%Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out, he finds nothing. This sounds a bit strange. Perhaps it bears checking out.%)
EraseJournalEntry(%Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out he finds nothing. This sounds a bit strange so we offered to check it out ourselves. Perhaps we will find something that he missed.%)
AddexperienceParty(16500)~ SOLVED_JOURNAL ~Wyrm�s Tooth.

We talked to the salamander that was hearing things down the hall. We believe that it was Vera moving about that he was hearing. We told him that there was nothing down the hall that he should concern himself with. This satisfied him, so Vera should be safe.~ GOTO 7
  IF ~~ THEN REPLY ~I see.  Well, farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~Yes... Could be but I not know...~
  IF ~~ THEN REPLY ~Would you like me to take a look?  Maybe I will find something.~ DO ~SetGlobal("Hear_Noise","GLOBAL",3)~ JOURNAL ~Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out he finds nothing. This sounds a bit strange so we offered to check it out ourselves. Perhaps we will find something that he missed.~ GOTO 4
  IF ~~ THEN REPLY ~I would not worry about it.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Yes.  You look.  You come back tell me what you find.  I wait here.~
  IF ~~ THEN REPLY ~Very well, farewell.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Woman hiding?  Escaped slave!  I kill!~
  IF ~Global("Vera_Dead","GLOBAL",1)~ THEN REPLY ~She is already dead. You have nothing to worry about now.~ GOTO 10
  IF ~!Global("Vera_Dead","GLOBAL",1)~ THEN REPLY ~Very well, farewell.~ DO ~SetGlobal("Betray_Vera","GLOBAL",1)~ EXIT
END

IF WEIGHT #1 ~Global("Hear_Noise","GLOBAL",3)~ THEN BEGIN 6
  SAY ~You back.  You find what make noise?~
  IF ~Global("Know_Vera","GLOBAL",1)~ THEN REPLY ~Oh.  There is a woman hiding down there.  It is she that you hear moving around.~ DO ~SetGlobal("Hear_Noise","GLOBAL",4)
EraseJournalEntry(%Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out, he finds nothing. This sounds a bit strange. Perhaps it bears checking out.%)
EraseJournalEntry(%Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out he finds nothing. This sounds a bit strange so we offered to check it out ourselves. Perhaps we will find something that he missed.%)
AddexperienceParty(16500)~ SOLVED_JOURNAL ~Wyrm�s Tooth.

We talked to the salamander that was hearing things down the hall. We told him that Vera was hiding down there and that she was more than likely what he heard. He then killed her.~ GOTO 5
  IF ~Global("Know_Vera","GLOBAL",1)~ THEN REPLY ~I have been down there.  I found nothing that should concern you.  You worry for nothing.~ DO ~SetGlobal("Hear_Noise","GLOBAL",4)
EraseJournalEntry(%Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out, he finds nothing. This sounds a bit strange. Perhaps it bears checking out.%)
EraseJournalEntry(%Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out he finds nothing. This sounds a bit strange so we offered to check it out ourselves. Perhaps we will find something that he missed.%)
AddexperienceParty(16500)~ SOLVED_JOURNAL ~Wyrm�s Tooth.

We talked to the salamander that was hearing things down the hall. We believe that it was Vera moving about that he was hearing. We told him that there was nothing down the hall that he should concern himself with. This satisfied him, so Vera should be safe.~ GOTO 7
  IF ~~ THEN REPLY ~I�m still looking.  I�ll come back when I�ve searched the area.~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Fine... I ignore.  I not let it bother me.  I thank you.~
  IF ~~ THEN REPLY ~You are welcome.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~Yes... I hear sound.  I go look but nothing there.  I not know what going on.  I worried.~
  IF ~Global("Know_Vera","GLOBAL",1)~ THEN REPLY ~Oh.  There is a woman hiding down there.  It is she that you hear moving around.~ DO ~SetGlobal("Hear_Noise","GLOBAL",4)
EraseJournalEntry(%Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out, he finds nothing. This sounds a bit strange. Perhaps it bears checking out.%)
EraseJournalEntry(%Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out he finds nothing. This sounds a bit strange so we offered to check it out ourselves. Perhaps we will find something that he missed.%)
AddexperienceParty(16500)~ SOLVED_JOURNAL ~Wyrm�s Tooth.

We talked to the salamander that was hearing things down the hall. We told him that Vera was hiding down there and that she was more than likely what he heard. He then killed her.~ GOTO 5
  IF ~Global("Know_Vera","GLOBAL",1)~ THEN REPLY ~I have been down there. I found nothing that should concern you. You worry for nothing.~ DO ~SetGlobal("Hear_Noise","GLOBAL",4)
EraseJournalEntry(%Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out, he finds nothing. This sounds a bit strange. Perhaps it bears checking out.%)
EraseJournalEntry(%Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out he finds nothing. This sounds a bit strange so we offered to check it out ourselves. Perhaps we will find something that he missed.%)
AddexperienceParty(16500)~ SOLVED_JOURNAL ~Wyrm�s Tooth.

We talked to the salamander that was hearing things down the hall. We believe that it was Vera moving about that he was hearing. We told him that there was nothing down the hall that he should concern himself with. This satisfied him, so Vera should be safe.~ GOTO 7
  IF ~~ THEN REPLY ~Would you like me to take a look?  Maybe I will find something.~ DO ~SetGlobal("Hear_Noise","GLOBAL",3)~ GOTO 4
  IF ~~ THEN REPLY ~This is an old building.  It could be settling and that is what you hear.~ GOTO 3
  IF ~~ THEN REPLY ~I would not worry about it.  Farewell.~ EXIT
END

IF WEIGHT #0 ~Global("Hear_Noise","GLOBAL",4)~ THEN BEGIN 9
  SAY ~No need talk you now.  Go away.~
  IF ~~ THEN REPLY ~Very well, farewell.~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~Good... I worry no more. You go away.~
  IF ~~ THEN REPLY ~Very well, farewell.~ EXIT
END
