BEGIN ~FTOWBE~

IF ~RandomNum(10,1)~ THEN BEGIN 0
  SAY ~You ain't a mage are ya? You got some fancy clothes on ya, so you could be a mage. I don't trust mages, you know. Especially not that Thalantyr fellow west of Beregost. He's mean, he is. Has his minions attack anyone that disturbs him.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,2)~ THEN BEGIN 1
  SAY ~You look the sort that like flashy weapons and trinkets; you should go see Thalantyr west of town. Sure he's grumpy, and he might even have his "pets" attack you, but he usually calls them off if you take the time to talk to him. He's got a lot of magical wares for sale, though he acts like he's doing you a favor taking your gold.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,3)~ THEN BEGIN 2
  SAY ~I cannot talk now; my children are waiting for me at home.  Not good to leave them alone for long, but both the husband and me must look for a way to keep gold coming in.  Hard to keep food on the table when there is no work to be had.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,4)~ THEN BEGIN 3
  SAY ~You're the adventurers who killed all them monsters at Nashkel, aren't you? You must be really brave.  If we had more like you we'd never have to worry about things like this again.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,5)~ THEN BEGIN 4
  SAY ~I'm just a simple little lady, I don't know much at all.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,6)~ THEN BEGIN 5
  SAY ~You'll get nothing from me!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,7)~ THEN BEGIN 6
  SAY ~Pleasant day to you all.  My, my, you all look rather handsome decked out in your adventuring garb.  That's what you are isn't it, adventurers?.~
  IF ~~ THEN REPLY ~Where we go, excitement follows.~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~Why, aren't you the most arrogant people I've come across in a long time.  I guess it don't matter, your type's always been that way.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,8)~ THEN BEGIN 8
  SAY ~Oh, I wish I could be an adventurer like you rather than a simple scullery maid like me. My sister and I would hold off a thousand Amnish soldiers, standing back to back, our arms tiring as twilight falls and mists begin to rise from the moonlit lake...~
  IF ~~ THEN REPLY ~Ah, the choice 'tween scullery and skullduggery, then, is it? Well, a woman's arms are as strong as a man's and your courage seems stronger yet. You are welcome to join us and your sister, too, should she be willing.~ GOTO 9
  IF ~~ THEN REPLY ~I'm afraid it often lacks the romance with which you have imbued it. Kill a single Amnish soldier and all of Amn is after you. Stand back to back and your flanks are unprotected. Those mists that rise from your moonlit lake are pretty to behold but they bring rust with them and the chill of damp steel against your flesh...~ GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY ~A tempting offer but I guess I should wait for more peaceful times. There's plenty of time to dream and think of pretty pictures when scrubbing floors. Laid in a cold and shallow grave, I doubt I'd have the luxury.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~You've got some nerve wrecking a woman's pretty illusions like that. In times of trouble they're all we have. And without them, our children will grow up to be petty bureaucrats and mindless cogs in some Gondish machine, all harsh and bitter, never realizing that a world of wonder is still out there, somewhere just beyond their walled horizon!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,9)~ THEN BEGIN 11
  SAY ~Wow.  You guys are real adventurers.  Ain't too often that country girls like myself get to see a real 'venturer.  It must be pretty excitin' to go to far off places and meet so many different people.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(10,10)~ THEN BEGIN 12
  SAY ~I think my husband might take it the wrong way if he saw the bunch of you talking to me in the street.  He's got a real nasty temper, and he's real jealous too.  Sorry to be so rude, but it's for your own good.~
  IF ~~ THEN EXIT
END


