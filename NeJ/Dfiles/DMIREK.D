BEGIN ~DMIREK~

IF ~NumberOfTimesTalkedTo(0)
Global("Mirek_Yeti","LOCALS",0)
Global("Mirek_Quest","GLOBAL",0)~ THEN BEGIN 0
  SAY ~Run!  The Vale�s... filled with yetis!  Tried to outrun them, but... two of them... still chasing me!  Run!  Get help!~
  IF ~~ THEN DO ~SetGlobal("Mirek_Quest","GLOBAL",1)
CreateCreature("Yetitund",[3533.1649],4)
CreateCreature("Yetitund",[3530.1704],4)
MoveToPoint([2700.1600])
~ EXIT
END

IF ~GlobalGT("SPRITE_IS_DEADYETITUND","GLOBAL",1)
GlobalLT("Mirek_Quest","GLOBAL",3)~ THEN BEGIN 1
  SAY ~Thanks - I thought the time to join my ancestors had finally come.  Last time I ever step foot anywhere near the Vale, that�s for certain; there�s all sorts of strange creatures roaming around there now.~
  IF ~~ THEN REPLY ~Vale?~ DO ~SetGlobal("Mirek_Quest","GLOBAL",3)
SetGlobal("Mirek_Yeti","LOCALS",1)~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~The Vale of Shadows.  My brother Silas and I made a pilgrimage there to pay our respects to our family crypt, like we do every year, but this time... I don�t know; the Vale seems... different... *cursed,* somehow.  The shadows have come alive, and there�s yetis roaming the paths, attacking travelers.  ~
  IF ~~ THEN REPLY ~Your brother?  Where is he?~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Silas didn�t make it.  The largest yeti I�ve ever seen tore out of the snow and took a piece out of him with its claws.  He fell, dead as a stone, blood everywhere.  There... there was nothing I could do.  He was carrying our family heirloom... but it�s lost to us now.~
  IF ~!PartyHasItem("MirekQI")
~ THEN REPLY ~Not if I butcher that large yeti that killed your brother.  But that wouldn�t be an easy... or cheap... task.~ GOTO 4
  IF ~!PartyHasItem("MirekQI")
~ THEN REPLY ~Hmm.  I can try and recover that heirloom for you.  Can you tell me how to get to the Vale? ~ GOTO 5
  IF ~PartyHasItem("MirekQI")
~ THEN REPLY ~I already came across the heirloom - it was in the belly of one of the largest of the yetis.  I don�t think Silas made it.~ DO ~TakePartyItem("MirekQI")
~ GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY ~If you would be willing to go into the Vale and find the heirloom, I�d pay you for your trouble.~
  IF ~~ THEN REPLY ~I�ll do it, then.  Tell me how to get to the Vale of Shadows.~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~We were taking the main path, but considering how many beasts were in the Vale, Arundel may know a safer path you can take.  He wanders the mountains quite a bit and knows of more hidden trails than there are branches on the great oak.  His home is southwest of the great tree; it�s the two-story house made out of stone.~
  IF ~GlobalGT("Vale_Quest","GLOBAL",0)~ THEN REPLY ~I already spoke to Arundel.  I�ll be on my way to the Vale soon.~ GOTO 6
  IF ~Global("Vale_Quest","GLOBAL",0)~ THEN REPLY ~Arundel?  I�ll see him before I go, then.~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~Thank you.  Now that Silas is gone, that heirloom is all I have left to remember my family by.  I would appreciate its safe return.  Also, if you come across any more yetis, you might want to collect their pelts once you�ve done away with the beasts.  Conlan, the blacksmith here in town, buys the pelts for a fair price.~
  IF ~~ THEN REPLY ~Farewell.~ DO ~SetGlobal("Mirek_Quest","GLOBAL",4)
SetGlobal("Know_Conlan","GLOBAL",1)~ UNSOLVED_JOURNAL ~Mirek�s family heirloom.

We saved a Kuldahar townsperson, Mirek, from two yetis that had chased him all the way from the Vale of Shadows.  Mirek warned us the Vale was filled with restless spirits and yetis and asked us if we could retrieve a family heirloom his brother Silas was carrying when they were attacked by the yetis.  As he departed, Mirek also mentioned the local blacksmith, Conlan, pays good coin for the pelts of slain yetis.~ EXIT
END

IF ~Global("Mirek_Quest","GLOBAL",4)~ THEN BEGIN 7
  SAY ~Have you found the heirloom yet?~
  IF ~!PartyHasItem("MirekQI")~ THEN REPLY ~No, we�re still looking.~ GOTO 8
  IF ~PartyHasItem("MirekQI")~ THEN REPLY ~Here it is - it was in the belly of one of the largest of the yetis.  I don�t think Silas made it.~ DO ~TakePartyItem("MirekQI")~ GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY ~Well, if you find it, I�ll be here.~
  IF ~~ THEN REPLY ~Farewell.~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~Poor Silas - at least I�ll be able to pass this down to my sons now.  But... please take this.  It�s the least I can give you for your trouble.~
  IF ~~ THEN REPLY ~You�re welcome.  Farewell.~ DO ~AddexperienceParty(21120)
SetGlobal("Mirek_Quest","GLOBAL",5)
GiveItemCreate("SLNG07",Player1,0,0,0)
EraseJournalEntry(%Mirek�s family heirloom.

We saved a Kuldahar townsperson, Mirek, from two yetis that had chased him all the way from the Vale of Shadows.  Mirek warned us the Vale was filled with restless spirits and yetis and asked us if we could retrieve a family heirloom his brother Silas was carrying when they were attacked by the yetis.  As he departed, Mirek also mentioned the local blacksmith, Conlan, pays good coin for the pelts of slain yetis.%)~ SOLVED_JOURNAL ~Mirek�s family heirloom.

We were able to retrieve Mirek of Kuldahar�s family heirloom.~ EXIT
END

IF ~Global("Mirek_Quest","GLOBAL",5)
~ THEN BEGIN 10
  SAY ~Good to see you again.  I hope your travels have been successful?~
  IF ~~ THEN REPLY ~Well... let�s just say that I�ve been doing more hiking than I�ve ever done in my life.  Farewell, Mirek.~ EXIT
END

IF ~GlobalGT("Mirek_Quest","GLOBAL",0)
GlobalLT("Mirek_Quest","GLOBAL",3)
Global("Mirek_Yeti","LOCALS",0)
GlobalLT("SPRITE_IS_DEADYETITUND","GLOBAL",2)~ THEN BEGIN 11
  SAY ~Both of them aren�t dead yet!  Kill them!~
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~GlobalGT("Kuldahar_Attack","GLOBAL",0)
GlobalLT("Kuldahar_Attack","GLOBAL",3)~ THEN BEGIN 12
  SAY ~Where did all those monsters come from that attacked the town?  It�s like they came out of nowhere!~
  IF ~~ THEN REPLY ~I�m looking into it, Mirek.  I think they�re part of another problem.~ EXIT
END

IF WEIGHT #2 ~Global("Kuldahar_Murder","GLOBAL",1)~ THEN BEGIN 13
  SAY ~You keep your distance, "friend."  I�ll have nothing to do with murderers.  ~
  IF ~~ THEN REPLY ~Very well, then, Mirek - I hope you remember that next time the yetis come for your worthless hide.~ EXIT
END

IF ~NumberOfTimesTalkedTo(0)
Global("TT3000_Visited","GLOBAL",1)
Global("Mirek_Yeti","LOCALS",1)~ THEN BEGIN 14
  SAY ~Ah, well met.  It�s been a long time since I�ve seen any adventurers pass through town.  I suppose you�re here to explore the Vale.~
  IF ~~ THEN REPLY ~Vale?~ GOTO 2
END