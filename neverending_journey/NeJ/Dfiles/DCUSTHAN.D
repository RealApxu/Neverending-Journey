BEGIN ~DCUSTHAN~ 8211

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Shhhh!  If you wish to remain, then stay quiet!  You are in a place of knowledge and learning.  I am Custhantos, caretaker of this library.~
  IF ~~ THEN REPLY ~I hope you don't take offense to this, but who in their right mind would come to this forsaken hellhole to check out a book?~ GOTO 1
  IF ~~ THEN REPLY ~I'd like to see what books you have available.~ GOTO 5
  IF ~~ THEN REPLY ~Perhaps I will drop by for some reading later.  Be safe, Custhantos.~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY ~While I know that people all over the realms have varied taste when it comes to beauty and art, you obviously have the tastes of one raised in the dark side of a centaur's ass.  How can you make such a remark after viewing the glory and splendor of the Hand of the Seldarine?  The elves in the lower levels seem pleased to live in this 'hellhole'.~
  IF ~~ THEN REPLY ~Perhaps no one has told you, Custhantos.  The Hand lies in ruins and its people are shattered remnants of their former selves.  Haven't you noticed *something* different about yourself?~ GOTO 2
  IF ~~ THEN REPLY ~Apologies, Custhantos.  I meant no insult.  I only wish to learn of you and the Hand of the Seldarine.~ GOTO 4
  IF ~~ THEN REPLY ~I think it would be best if we spoke later.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~I have several stacks of books that I need to attend to.  Perhaps you should return when your hallucinations have faded away.  Good day!~
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 3
  SAY ~How many times do I have to tell you?!  Keep quiet in here.  This is a place of knowledge.~
  IF ~~ THEN REPLY ~I hope you don't take offense to this, but who in their right mind would come to this forsaken hellhole to check out a book?~ GOTO 1
  IF ~~ THEN REPLY ~Show me what books you have.~ GOTO 5
  IF ~~ THEN REPLY ~Sorry, Custhantos.  I'm just passing through.~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~Then perhaps you should read some of the many compendiums to learn of the glorious history of the Hand.~
  IF ~~ THEN REPLY ~I'd like that.  Show me what you have.~ GOTO 5
  IF ~~ THEN REPLY ~Some other time.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Feel free to look through the library.  Let me know if you find what you are looking for or if something interests you.~
  IF ~Global("WorshipInTheHand","GLOBAL",0)~ THEN REPLY ~I'd like to read "Worship in the Hand."~ DO ~GiveItemCreate("BookWor",Protagonist,0,0,0) SetGlobal("WorshipInTheHand","GLOBAL",1)~ GOTO 6
  IF ~Global("RockEaters","GLOBAL",0)~ THEN REPLY ~I'd like to read " 'Rock Eaters', they are not."~ DO ~GiveItemCreate("BookRoc",Protagonist,0,0,0) SetGlobal("RockEaters","GLOBAL",1)~ GOTO 6
  IF ~Global("Corellon","GLOBAL",0)~ THEN REPLY ~I'd like to read "Ancient Lore of Corellon Larethian."~ DO ~GiveItemCreate("BookCor",Protagonist,0,0,0) SetGlobal("Corellon","GLOBAL",1)~ GOTO 6
  IF ~Global("Shevarash","GLOBAL",0)~ THEN REPLY ~I'd like to read "Ancient Lore of Shevarash."~ DO ~GiveItemCreate("BookShe",Protagonist,0,0,0) SetGlobal("Shevarash","GLOBAL",1)~ GOTO 6
  IF ~Global("Sehanine","GLOBAL",0)~ THEN REPLY ~I'd like to read "Ancient Lore of Sehanine Moonbow."~ DO ~GiveItemCreate("BookMoo",Protagonist,0,0,0) SetGlobal("Sehanine","GLOBAL",1)~ GOTO 6
  IF ~Global("Labelas","GLOBAL",0)~ THEN REPLY ~I'd like to read "Ancient Lore of Labelas Enoreth."~ DO ~GiveItemCreate("BookLab",Protagonist,0,0,0) SetGlobal("Labelas","GLOBAL",1)~ GOTO 6
  IF ~Global("Solonar","GLOBAL",0)~ THEN REPLY ~I'd like to read "Ancient Lore of Solonor Thelandira."~ DO ~GiveItemCreate("BookSol",Protagonist,0,0,0) SetGlobal("Solonar","GLOBAL",1)~ GOTO 6
  IF ~Global("Elameth","GLOBAL",0)~ THEN REPLY ~I'd like to read "Elameth's Compendium."~ DO ~GiveItemCreate("BookCom",Protagonist,0,0,0) SetGlobal("Elameth","GLOBAL",1)~ JOURNAL ~Severed Hand.

Custhantos made an interesting comment about an elven warrior who had visited him recently.  She took a book with magical artifact sketches and a book about unicorns.~ GOTO 8
  IF ~Global("Unicorn","GLOBAL",0)~ THEN REPLY ~I'd like to read "The Ecology of the Unicorn."~ DO ~GiveItemCreate("BookUni",Protagonist,0,0,0) SetGlobal("Unicorn","GLOBAL",1)~ JOURNAL ~Severed Hand.

Custhantos made an interesting comment about an elven warrior who had visited him recently.  She took a book with magical artifact sketches and a book about unicorns.~ GOTO 9
  IF ~Global("Training","GLOBAL",0)~ THEN REPLY ~I'd like to read "Code of Training in the Seldarine's Hand."~ DO ~GiveItemCreate("Bookcod",Protagonist,0,0,0) SetGlobal("Training","GLOBAL",1)~ GOTO 6
  IF ~Global("Bladesingers","GLOBAL",0)~ THEN REPLY ~I'd like to read "Lore of the Bladesingers."~ DO ~GiveItemCreate("BookBla",Protagonist,0,0,0) SetGlobal("Bladesingers","GLOBAL",1)~ GOTO 6
  IF ~Global("Mythal","GLOBAL",0)~ THEN REPLY ~I'd like to read "Mythal Theory."~ DO ~GiveItemCreate("BookMyt",Protagonist,0,0,0) SetGlobal("Mythal","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY ~Nothing sounds interesting right now.  I'll come back later.~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~May you learn everything it has to offer.  Was there another book you wanted to examine?~
  IF ~~ THEN REPLY ~Yes.~ GOTO 5
  IF ~~ THEN REPLY ~Not right now.  Thank you.~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Very well.  May you learn everything they have to offer.~
  IF ~~ THEN REPLY ~Thank you.~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~Oddly enough, a visiting elven warrior who sought this book recently accosted me.  She took one of my remaining copies of this book as well as the book on the ecology of the unicorn.  Her rude and loud demeanor did not surprise me, as she did not bear the emblem of the Seldarine's Hand.  Anyways, here is the last copy.  Was there another book you wanted to examine?~
  IF ~~ THEN REPLY ~Yes.~ GOTO 5
  IF ~~ THEN REPLY ~Not right now.  Thank you.~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~You're in luck, as this is a very popular book of late.  Not long ago, a visiting elven warrior came and took one of my remaining copies of it as well as a copy of Elameth's Compendium.  Her rude and loud demeanor did not surprise me, as she did not bear the emblem of the Seldarine's Hand.  Anyways, here is the last copy.  Was there another book you wanted to examine?~
  IF ~~ THEN REPLY ~Yes.~ GOTO 5
  IF ~~ THEN REPLY ~Not right now.  Thank you.~ EXIT
END