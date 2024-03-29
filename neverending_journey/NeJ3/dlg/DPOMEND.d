BEGIN ~DPOMEND~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~So, we meet again.  Welcome to Cryshal-Tirith.  I trust your visitation is not a social call.~
  IF ~~ THEN REPLY ~Pomab?  What in the nine hells are you doing here?~ GOTO 1
  IF ~~ THEN REPLY ~Out of the way, shopkeeper.  We have unfinished business with Poquelin.  Where is he?~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY ~Interesting choice of words.  Much has changed since you last visited Easthaven.  Now, as you can see, *I* run this town.~
  IF ~Global("Know_Pomab","GLOBAL",1)~ THEN REPLY ~Well, at least you haven't changed.  I see you still indulge yourself with delusions of grandeur.~ GOTO 2
  IF ~~ THEN REPLY ~You little worm.  You are in league with Poquelin, aren't you?~ GOTO 3
  IF ~~ THEN REPLY ~Do you really expect us to believe you're in charge here?  You couldn't even run a decent shop, let alone an entire town.~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~You insolent dog!  How dare you speak to me in such a manner!  I am Pomab Ak'azmhir, master of this tower and appointed ruler of Easthaven!~
  IF ~~ THEN REPLY ~Appointed by whom?  Poquelin?~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Poquelin?  You still have no idea of what you are up against, do you?  The master has many names... and many forms.  His power is beyond imagination.  You cannot hope to defeat him.  Why not just surrender yourselves to me?  At least I would be merciful and grant you a quick death.~
  IF ~~ THEN REPLY ~Have you gone mad?  Take a look out that window... see for yourself the destruction you and your master have wrought.~ GOTO 5
  IF ~~ THEN REPLY ~Listen to yourself.  You're no monarch.  Poquelin is using you.  Do you really think he'd put a fool like you in charge?~ GOTO 4
  IF ~~ THEN REPLY ~We're not interested in your *mercy.*  Your master is as good as dead... and so are you if you insist on getting in our way.~ GOTO 11
END

IF ~~ THEN BEGIN 4
  SAY ~It is the master's will that I should rule over this town.  It was he who gave me this tower, this magnificent palace, as a reward for my service to him.~
  IF ~~ THEN REPLY ~And what service could a lowly shopkeeper offer a fiend such as Poquelin?~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~The occupation of Easthaven was inevitable.  The master had intended to take the town from the very beginning.  I was simply charged with removing certain obstacles so that his plans would go more smoothly.~
  IF ~~ THEN REPLY ~What are you talking about?~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~It was I who first proposed to send an expedition to Kuldahar.  I knew that braggart Hrothgar would jump at the chance to go dashing off to the rescue, and that he would no doubt drag along every other sword-waving idiot in town.~
  IF ~~ THEN REPLY ~The expedition was a diversion?~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~I cannot tell you how pleased I was to see my little ploy succeed.  I nearly laughed myself to tears as your expedition charged off into the mountains, leaving Easthaven defenseless and ripe for the taking.~
  IF ~~ THEN REPLY ~You snake.  You've betrayed us all... and for what?  To be ruler of a ruined town full of people who hate your guts? ~ GOTO 8
  IF ~~ THEN REPLY ~I see... you knew about the ambush in the pass.  You knowingly sent us off to our deaths!~ GOTO 9
  IF ~~ THEN REPLY ~I'm glad you found it amusing.  Lets see if you can still laugh it up with your head lying on the floor next to your lifeless body.~ GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY ~Hate me?  They should be grateful to me for their lives!  If I had not entered into this bargain, Hrothgar and those other fools would have resisted.  Every man, woman, and child in town would have been butchered in the streets.~
  IF ~Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY ~You are no hero, Pomab.  You're nothing but a weak-willed man who has foolishly taken the side of evil, but it's not too late for you.  Help us now, and you may yet live to find redemption.~ GOTO 12
  IF ~~ THEN REPLY ~Save your twisted justifications.  You are coward and a traitor.  You don't deserve to live.~ GOTO 11
END

IF ~~ THEN BEGIN 9
  SAY ~Yes, though it appears that some of you managed to survive.  In fact, you managed to go on to become quite a thorn in the master's side.  Well, I am sorry to inform you that your little crusade ends here.  I cannot have you interrupting the master while he is on the verge of completing his grand design.~
  IF ~~ THEN REPLY ~And what exactly is his grand design?~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY ~Ha!  Do you really think I would tell you everything?  What kind of imbecile do you take me for?~
  IF ~~ THEN REPLY ~The dead kind.~ GOTO 11
  IF ~~ THEN REPLY ~I take you for what you are... a spineless traitor who is about to pay the price for his treachery.~ GOTO 11
  IF ~Alignment(Protagonist, 1)~ THEN REPLY ~You are a weak-willed man who has foolishly taken the side of evil, but it's not too late for you.  Tell us what we want to know, and you may yet live to find redemption.~ GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY ~We shall see who does the dying this day.  Sentries!  Slay them!~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("eePomabS")~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY ~Redemption?  I have no desire for redemption.  I now possess all that I have dreamed of.  Guilt is but a small price to pay for such power.  I'll not stand here and be judged by you!  You are nothing!  You are but an insect that I shall squash beneath my boot!  Sentries!  Slay them!~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("eePomabS")~ EXIT
END
