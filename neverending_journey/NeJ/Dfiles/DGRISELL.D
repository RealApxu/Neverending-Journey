BEGIN ~DGRISELL~

IF ~NumberOfTimesTalkedTo(0) Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 0
  SAY ~Hello there, dearie.  Welcome to the Winter's Cradle Tavern.  My name's Grisella.  I own and operate this fine establishment.  What can I get for you?~
  IF ~~ THEN REPLY ~How about a drink?~ GOTO 2
  IF ~~ THEN REPLY ~I have some questions for you.~ GOTO 9
  IF ~~ THEN REPLY ~Nothing, thank you.  Just passing through.~ EXIT
END

IF ~NumTimesTalkedToGT(0) !Global("Grisella_Quest","GLOBAL",1) Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 1
  SAY ~Welcome back, dearie.  What can I get for you?~
  IF ~Global("Grisella_Quest","GLOBAL",0)~ THEN REPLY ~How about a drink?~ GOTO 2
  IF ~Global("Grisella_Quest","GLOBAL",2)~ THEN REPLY ~How about a drink?~ DO ~StartStore("Ehtav",Player1)~ EXIT
  IF ~~ THEN REPLY ~I have some questions for you.~ GOTO 9
  IF ~~ THEN REPLY ~Nothing, thank you.  Just passing through.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~A drink?  Of course, dearie.   After all, this is a tavern... plenty to drink here, heh heh.~
  IF ~~ THEN REPLY ~Heh, heh.  Yes, indeed.~ GOTO 3
  IF ~~ THEN REPLY ~Well?  What do you have?~ GOTO 3
  IF ~~ THEN REPLY ~My, aren't you the sharp one?  How about that drink?~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Yes, well... you see I'm in a bit of a bind right now.  I've just run out of everything.  I've nothing to offer you in the way of drink at this moment.~
  IF ~~ THEN REPLY ~You've run out of everything?~ GOTO 4
  IF ~~ THEN REPLY ~What kind of tavern are you running here?~ GOTO 4
  IF ~~ THEN REPLY ~No spirits?  That's it, I'm gone.~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Well, the tavern hasn't run completely dry.  I do have some stock down in the cellar, but...~
  IF ~~ THEN REPLY ~But what?~ GOTO 5
  IF ~~ THEN REPLY ~Well I suggest you march on down there and get me something to drink, woman.~ GOTO 5
  IF ~~ THEN REPLY ~Never mind.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~This is rather embarrassing... but, I'm having somewhat of a pest problem down in that dirty ol' cellar and I'm afraid to go down there.  I do so hate bugs!  Just the thought of those nasty creepies and crawlies sends shivers down my spine.~
  IF ~Global("SPRITE_IS_DEADEHBEETLE","GLOBAL",4)~ THEN REPLY ~We've already been down into your cellar - we killed all the beetles we found down there.~ DO ~SetGlobal("Grisella_Quest","GLOBAL",2) AddexperienceParty(500) GivePartyGold(5)~ GOTO 13
  IF ~!Global("SPRITE_IS_DEADEHBEETLE","GLOBAL",4)~ THEN REPLY ~I see.  Is there anything I can do to help?~ GOTO 6
  IF ~~ THEN REPLY ~A big girl like you afraid of bugs?  Come on, show a little backbone.~ GOTO 10
  IF ~~ THEN REPLY ~Great, a tavern with no booze and bugs to boot.  I can't wait to see the rest of this town.~ GOTO 10
  IF ~~ THEN REPLY ~I'll just come back when you've solved your little problem.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~That's awfully sweet of you, dearie.  But, I don't expect you to go to any trouble on my account.  I'm sure I'll think of something.~
  IF ~~ THEN REPLY ~Have no fear, madam.  I shall see to it that the pests down below trouble you no further.~ DO ~SetGlobal("Grisella_Quest","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY ~I could see to your pest problem... for a price, of course.~ GOTO 8
  IF ~~ THEN REPLY ~Well, best of luck to you.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Wonderful!  The stairs to the cellar are in the back room.  Now you be careful down there, dearie, and don't let any of those little buggers creep back up here, alright?~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~Hmm.  I suppose I could scrape together a couple of coins as payment for such a service.  Let see... how about five gold?  Would that do, dearie?~
  IF ~~ THEN REPLY ~Five is plenty.  Your pests are as good as gone.~ DO ~SetGlobal("Grisella_Quest","GLOBAL",1) SetGlobal("Grisella_Cash","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY ~It'll do, though it's hardly a fair sum for such a service.~ DO ~SetGlobal("Grisella_Quest","GLOBAL",1) SetGlobal("Grisella_Cash","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY ~Five gold!  What will I ever do with such a treasure?  Stop wasting my time.~ GOTO 11
  IF ~~ THEN REPLY ~On second thought, forget it.  I'll drink somewhere else.~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~Sorry, dearie.  I haven't the time to chitchat with you.  I've a tavern to run, you know.  If you are looking to catch up on the local gossip, I suggest you buy a round or mingle with some of the other patrons.~
  IF ~Global("Grisella_Quest","GLOBAL",0)~ THEN REPLY ~Alright, how about a drink?~ GOTO 2
  IF ~Global("Grisella_Quest","GLOBAL",2)~ THEN REPLY ~Alright, how about a drink?~ DO ~StartStore("Ehtav",Player1)~ EXIT
  IF ~~ THEN REPLY ~Very well, I'll leave you to your work.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~Hmph!  Look, stranger... up here in Easthaven, we may be out on the frontier, but we do manage to act civilized toward one another.  If you can't at least try to be polite, then there's the door, dearie.~
  IF ~~ THEN REPLY ~My apologies.  Is there anything I can do to help with your problem?~ GOTO 6
  IF ~~ THEN REPLY ~Right.  I'm off then.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY ~Well now!  Aren't we the greedy one?  The way I see it, five coins is better than no coins.  Take it or leave it, dearie.~
  IF ~~ THEN REPLY ~Alright, alright.  I'll take the job for five gold.~ DO ~SetGlobal("Grisella_Quest","GLOBAL",1) SetGlobal("Grisella_Cash","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY ~Right.  I'm off then.  Farewell.~ EXIT
END

IF ~NumTimesTalkedToGT(0) Global("Grisella_Quest","GLOBAL",1) Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 12
  SAY ~Any luck getting rid of those nasty bugs, dearie?  My customers are getting pretty thirsty.~
  IF ~GlobalLT("SPRITE_IS_DEADEHBEETLE","GLOBAL",4)~ THEN REPLY ~Not just yet.  I'm working on it, though.~ EXIT
  IF ~GlobalLT("SPRITE_IS_DEADEHBEETLE","GLOBAL",4)~ THEN REPLY ~In due time -- and stop calling me dearie!  It's just plain silly!~ EXIT
  IF ~Global("SPRITE_IS_DEADEHBEETLE","GLOBAL",4) Global("Grisella_Cash","GLOBAL",0)~ THEN REPLY ~It is done.  Those bugs won't be troubling you anymore.~ DO ~SetGlobal("Grisella_Quest","GLOBAL",2) AddexperienceParty(500) GivePartyGold(5)~ GOTO 13
  IF ~Global("SPRITE_IS_DEADEHBEETLE","GLOBAL",4) Global("Grisella_Cash","GLOBAL",1)~ THEN REPLY ~It is done.  Those bugs won't be troubling you anymore.~ DO ~SetGlobal("Grisella_Quest","GLOBAL",2) AddexperienceParty(500) GivePartyGold(5)~ GOTO 13
  IF ~Global("SPRITE_IS_DEADEHBEETLE","GLOBAL",4)~ THEN REPLY ~Yes, they're dead.  Now hand over the coins.~ DO ~SetGlobal("Grisella_Quest","GLOBAL",2) AddexperienceParty(500) GivePartyGold(5)~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY ~Thank you, dearie.  You're a lifesaver.  Just do me one more favor... keep this little bug problem between you and me.  I don't want folks thinking Grisella's place isn't clean.  Run along now.~
  IF ~~ THEN EXIT
END

IF ~GlobalGT("Know_Balance","GLOBAL",0) Global("Freed_Everard","GLOBAL",0)~ THEN BEGIN 14
  SAY ~I never thought I'd lay eyes on you again, dearie.  Quick, we've no time to waste.  Go talk to Everard.  He'll know what to do next.~
  IF ~~ THEN REPLY ~I shall speak with him straight away.  Farewell.~ EXIT
END

IF ~GlobalGT("Know_Balance","GLOBAL",0) Global("Freed_Everard","GLOBAL",1)~ THEN BEGIN 15
  SAY ~Keep yourselves safe now, dearies.  We'll never forget what you've done for us here.~
  IF ~~ THEN REPLY ~Thank you.  Farewell.~ EXIT
END