BEGIN ~DDAMIEN~

IF ~NumberOfTimesTalkedTo(0)
Global("Damien_Quest","GLOBAL",0)
Global("Know_Balance", "GLOBAL", 0)~ THEN BEGIN 0
  SAY ~Quick, we've got to go get Hrothgar!  There are monsters in town!  They almost ate me!~
  IF ~~ THEN REPLY ~Whoa, slow down there.  What are you talking about?~ GOTO 1
  IF ~~ THEN REPLY ~Out of the way, boy.  We've business to attend to.~ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY ~Monsters!  A whole bunch of them.  They came down to the shore while I was fishing.  I dropped everything and ran when I saw them, but they didn't chase me.  I thought they were going to eat me, but I guess they were just after my fish.~
  IF ~~ THEN REPLY ~Where are these monsters now?~ GOTO 2
  IF ~~ THEN REPLY ~You best be telling the truth.  You know what happens to little boys who cry orc.~ GOTO 3
  IF ~~ THEN REPLY ~Go bother someone else with your tall tales.  We've no time for such nonsense.~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~Just over the bridge... down by the lake.  My da told me not to fish so far out by myself, but I can't help it.  That's where I catch the big ones.  He's gonna kill me when he finds out I've lost today's catch.  All because of those stupid monsters!~
  IF ~PartyHasItem("FISH")~ THEN REPLY ~Don't worry... we'll deal with these thieving monsters.  In the mean time, take this knucklehead.  It'll keep you out of trouble with your da.~ DO ~TakePartyItem("FISH")~ UNSOLVED_JOURNAL ~Damien's fish.

We ran into a boy named Damien near the bridge leading out of Easthaven.  He told us that a group of monsters had invaded his fishing hole and were eating the fish he had caught.~ GOTO 5
  IF ~!PartyHasItem("FISH")
~ THEN REPLY ~Don't worry... we'll deal with these thieving monsters and get you your fish back.~ UNSOLVED_JOURNAL ~Damien's fish.

We ran into a boy named Damien near the bridge leading out of Easthaven.  He told us that a group of monsters had invaded his fishing hole and were eating the fish he had caught.~ EXIT
  IF ~~ THEN REPLY ~All right, we'll go check it out.  But if we find out you're lying to us, we'll send you to the bottom of the lake.~ UNSOLVED_JOURNAL ~Damien's fish.

We ran into a boy named Damien near the bridge leading out of Easthaven.  He told us that a group of monsters had invaded his fishing hole and were eating the fish he had caught.~ EXIT
  IF ~~ THEN REPLY ~Tough luck, kid.  Maybe next time you'll listen to your old man.  Farewell.~ UNSOLVED_JOURNAL ~Damien's fish.

We ran into a boy named Damien near the bridge leading out of Easthaven.  He told us that a group of monsters had invaded his fishing hole and were eating the fish he had caught.~ GOTO 9
END

IF ~~ THEN BEGIN 3
  SAY ~It's the truth.  I swear!  They're ugly and mean with pointy teeth and green skin.  Go see for yourself!~
  IF ~~ THEN REPLY ~Very well.  Where are these monsters of yours?~ GOTO 2
  IF ~~ THEN REPLY ~I think you've heard one too many bedtime stories.  Run along now.~ GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY ~Okay, but don't say I didn't warn you.  Those monsters looked hungry.  They'll probably eat you up just like they did my fish.~
  IF ~~ THEN REPLY ~Monsters ate your fish?  What in the nine hells are you talking about?~ GOTO 1
  IF ~~ THEN REPLY ~We'll take our chances.  Farewell.~ GOTO 9
END

IF ~~ THEN BEGIN 5
  SAY ~Thanks.  I'd best be getting home now.  My da's probably worrying about me.~
  IF ~~ THEN REPLY ~Farewell.~ DO ~SetGlobal("Damien_Quest","GLOBAL",2)
AddexperienceParty(500)
EraseJournalEntry(%Damien's fish.

We ran into a boy named Damien near the bridge leading out of Easthaven.  He told us that a group of monsters had invaded his fishing hole and were eating the fish he had caught.%)
EscapeArea()~ SOLVED_JOURNAL ~Damien's fish.

We were able to help Damien out, and we gave him some fish to take to his father so he wouldn't get in trouble.~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("Damien_Quest","GLOBAL",0)
Global("Know_Balance", "GLOBAL", 0)~ THEN BEGIN 6
  SAY ~You're back.  Were you able to get my fish back from those monsters?~
  IF ~PartyHasItem("FISH")
~ THEN REPLY ~Today is your lucky day, boy.  Here is your fish... at least what is left of it.~ DO ~TakePartyItem("FISH")
~ GOTO 5
  IF ~PartyHasItem("FISH")
~ THEN REPLY ~As a matter of fact, we did.  But before we hand it over... how about a little something for our efforts?~ GOTO 7
  IF ~!PartyHasItem("FISH")
~ THEN REPLY ~Sorry, boy.  No luck yet.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~But I don't have anything.  I'm very poor... that fish was all I had.  I was going to sell it to Pomab.  Knucklehead bones are worth a lot.  They use them for scrimshaw and stuff.~
  IF ~~ THEN REPLY ~In that case, we'll keep the fish and sell it ourselves.~ GOTO 8
  IF ~~ THEN REPLY ~Please, you're breaking my heart.  Here, take your precious fishbone.~ DO ~TakePartyItem("FISH")
~ GOTO 5
END

IF ~~ THEN BEGIN 8
  SAY ~Hey!  That's my fish!  You're no better than the monsters.  I'm telling my da.~
  IF ~~ THEN REPLY ~Oh, all right.  Take the fish.  The damn thing stinks anyway.~ DO ~TakePartyItem("FISH")
~ GOTO 5
  IF ~~ THEN REPLY ~You do that.  Farewell.~ DO ~SetGlobal("Damien_Quest","GLOBAL",1)
ReputationInc(-1)
EraseJournalEntry(%Damien's fish.

We ran into a boy named Damien near the bridge leading out of Easthaven.  He told us that a group of monsters had invaded his fishing hole and were eating the fish he had caught.%)

EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~Well, if you do run into those monsters, try and get my fish back for me.  I'll be in big trouble with my da if I go home without any fish today.~
  IF ~~ THEN REPLY ~Whatever.  Farewell.~ EXIT
END

IF ~Global("Damien_Quest","GLOBAL",1)
Global("Know_Balance", "GLOBAL", 0)~ THEN BEGIN 10
  SAY ~Go away.  I don't want to talk to you.  You're mean.~
  IF ~~ THEN REPLY ~Have it your way, you little brat.  Farewell.~ EXIT
END

IF ~Global("Damien_Quest","GLOBAL",2)
Global("Know_Balance", "GLOBAL", 0)~ THEN BEGIN 11
  SAY ~Thank you again for getting my fish back.  I told my da all about you.~
  IF ~~ THEN REPLY ~That's nice.  Farewell, Damien.~ EXIT
END

IF ~!Global("Damien_Quest","GLOBAL",1)
GlobalGT("Know_Balance","GLOBAL",0)~ THEN BEGIN 12
  SAY ~I'm scared.  Please don't let the big monsters eat me.~
  IF ~~ THEN REPLY ~Don't worry.  You're going to be all right now.  I promise.~ EXIT
  IF ~~ THEN REPLY ~You know, I'm beginning to think you're obsessed with the idea of monsters eating you.~ GOTO 13
  IF ~~ THEN REPLY ~We'll try.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~Huh?~
  IF ~~ THEN REPLY ~Never mind.  Farewell.~ EXIT
END
