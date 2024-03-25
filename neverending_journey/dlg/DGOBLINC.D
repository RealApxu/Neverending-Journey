BEGIN ~DGOBLINC~ 83278 // non-zero flags may indicate non-pausing dialogue

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~What am I doing here?  Rrrrr...~
  IF ~OR(3) !InParty("Erevain") Dead("Erevain") !See("Erevain")~ THEN REPLY ~Uh, you can speak Common?~  GOTO 1
  IF ~OR(3) !InParty("Erevain") Dead("Erevain") !See("Erevain")~ THEN REPLY ~Well, it looks like you're looting and pillaging this mill.~  JOURNAL ~Kuldahar Pass.

We met a goblin marshal in Kuldahar Pass who was going mad with pain.  He asked us what he was doing there.  We responded by telling him the obvious.  It looked like he and his cousins were looting and pillaging the mill.  He responded angrily, telling us that that they were without food and had been "called" to the pass.~  GOTO 2
  IF ~OR(3) !InParty("Erevain") Dead("Erevain") !See("Erevain")~ THEN REPLY ~What do you mean?~  JOURNAL ~Kuldahar Pass.

We met a goblin marshal in Kuldahar Pass who was going mad with pain.  He asked us what he was doing there.  We asked him what he meant.  He responded bluntly, claiming that he didn't understand why he and his kin were "called" to the pass.~  GOTO 3
  IF ~OR(3) !InParty("Erevain") Dead("Erevain") !See("Erevain")~ THEN REPLY ~Sorry, but I can't talk right now.  Farewell.~  EXIT
  IF ~InParty("Erevain") !Dead("Erevain") See("Erevain")~ THEN EXTERN ~EREVAINJ~ 15
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY ~Of course.  Not all goblins are idiots... just most of us.  Rrrrrraaaaa!  What is the buzzing in my head?~
  IF ~~ THEN REPLY ~What's wrong with you?~  JOURNAL ~Kuldahar Pass.

We met a goblin marshal in Kuldahar Pass who was going mad with pain.  He told us that his head hurt, that something was whispering things to him.  He didn't understand what was wrong with him, but he felt some instinctive urge to "answer" the voice in his head.~  GOTO 4
  IF ~Class(Player1,PALADIN)~ THEN REPLY ~It's your conscience telling you that attacking villages for profit is morally poisonous.~  JOURNAL ~Kuldahar Pass.

We met a goblin marshal in Kuldahar Pass who was going mad with pain.  He asked us about a buzzing in his head.  I told him it was probably his conscience bothering him.  He responded angrily, telling us that he and his kin were "called" to the pass.~  GOTO 5
  IF ~Class(Player1,MAGE)~ THEN REPLY ~Hmmm... buzzing?  That could be mind-affecting magic.~  JOURNAL ~Kuldahar Pass.

We met a goblin marshal in Kuldahar Pass who was going mad with pain.  He asked us about a buzzing in his head.  I told him it sounded like mind-controlling magic.  He went berserk with pain shortly after.~  GOTO 6
  IF ~~ THEN REPLY ~Well, I have to be going.  Good luck with your head problems.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY ~I'm not pillaging the mill.  Some of my men are, but what do you expect?  We have no food, and we don't understand why we were called here.~
  IF ~Class(Player1,CLERIC)~ THEN REPLY ~The gods have callings for us all.  Even goblins... I guess.~  GOTO 7
  IF ~~ THEN REPLY ~"Called here?"  What do you mean?~  GOTO 7
  IF ~~ THEN REPLY ~I have to go now.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY ~I mean, "what am I doing here?"  Rrrrr... I don't understand why we were called here.~
  IF ~Class(Player1,CLERIC)~ THEN REPLY ~The gods have callings for us all.  Even goblins... I guess.~  GOTO 7
  IF ~~ THEN REPLY ~"Called here?"  What do you mean?~  GOTO 7
  IF ~~ THEN REPLY ~I must leave you now.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY ~I... I don't know.  Something's in my head.  It's whispering things to me.  My mind can't understand it, but something inside me... something inside me does.  I have to answer it.  Rrrr...~
  IF ~Alignment(Player1,CHAOTIC_EVIL)~ THEN REPLY ~I hear it as well.  I feel it... but I am not compelled as you seem to be.~  GOTO 8
  IF ~Class(Player1,MAGE)~ THEN REPLY ~It seems to me that you might be under the influence of mind-controlling magic.~  GOTO 6
  IF ~~ THEN REPLY ~That's unfortunate.  I have to be going now.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY ~Bah!  Don't try to make me feel guilty for what we've done.  We didn't ask to be called here.  We need food and supplies.~
  IF ~~ THEN REPLY ~"Called here?"  What do you mean?~  GOTO 7
  IF ~~ THEN REPLY ~Even so, that's no reason to kill innocent people and loot their bodies.  Why can't you trust in the charity and goodwill of this village?~  GOTO 9
  IF ~~ THEN REPLY ~That is no excuse.  For your crimes against the people of this village, I must exact divine retribution.  Farewell.~  EXIT
  IF ~~ THEN REPLY ~I must go now.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 1.2
  SAY ~I don't know what's causing it, but it's driving me mad.  It feels like my head is tearing itself apart.  It wasn't so bad when I could follow the pull, but now I'm trapped in this damned pass.  RrrrrrAAAAAGH!  The pain!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 3.1 3.0 2.1 2.0
  SAY ~It's like a gnawing in my stomach when I'm hungry.  I must have eaten everything in this damned pass, and it won't let me be.  Why can't I make it stop?  RrrrrrrAAAAGH!  Maglubiyet, make it end!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY ~Feel truly blessed, my soul-kin.  If you could feel the torment that I... rrrrrAAAAAGH!  Let go of my mind!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY ~You're one of those stinking holy warriors, aren't you?  Don't lecture me, paladin.  I'll leave soon enough.  Standing near you makes the pain in my head... rrrrrraaagh... it makes it that much worse.~
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 10 // from:
  SAY ~Leave me alone!  Alone!  Rrrrrrragh!  The pain!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY ~What did you say? Rrrraugh!~
  IF ~~ THEN REPLY ~Uh, you can speak Common?~  GOTO 1
  IF ~~ THEN REPLY ~Well, it looks like you're looting and pillaging this mill.~  JOURNAL ~Kuldahar Pass.

We met a goblin marshal in Kuldahar Pass who was going mad with pain.  He asked us what he was doing there.  We responded by telling him the obvious.  It looked like he and his cousins were looting and pillaging the mill.  He responded angrily, telling us that that they were without food and had been "called" to the pass.~  GOTO 2
  IF ~~ THEN REPLY ~What do you mean?~  JOURNAL ~Kuldahar Pass.

We met a goblin marshal in Kuldahar Pass who was going mad with pain.  He asked us what he was doing there.  We asked him what he meant.  He responded bluntly, claiming that he didn't understand why he and his kin were "called" to the pass.~  GOTO 3
  IF ~~ THEN REPLY ~Sorry, but I can't talk right now.  Farewell.~  EXIT
END