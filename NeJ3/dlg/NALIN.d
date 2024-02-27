BEGIN ~NALIN~

IF ~True()
~ THEN BEGIN 0
  SAY ~Ahh, intrepid adventurers at our door.  Helm guards over all the Realms and his servants are at your disposal. The Vigilant One stands ready to mend thy ailments, and so divert the unyielding gaze of the Great Guide... for a suitable donation, of course.  Just to demonstrate our mutual good will, you understand.~
  IF ~Global("MetBrage","GLOBAL",0)
~ THEN GOTO 1
  IF ~PartyHasItem("MISC65")
~ THEN GOTO 2
  IF ~Global("MetBrage","GLOBAL",1)
!PartyHasItem("MISC65")
~ THEN DO ~StartStore("Tem4802",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY ~Helm watch over you and our poor lost brother, Brage.  A finer Captain of the Guard could nary be found this side of Amn.  Such a strange change for one so devout as he.  One does not usually change so drastically without nefarious help.  If there be an evil influence on him, perhaps the harsh justice of the military should be stayed.  He'll find no quarter at the garrison, but if he came to the temple.....well.....his restitution need not be his life.  Is there anything I can help you with?~
  IF ~~ THEN REPLY ~Yes, what kind of services do you provide?~ DO ~StartStore("Tem4802",LastTalkedToBy())~ JOURNAL ~Nalin at the Temple of Helm in Nashkel seems to think that Brage might be under the influence of some evil force.  If I return him to them, he might not be killed for his crimes.~ EXIT
  IF ~~ THEN REPLY ~Nothing at the moment.~ DO ~~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Poor Brage.  It's a pity he could not have been recovered alive.  He might yet have come to terms with his actions, and repaid the debt he incurred.  Now all we can do is say the proper prayers, and make sure the way to the next world is well guided.  May Helm have pity on his tortured soul.  Thank you for bringing his body him here.  No doubt Oublek would have made much of his death, and further despoiled his name.  I shall match the bounty you would have received, that you have not risked so much for nothing.  The Temple is in your debt.~
  IF ~~ THEN DO ~TakePartyItem("MISC65")~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~Calm yourself Brage.  Helm sees all that he wishes, and knows much of what you do not.  It was your hands indeed that did many a foul deed, but it was not your will alone.  Intent is vital, and yours was influenced without your knowledge.  Justice will be done, but with atonement, not punishment. ~
  IF ~~ THEN EXTERN ~BRAGE~ 7
END

IF ~~ THEN BEGIN 4
  SAY ~If you are returned to the garrison, yours will be the only willful killing that has occurred about this matter.  It would be a waste of your life which, fractured though it is, can still contribute much.  Helm will see you through.  As for our intrepid friends here, I shall exceed the reward offered by Oublek.  After all, it was the same task of bringing Brage to justice.  The Temple is in your debt for the return of it's lost son. ~
  IF ~~ THEN DO ~SetGlobal("OublekBounty1","GLOBAL",1)
GivePartyGold(1000)
~ JOURNAL ~I have returned Brage to Nashkel, but to the temple of Helm instead of the garrison.  Hopefully he can atone for his deeds, and receive the help that he needs.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Come to pay your respects to great Helm?  If there is anything you need to assist in your journeys, you need but ask.~
  IF ~~ THEN REPLY ~What do you have?~ DO ~StartStore("Tem4802",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY ~Nothing for me today.~ DO ~~ EXIT
END