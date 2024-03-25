BEGIN ~WINTHR2~

IF ~NumberOfTimesTalkedTo(0) Global("VP_Winthrop_In_NeJ","GLOBAL",0)~ THEN BEGIN 0
  SAY ~Aye, now there's the rapscallion! Set on the little wisp, now, and make every bolt count!~
  IF ~~ THEN REPLY ~Where are they? Call them off, Winthrop, I didn't do anything!~ GOTO 1
  IF ~~ THEN REPLY ~Winthrop, you old fool! If I had an arrow for every one of these practical jokes you've played on me, I'd... I'd... I don't know, I'd have a lot of arrows! Well met, my friend.~ GOTO 4
  IF ~~ THEN REPLY ~You'll never take me alive!!!~ GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY ~Sigh... I was hoping your journey into the big world might have put a better humor into ye but methinks my hopes have failed me. What have ye been up to out there, child?~
  IF ~~ THEN REPLY ~I've been trying to get to the bottom of this metal crisis. A merchants' guild is involved, somehow: Iron Throne. Do you know anything about them?~ GOTO 2
  IF ~~ THEN REPLY ~Wearing out your cheap merchandise, what else?~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~The Iron Throne, child... Why there be no bigger or more dastardly mercantile consortium in all the Western Realms. They've been barred from Cormyr for their unsavory practices but all it's done is make them nastier. Ye'd best steer clear of them as long as ye've still got life in ye.~
  IF ~~ THEN DO ~StartStore("Inn2616",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~Har, ye've got a better sense of humor than I pegged ye for... that was a joke, wasn't it?~
  IF ~~ THEN DO ~StartStore("Inn2616",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Yes, ye'd run me right out of the fletching business in a flash, ye would! It's good to see your impish face again! Now fill me in on what it is ye've been doing lately.~
  IF ~~ THEN REPLY ~I've been trying to get to the bottom of this metal crisis. A merchants' guild is involved, somehow. Iron Throne. Do you know anything about them?~ GOTO 2
  IF ~~ THEN REPLY ~I've been adventuring, Winthrop. There's a world out there and it needs a righteous old kick in the arse every now and again, doesn't it?~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~Spoken with the wisdom of a true fool! By the gods, I love this bastard child!~
  IF ~~ THEN DO ~StartStore("Inn2616",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~Whoa, calm down, kiddo. That big old world has tied yer britches in a knot, han't she... It's just good old Winthrop trying to pull yer leg again... I guess having to see Gorion die like that has its effect on a kid, eh? I'll keep my jokes to myself, next time, I guess.~
  IF ~~ THEN DO ~StartStore("Inn2616",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~!NumberOfTimesTalkedTo(0) Global("VP_Winthrop_In_NeJ","GLOBAL",0)~ THEN BEGIN 7
  SAY ~Down to business, then, is it? We got ale, we got armor, we got... Ah hell, this is old hat. Ye know what it is we all got.~
  IF ~~ THEN DO ~StartStore("Inn2616",LastTalkedToBy(Myself))~ EXIT
END

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//NEJ///
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

IF ~~ THEN BEGIN 8
  SAY ~Well, it was good speaking with you.~
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0) Global("VP_Winthrop_In_NeJ","GLOBAL",1)~ THEN BEGIN 9
  SAY ~Well I�ll be! Now here�s a face I ne�er thought to see back here. 10,000 gold pieces lads to whoe�er brings <PRO_HIMHER> down!~
  IF ~~ THEN REPLY ~What the... Winthrop, you know me, it is <CHARNAME>. Whatever you have heard you heard it wrong!~ GOTO 10
  IF ~~ THEN REPLY ~Be warned, I am not the same clueless adolescent that left Candlekeep! If any of you so much as draws a sword it will be the last thing they do!~ GOTO 10
  IF ~~ THEN REPLY ~10,000g, is that all the head of the hero of the Sword Coast is worth?~ GOTO 16
  IF ~~ THEN REPLY ~Not again, nice to see the years have not changed you Winthrop. Still full of the same lame old wit of yours.~ GOTO 18
END

IF ~~ THEN BEGIN 10
  SAY ~Steady there <CHARNAME>! What�s the world done to ye that yer a feared of ol� Winthrop�s jests now?~
  IF ~~ THEN REPLY ~I should have guessed Winthrop, you had me going for a minute there you old joker. The world has made a much warier person when it comes to threats on my life.~ GOTO 11
  IF ~~ THEN REPLY ~Bad reaction on my part Winthrop, but there is at least one person I know that would give 10,000 gp and maybe more to have me back in his clutches.~ GOTO 11
  IF ~~ THEN REPLY ~It is a hard world out there old man, and I have learnt to act first and then ask questions, if the person issuing the threat is still breathing that is! Out there, I no longer know friend from enemy.~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~Ye be safe enough here <CHARNAME>, none�ll bother ye whilst yer be under this roof. Tell ol� Winthrop what brings yer back this way?~
  IF ~OR(3) !InParty("Dar") Dead("Dar") !Global("VP_Slave_Released","GLOBAL",2)~ THEN REPLY ~Curiosity, nostalgia, not really sure Winthrop. I was passing and thought it would be good to drop in, see the old place again.~ GOTO 12
  IF ~OR(3) !InParty("Dar") Dead("Dar") !Global("VP_Slave_Released","GLOBAL",2)~ THEN REPLY ~Do I need a reason to return to the only place I have ever called home Winthrop?~ GOTO 12
  IF ~OR(3) !InParty("Dar") Dead("Dar") !Global("VP_Slave_Released","GLOBAL",2)~ THEN REPLY ~That is my business and no one else�s. Now leave me be, I need to rest up a while.~ GOTO 13
  IF ~ InParty("Dar") !Dead("Dar") Global("VP_Slave_Released","GLOBAL",2) Global("VP_Winthrop_Fix","GLOBAL",0)~ THEN REPLY ~Probably something and nothing Winthrop. Tell me, you know of any orc or half orc visitors of late?~ GOTO 14
  IF ~InParty("Dar") !Dead("Dar") Global("VP_Slave_Released","GLOBAL",2) Global("VP_Winthrop_Fix","GLOBAL",0)~ THEN REPLY ~I look for a newcomer to Candlekeep. Possibly orc or half orc and probably arrived a couple of months ago. You remember seeing any strangers recently Winthrop?~ GOTO 14
  IF ~InParty("Dar") !Dead("Dar") Global("VP_Slave_Released","GLOBAL",2) Global("VP_Winthrop_Fix","GLOBAL",0)~ THEN REPLY ~Only a short visit, I am not intending to stay any longer than is necessary. Tell me, you know of any strangers arrive and not leave of late?~ GOTO 14
END

IF ~~ THEN BEGIN 12
  SAY ~Yer�ll always find a welcome here <CHARNAME>. Takes yer time and have a good look about. Lots of folk here�ll be pleased to share a yarn with yer. Yer knows where I am if ye needs anything.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~Always was an arrogant whippersnapper. For Gorion�s sake and his memory yer�ll always find a welcome under �ol Winthrop�s roof. Yer knows where I am if ye needs anything.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY ~Happens I do. Feller over there, (*indicating to a half orc*), name�s Bardo, works fer me and a hard worker he be too. Could be the feller yer be needing.~
  IF ~~ THEN REPLY ~Thanks Winthrop, I will speak with him, see what he has to say for himself.~ GOTO 15
  IF ~~ THEN REPLY ~I hope so, because I will not be pleased if I have to waste time searching all of Candlekeep for him. Come, let us see what he has to say.~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~Yer knows where I am if ye needs anything.~
  IF ~~ THEN DO ~SetGlobal("VP_Dar_Quest","GLOBAL",8) SetGlobal("VP_Winthrop_Fix","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY ~Hero of the Sword Coast eh, and from such humble beginnings yer head grew to its present size eh <CHARNAME>!~
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY ~How did ye manage to get it through Winthrop�s door? Ha-ha-ha... jests aside, what brings ye back this way, been a while it has?~
  IF ~OR(3) !InParty("Dar") Dead("Dar") !Global("VP_Slave_Released","GLOBAL",2)~ THEN REPLY ~Curiosity, nostalgia, not really sure Winthrop. I was passing and thought it would be good to drop in, see the old place again.~ GOTO 12
  IF ~OR(3) !InParty("Dar") Dead("Dar") !Global("VP_Slave_Released","GLOBAL",2)~ THEN REPLY ~Do I need a reason to return to the only place I have ever called home Winthrop?~ GOTO 12
  IF ~ OR(3) !InParty("Dar") Dead("Dar") !Global("VP_Slave_Released","GLOBAL",2)~ THEN REPLY ~That is my business and no one else�s. Now leave me be, I need to rest up a while.~ GOTO 13
  IF ~InParty("Dar") !Dead("Dar") Global("VP_Slave_Released","GLOBAL",2) Global("VP_Winthrop_Fix","GLOBAL",0)~ THEN REPLY ~Probably something and nothing Winthrop. Tell me, you know of any orc or half orc visitors of late?~ GOTO 14
  IF ~InParty("Dar") !Dead("Dar") Global("VP_Slave_Released","GLOBAL",2) Global("VP_Winthrop_Fix","GLOBAL",0)~ THEN REPLY ~I look for a newcomer to Candlekeep. Possibly orc or half orc and probably arrived a couple of months ago. You remember seeing any strangers recently Winthrop?~ GOTO 14
  IF ~InParty("Dar") !Dead("Dar") Global("VP_Slave_Released","GLOBAL",2) Global("VP_Winthrop_Fix","GLOBAL",0)~ THEN REPLY ~Only a short visit, I am not intending to stay any longer than is necessary. Tell me, you know of any strangers arrive and not leave of late?~ GOTO 14
END

IF ~~ THEN BEGIN 18
  SAY ~Always was an arrogant kid, weren�t yer <CHARNAME>! I Guess for all Gorion�s teachings, blood will always out.~
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY ~There was them that tried to tell him... still, for his sake, yer�ll always be safe under �ol Winthrop�s roof. What yer here fer this time?~
  IF ~OR(3) !InParty("Dar") Dead("Dar") !Global("VP_Slave_Released","GLOBAL",2)~ THEN REPLY ~Curiosity, nostalgia, not really sure Winthrop. I was passing and thought it would be good to drop in, see the old place again.~ GOTO 12
  IF ~OR(3) !InParty("Dar") Dead("Dar") !Global("VP_Slave_Released","GLOBAL",2)~ THEN REPLY ~Do I need a reason to return to the only place I have ever called home Winthrop?~ GOTO 12
  IF ~OR(3) !InParty("Dar") Dead("Dar") !Global("VP_Slave_Released","GLOBAL",2)~ THEN REPLY ~That is my business and no one else�s. Now leave me be, I need to rest up a while.~ GOTO 13
  IF ~InParty("Dar") !Dead("Dar") Global("VP_Slave_Released","GLOBAL",2) Global("VP_Winthrop_Fix","GLOBAL",0)~ THEN REPLY ~Probably something and nothing Winthrop. Tell me, you know of any orc or half orc visitors of late?~ GOTO 14
  IF ~InParty("Dar") !Dead("Dar") Global("VP_Slave_Released","GLOBAL",2) Global("VP_Winthrop_Fix","GLOBAL",0)~ THEN REPLY ~I look for a newcomer to Candlekeep. Possibly orc or half orc and probably arrived a couple of months ago. You remember seeing any strangers recently Winthrop?~ GOTO 14
  IF ~InParty("Dar") !Dead("Dar") Global("VP_Slave_Released","GLOBAL",2) Global("VP_Winthrop_Fix","GLOBAL",0)~ THEN REPLY ~Only a short visit, I am not intending to stay any longer than is necessary. Tell me, you know of any strangers arrive and not leave of late?~ GOTO 14
END

IF ~!NumTimesTalkedTo(0) Global("VP_Winthrop_In_NeJ","GLOBAL",1)~ THEN BEGIN 20
  SAY ~As good to see ye again as any other I could have laid eyes on. Make yourself as comfortable as you will.  If you wish for anything, just ask.~
  IF ~InParty("Dar") !Dead("Dar") Global("VP_Slave_Released","GLOBAL",2) Global("VP_Winthrop_Fix","GLOBAL",0)~ THEN REPLY ~Probably something and nothing Winthrop. Tell me, you know of any orc or half orc visitors of late?~ GOTO 14
  IF ~InParty("Dar") !Dead("Dar") Global("VP_Slave_Released","GLOBAL",2) Global("VP_Winthrop_Fix","GLOBAL",0)~ THEN REPLY ~I look for a newcomer to Candlekeep. Possibly orc or half orc and probably arrived a couple of months ago. You remember seeing any strangers recently Winthrop?~ GOTO 14
  IF ~InParty("Dar") !Dead("Dar") Global("VP_Slave_Released","GLOBAL",2) Global("VP_Winthrop_Fix","GLOBAL",0)~ THEN REPLY ~Only a short visit, I am not intending to stay any longer than is necessary. Tell me, you know of any strangers arrive and not leave of late?~ GOTO 14
  IF ~~ THEN REPLY ~Sure, what do you have?~ DO ~StartStore("Inn2616",LastTalkedToBy(Myself))~ EXIT
  IF ~~ THEN REPLY ~Nothing for me, thank you.~ GOTO 8
END

IF ~!Global("VP_Winthrop_Fix","GLOBAL",0) !NumTimesTalkedTo(0) Global("VP_Winthrop_In_NeJ","GLOBAL",1)~ THEN BEGIN 21
  SAY ~It's good to see you well, young one. Drop by the Inn any time if ye need a short respite from the monotony of the library.~
  IF ~~ THEN DO ~StartStore("Inn2616",LastTalkedToBy(Myself))~ EXIT
END