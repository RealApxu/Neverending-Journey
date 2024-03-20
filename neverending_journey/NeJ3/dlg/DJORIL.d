BEGIN ~DJORIL~

IF WEIGHT #1 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~What do we have here?  Another slave for the pens, perhaps?  Speak up.  What do you want?!~
  IF ~~ THEN REPLY ~I seek the one in charge.~ GOTO 2
  IF ~~ THEN REPLY ~Nothing at this time, farewell.~ EXIT
END

IF WEIGHT #2 ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY ~You again.  What do you want?~
  IF ~~ THEN REPLY ~I seek the one in charge.~ GOTO 2
  IF ~~ THEN REPLY ~Nothing at this time, farewell.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Well, you’ve found him.  I’m Joril Frostbeard, and I rule here.  What do you want of me?~
  IF ~~ THEN REPLY ~What gives you the right to rule this glacier, Joril?  Certainly the slaves would contest your rule. ~ GOTO 19
  IF ~~ THEN REPLY ~I see no symbol of office... no title, Joril.  By what right do you rule? ~ GOTO 19
  IF ~~ THEN REPLY ~Nothing at this time, farewell.~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~Watch your tongue, fool!  Kreg is dead, and now I am the chosen lieutenant.  Who dares to say otherwise?~
  IF ~~ THEN REPLY ~It is my understanding that the *master* chooses his lieutenants.  Did he choose you, Joril?~ JOURNAL ~Wyrm’s Tooth.

We talked to Joril Frostbeard and demanded his badge of office. He refused at first, but then we decided to lead him to believe that we were collecting it for his *master*.~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~I...  Well...  Kreg was weak and a fool.  He didn’t deserve to be Jarl.  How else could I have slain him so easily?~
  IF ~CheckStatGT(protagonist,11,CHR)~ THEN REPLY ~I am not here to argue the point with you.  I have come to collect the badge.~ GOTO 5
  IF ~~ THEN REPLY ~Listen, jackass. I am not here to argue with you. Just give me the damn badge.~ GOTO 20
  IF ~~ THEN REPLY ~This is pointless. Farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Bah!  And what if I refuse to hand it over, *little* one?  Do you think you can defeat me and my warriors combined? ~
  IF ~~ THEN REPLY ~Joril, think about it.  If you do not give me the badge, who do you think will be sent to collect it next?~ DO ~AddexperienceParty(7500)
GiveItem("Joril", Player1)
SetGlobal("Got_Joril_Badge", "GLOBAL", 1)
EraseJournalEntry(%Wyrm’s Tooth.

We talked to Joril Frostbeard and demanded his badge of office. He refused at first, but then we decided to lead him to believe that we were collecting it for his *master*.%)
EraseJournalEntry(%Wyrm’s Tooth.

We asked Joril how he managed to slay his father Kreg. Apparently he made a pact with some creatures he calls *wyrms* and had them perform the deed. He pays them for their aid with sacrifices from the slave pens on a daily basis.%)
EraseJournalEntry(%Wyrm’s Tooth.

We talked to Joril Frostbeard and demanded his badge of office. He was refused at first, demanding to know who sent us to collect it. We were vague with our answer and lead him to believe that we were collecting it for some *higher authority*.%)~
SOLVED_JOURNAL ~Wyrm’s Tooth.

We decided to continue to reason with Joril to try and get his badge of office. The plan worked, and it is now in our possession.~ GOTO 6
  IF ~~ THEN REPLY ~Very well, if it is a fight want, a fight you shall have.~ DO ~EraseJournalEntry(%Wyrm’s Tooth.

We talked to Joril Frostbeard and demanded his badge of office. He refused at first, but then we decided to lead him to believe that we were collecting it for his *master*.%)
EraseJournalEntry(%Wyrm’s Tooth.

We asked Joril how he managed to slay his father Kreg. Apparently he made a pact with some creatures he calls *wyrms* and had them perform the deed. He pays them for their aid with sacrifices from the slave pens on a daily basis.%)
EraseJournalEntry(%Wyrm’s Tooth.

We talked to Joril Frostbeard and demanded his badge of office. He was refused at first, demanding to know who sent us to collect it. We were vague with our answer and lead him to believe that we were collecting it for some *higher authority*.%)
AddexperienceParty(7500)~ SOLVED_JOURNAL ~Wyrm’s Tooth.

Although we probably could have continued to reason with Joril to try and get his badge of office, we decided to fight him for it instead.~ GOTO 16
END

IF ~~ THEN BEGIN 6
  SAY ~Urrrh!  To the nine hells with you!  Here, take the damn badge... but when you return to your master tell him of my feat.  He will see that Kreg was too weak to carry out his plans!~
  IF ~Global("Fool_Joril","GLOBAL", 1)~ THEN REPLY ~So tell me, Joril.  How did you manage to kill your father?~ GOTO 7
  IF ~!Global("Fool_Joril","GLOBAL", 1)~ THEN REPLY ~What is this feat you speak of?~ GOTO 15
  IF ~~ THEN REPLY ~Farewell for now, Joril.~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Humph...  I challenged the old fool to prove his worth as Jarl.  I told him a true leader would be able to subdue the wyrms in the cavern.  He couldn’t refuse me, or he’d lose the respect of the tribe...~
  IF ~~ THEN REPLY ~Go on.~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~He didn’t know that I’d made a pact with the wyrms.  I told them I’d give them sacrifices if they’d pretend to be beaten and jump the old fool when he turned his back.  They agreed.~
  IF ~Alignment(Protagonist,3)~ THEN REPLY ~You didn’t even have the stones to kill him yourself?~ GOTO 9
  IF ~~ THEN REPLY ~Tell me about these sacrifices, Joril.~ DO ~SetGlobal("Know_Sacrifices","GLOBAL", 1)~ JOURNAL ~Wyrm’s Tooth.

We asked Joril how he managed to slay his father Kreg. Apparently he made a pact with some creatures he calls *wyrms* and had them perform the deed. He pays them for their aid with sacrifices from the slave pens on a daily basis.~ GOTO 10
  IF ~~ THEN REPLY ~What wyrms, Joril?~ GOTO 17
  IF ~~ THEN REPLY ~Farewell for now, Joril.~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~Arrrrgh!  You dare to call me a coward?  Watch your tongue before I offer you up on the altar...~
  IF ~~ THEN REPLY ~You mentioned sacrifices.  Tell me about them, Joril.~ DO ~SetGlobal("Know_Sacrifices","GLOBAL", 1)~ JOURNAL ~Wyrm’s Tooth.

We asked Joril how he managed to slay his father Kreg. Apparently he made a pact with some creatures he calls *wyrms* and had them perform the deed. He pays them for their aid with sacrifices from the slave pens on a daily basis.~ GOTO 10
  IF ~~ THEN REPLY ~What are these wyrms you mentioned?~ GOTO 17
  IF ~~ THEN REPLY ~Farewell for now, Joril.~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~Slaves.  I give the wyrms a slave a day.  There’s plenty available, and I can always get more.~
  IF ~Class(Player1, Paladin)~ THEN REPLY ~The slaves are to be freed, Joril.~ DO ~EraseJournalEntry(%Wyrm’s Tooth.

We talked to Joril Frostbeard and demanded his badge of office. He refused at first, but then we decided to lead him to believe that we were collecting it for his *master*.%)
EraseJournalEntry(%Wyrm’s Tooth.

We asked Joril how he managed to slay his father Kreg. Apparently he made a pact with some creatures he calls *wyrms* and had them perform the deed. He pays them for their aid with sacrifices from the slave pens on a daily basis.%)
EraseJournalEntry(%Wyrm’s Tooth.

We talked to Joril Frostbeard and demanded his badge of office. He was refused at first, demanding to know who sent us to collect it. We were vague with our answer and lead him to believe that we were collecting it for some *higher authority*.%)
AddexperienceParty(7500)~ SOLVED_JOURNAL ~Wyrm’s Tooth.

Wonderful. Our paladin demanded that Joril Frostbeard free the slaves he held in captivity. Naturally Joril became suspicious of our true identities and attacked us. Oh, well.~ GOTO 11
  IF ~~ THEN REPLY ~I want to be allowed to look around.~ GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY ~Free the slaves?  Never...  Who are you really?  If you were who you pretend to be you would never make such a demand.  Die, fool!~
  IF ~~ THEN REPLY ~So be it!~ DO ~EraseJournalEntry(%Wyrm’s Tooth.

We talked to Joril Frostbeard and demanded his badge of office. He refused at first, but then we decided to lead him to believe that we were collecting it for his *master*.%)
EraseJournalEntry(%Wyrm’s Tooth.

We asked Joril how he managed to slay his father Kreg. Apparently he made a pact with some creatures he calls *wyrms* and had them perform the deed. He pays them for their aid with sacrifices from the slave pens on a daily basis.%)
EraseJournalEntry(%Wyrm’s Tooth.

We talked to Joril Frostbeard and demanded his badge of office. He was refused at first, demanding to know who sent us to collect it. We were vague with our answer and lead him to believe that we were collecting it for some *higher authority*.%)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY ~So look.  Who’s stopping you?~
  IF ~~ THEN REPLY ~Farewell for now, Joril.~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~Oh, really?  And just who do you think you are that you can walk in here and...  Wait...  Who sent you here?~
  IF ~~ THEN REPLY ~Who do you think sent me, Joril?~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~Yes...  who indeed.  So...  He sends a *minion* to collect the badge...  I’m not worthy of his personal attention.  Is that it?!~
  IF ~~ THEN REPLY ~I am not here to discuss your personal worth.  I am here for the badge.~ JOURNAL ~Wyrm’s Tooth.

We talked to Joril Frostbeard and demanded his badge of office. He was refused at first, demanding to know who sent us to collect it. We were vague with our answer and lead him to believe that we were collecting it for some *higher authority*.~ GOTO 5
END

IF ~~ THEN BEGIN 15
  SAY ~The slaying of Kreg, my father!  He was weak and a fool.  He didn’t deserve to be Jarl.  How else could I have slain him so easily?~
  IF ~~ THEN REPLY ~So tell me, Joril.  How did you manage to kill your father?~ GOTO 7
END

IF ~~ THEN BEGIN 16
  SAY ~Ha!  I will crush the life out of you with my bare hands.  Die, fool!~
  IF ~~ THEN REPLY ~So be it!~ DO ~EraseJournalEntry(%Wyrm’s Tooth.

We talked to Joril Frostbeard and demanded his badge of office. He refused at first, but then we decided to lead him to believe that we were collecting it for his *master*.%)
EraseJournalEntry(%Wyrm’s Tooth.

We asked Joril how he managed to slay his father Kreg. Apparently he made a pact with some creatures he calls *wyrms* and had them perform the deed. He pays them for their aid with sacrifices from the slave pens on a daily basis.%)
EraseJournalEntry(%Wyrm’s Tooth.

We talked to Joril Frostbeard and demanded his badge of office. He was refused at first, demanding to know who sent us to collect it. We were vague with our answer and lead him to believe that we were collecting it for some *higher authority*.%)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY ~Go see for yourself.  Leave here and take the path to the left. ~
  IF ~~ THEN REPLY ~You said something about sacrifices.  Tell me about them.~ GOTO 10
END

IF WEIGHT #0 ~Global("Got_Joril_Badge", "GLOBAL", 1)~ THEN BEGIN 18
  SAY ~You again?  You have what you came for.  Get out of my sight!~
  IF ~~ THEN REPLY ~Yes, I have the badge.  Now I have come for your life.  Prepare to die!~ DO ~EraseJournalEntry(%Wyrm’s Tooth.

We talked to Joril Frostbeard and demanded his badge of office. He refused at first, but then we decided to lead him to believe that we were collecting it for his *master*.%)
EraseJournalEntry(%Wyrm’s Tooth.

We asked Joril how he managed to slay his father Kreg. Apparently he made a pact with some creatures he calls *wyrms* and had them perform the deed. He pays them for their aid with sacrifices from the slave pens on a daily basis.%)
EraseJournalEntry(%Wyrm’s Tooth.

We talked to Joril Frostbeard and demanded his badge of office. He was refused at first, demanding to know who sent us to collect it. We were vague with our answer and lead him to believe that we were collecting it for some *higher authority*.%)
Enemy()~ EXIT
  IF ~~ THEN REPLY ~Very well, farewell.~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY ~This badge gives me the right, *small* one.  It is a symbol given to all lieutenants in service to the master.  Where once my father held it, now *I* hold it.~
  IF ~Global("Fool_Joril","GLOBAL", 1)~ THEN REPLY ~It is my understanding that Kreg Frostbeard still rules.~ GOTO 3
  IF ~Global("Fool_Joril","GLOBAL", 1)~ THEN REPLY ~Yes, killing your father gained you the throne.~ GOTO 3
  IF ~~ THEN REPLY ~If that badge proves you rule, then I’ve come to take it from you. ~ GOTO 13
  IF ~~ THEN REPLY ~Very well, then, that is all I wished to know.  Farewell, Joril.~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY ~Jackass?!  How dare you!  Who the hell do you think you are talking to?~
  IF ~~ THEN REPLY ~Talking?  I think I am listening to the braying of a donkey.~ GOTO 16
  IF ~~ THEN REPLY ~This is pointless. Farewell for now.~ EXIT
END
