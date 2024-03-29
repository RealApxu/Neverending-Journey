BEGIN ~DSAABLIC~

IF WEIGHT #1 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Proceed... no further, traveler, as... I  would... speak with you.~
  IF ~~ THEN REPLY ~I didn�t realize your kind COULD speak.~ GOTO 2
  IF ~~ THEN REPLY ~Who are you?~ GOTO 2
  IF ~~ THEN REPLY ~I�m sorry, but I really must be on my way.~ GOTO 11
END

IF WEIGHT #2 ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY ~Greetings... again, traveler.~
  IF ~PartyHasItem("Krilag")Global("Chief_Dead","GLOBAL",1)Global("Saablic_Quest","GLOBAL",1)~ THEN REPLY ~I have disposed of the orog chieftain and acquired his badge. ~ DO ~AddexperienceParty(5000)~ GOTO 10
  IF ~Global("Chief_Dead","GLOBAL",1)Global("Saablic_Quest","GLOBAL",1) !PartyHasItem("Krilag")~ THEN REPLY ~I have disposed of the orog chieftain.~ GOTO 13
  IF ~Global("Saablic_Quest","GLOBAL",0)~ THEN REPLY ~How is it that you are speaking to me?~ GOTO 2
  IF ~Global("Saablic_Quest","GLOBAL",0)~ THEN REPLY ~Who are you?~ GOTO 2
  IF ~~ THEN REPLY ~I�m just passing by.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~I... am not what... you see.  I... was a master... transmuter.  A red... wizard of Thay.  My knowledge... vast and... aruu...~
  IF ~~ THEN REPLY ~You were a wizard?~ DO ~SetGlobal("Saablic_Known","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY ~How is it that you came to be in your current form?~ DO ~SetGlobal("Saablic_Known","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY ~I�m sorry, but I don�t have the patience for this.  Good day.~ GOTO 11
END

IF ~~ THEN BEGIN 3
  SAY ~My name... is... was Saablic... Tan.   Of my... mistakes... one grew tired... used my precious... magics to make... that which... I am.   Having... much confusion as... days move on.  Must... mm... tell you I... am frightened.~
  IF ~~ THEN REPLY ~Why are you frightened?~ GOTO 4
  IF ~~ THEN REPLY ~I�m sorry, but I don�t have the patience for this.  Good day.~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Orogs that... roam these passages... my passages... are my... creation.   They... have much contempt... for me.  I cannot... leave.  My form... my home... punishment for my... ambition.  I... derived pleasure... for altering against... their will.  I have... much regret.~
  IF ~~ THEN REPLY ~How can the situation be rectified?~ GOTO 5
  IF ~~ THEN REPLY ~Why should anyone feel sorry for you?~ GOTO 5
  IF ~~ THEN REPLY ~I will leave you to your regrets.  ~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~What is done... is done.  I cannot... excuse my actions... or my... intents.  I am... not alone in... guilt and I... am consumed with... hatred for one.  Responsibility... rests not... on my soul... alone.  I am... but a pawn.~
  IF ~~ THEN REPLY ~Tell me more of your situation.~ GOTO 6
  IF ~~ THEN REPLY ~I�ve heard enough and must be on my way.~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~I must... be brief as... I grow tired.  You can... help others... and help me.  Within... these caves... the orogs have... a leader.  Not only... that role... but another he... fills.~
  IF ~~ THEN REPLY ~What is this other role?~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~He is one... of six.  His presence... and others... here to prevent... intrusion.  Placed... by the one... that would wrong... myself and many... many others.  Without... his existence... his minions will... scatter... and the evil... drow weaker.~
  IF ~~ THEN REPLY ~You want me to dispose of this leader?~ GOTO 8
  IF ~Global("Chief_Dead","GLOBAL",1)!PartyHasItem("Krilag")~ THEN REPLY ~I believe I already disposed of this leader.~ GOTO 13
  IF ~Global("Chief_Dead","GLOBAL",1)PartyHasItem("Krilag")~ THEN REPLY ~I believe I already disposed of this leader.~ DO ~AddexperienceParty(5000)~ GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY ~I�m afraid... there may be... no other way.  I remain... overcome... with guilt.  I... cannot excuse... my actions however... my relevance... in this world... flickers and a... far greater injustice... burns bright.~
  IF ~~ THEN REPLY ~I will see what I can do.~ DO ~SetGlobal("Saablic_Quest","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY ~I won�t do that.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~I... am very... grateful and know... your actions extend... beyond my... plight.  Before you... leave... he will be... in possession of... a symbol.  A... badge.  You must obtain... this.  Return with... this and I... will know you... are true to... your word.  I will... attempt to provide... more insight then. ~
  IF ~~ THEN REPLY ~I will return.~ UNSOLVED_JOURNAL ~Upper Dorn�s Deep.

We met an umber hulk who was actually a Red Wizard of Thay named Saablic Tan. Saablic alluded to a "great injustice" in the world, and spoke of his fear of retaliation from the orogs in the area he helped create. He has asked us to dispose of an orog chieftain in the area and return with a badge that the chieftain possesses. In exchange, he promised to provide us with more information.~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~I am... forever in debt... to you.  I... cannot speak much... longer.  I must... tell you that... each of the six... have such a... badge.   Should you... go in search of... him you will... need to obtain... each of them.  I... must... rest. ~
  IF ~~ THEN REPLY ~Goodbye, Saablic.~ DO ~SetGlobal("Saablic_Known","GLOBAL",2) EraseJournalEntry(%Upper Dorn�s Deep.

We met an umber hulk who was actually a Red Wizard of Thay named Saablic Tan. Saablic alluded to a "great injustice" in the world, and spoke of his fear of retaliation from the orogs in the area he helped create. He has asked us to dispose of an orog chieftain in the area and return with a badge that the chieftain possesses. In exchange, he promised to provide us with more information.%) EscapeArea()~ SOLVED_JOURNAL ~Upper Dorn�s Deep.

We returned with the badge for Saablic, and in turn he informed us that there were five "others" in possession of similar badges.  Apparently, we�ll need to obtain all of them, but for what reason, I don�t know.~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY ~Know this... traveler.  Without... my knowledge... your continued existence... within this world... will be limited.~
  IF ~~ THEN REPLY ~Alright, I�m listening.~ GOTO 3
  IF ~~ THEN REPLY ~I�ll take my chances.~ EXIT
END

IF WEIGHT #0 ~Global("Saablic_Known","GLOBAL",2)~ THEN BEGIN 12
  SAY ~Thank you... again, traveler.  I must... rest.~
  IF ~~ THEN REPLY ~Can I ask...~ EXIT
  IF ~~ THEN REPLY ~You�re welcome, Saablic.~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~If this... is to be... true, you will... have found... a badge.  Do you... have such... an item?~
  IF ~~ THEN REPLY ~I�m afraid I do not.~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~It is very... important that you... obtain this item.  Please... revisit your journey... and bring the badge... as only then... will you begin... and I... have closure.~
  IF ~Global("Saablic_Known","GLOBAL",1)~ THEN REPLY ~I will find it.~ GOTO 15
  IF ~!Global("Saablic_Known","GLOBAL",1)~ THEN REPLY ~I will find it.~ GOTO 9
END

IF ~~ THEN BEGIN 15
  SAY ~Thank you... again.~
  IF ~~ THEN REPLY ~Farewell, Saablic.~ EXIT
END
