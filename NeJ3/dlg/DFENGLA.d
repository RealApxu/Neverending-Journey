BEGIN ~DFENGLA~

IF WEIGHT #2 ~NumTimesTalkedTo(0)!Global("Fengla_Reward","GLOBAL",1)~ THEN BEGIN 0
  SAY ~The deep gnome girl stares at you blankly.  She looks unhappy.  She is carrying a small bag full of apples and two bottles of wine.  She wears a large key around her neck.~
  IF ~~ THEN REPLY ~Hello, little girl.  How are you?  What's your name?~ DO ~SetGlobal("Fengla_Talked","GLOBAL",1)~ JOURNAL ~Lower Dorn's Deep.

We met a strange deep gnome girl today named Fengla.  She had her name branded into the skin on her arm and her tongue was cut out.~ GOTO 2
END

IF WEIGHT #4 ~NumTimesTalkedToGT(0)!Global("Fengla_Reward","GLOBAL",1)~ THEN BEGIN 1
  SAY ~You see Fengla.  As you approach, she stops and stares at you, her face placid and dour.~
  IF ~Global("Watchtower_Key","GLOBAL",0)~ THEN REPLY ~Hey honey, could I borrow the key to the watchtower for a little while?~ GOTO 7
  IF ~~ THEN REPLY ~Hello again, Fengla.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~She points to her right forearm.  Branded into her skin is the name "FENGLA."~
  IF ~~ THEN REPLY ~What's wrong? Can't you speak?~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Fengla opens her mouth.  She has no tongue.  It appears to have been cut out.~
  IF ~~ THEN REPLY ~Who did that to you?~ JOURNAL ~Lower Dorn's Deep.

Someone in a small palace in the northeastern section of Durdel Anatha cut Fengla's tongue out. She showed us a symbol of a pickaxe on her wrist. Perhaps that is the sign of her assailant.~ GOTO 4
  IF ~~ THEN REPLY ~Ouch.~ GOTO 5
  IF ~~ THEN REPLY ~Now that's a fine cut - I imagine the heat of the blade kept the wound from becoming too messy.~ DO ~SetGlobal("Fengla_Jerk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~She points to the upper reaches of the palace in the northeastern portion of the cavern.  She then points to the brand of a pickaxe on her wrist.~
  IF ~~ THEN REPLY ~Where are you taking that food? ~ JOURNAL ~Lower Dorn's Deep.

Fengla told us that she takes food to a watchtower in the southeastern area of Durdel Anatha.  The watchtower appears to be heavily fortified and is surrounded by cattle pens filled with deep gnome slaves.~ GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY ~She nods.~
  IF ~~ THEN REPLY ~Where are you taking that food?~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~Fengla points to a tower in the southeast portion of the cavern.  It is surrounded by a moat of lava which is, in turn, surrounded by Underdark cattle pens filled with deep gnome slaves.~
  IF ~Global("Watchtower_Key","GLOBAL",0)~ THEN REPLY ~Hey honey, could I borrow the key to the watchtower for a little while?~ GOTO 7
  IF ~~ THEN REPLY ~Hmm.  Thanks, Fengla.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Fengla smiles and holds out the key.~
  IF ~~ THEN REPLY ~Thanks, Fengla.~ DO ~GiveItem("KeyWatc",Protagonist)
SetGlobal("Watchtower_Key","GLOBAL",1)~ JOURNAL ~Lower Dorn's Deep.

We met a slave girl in Lower Dorn's Deep.  She was taking food to a watchtower in the southern portion of Durdel Anatha.  We asked her for the key to the watchtower, and she handed it over.~ EXIT
  IF ~~ THEN REPLY ~Eh... no thanks, Fengla.  On second though, I guess I don't need the key right now.  Farewell.~ EXIT
END

IF WEIGHT #3 ~NumTimesTalkedToGT(0)Global("Fengla_Jerk","GLOBAL",1)
!Global("Fengla_Reward","GLOBAL",1)~ THEN BEGIN 8
  SAY ~When Fengla sees you, she snarls, then reaches into her bag and hurls an apple at you.~
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~Global("8001_FENGLA_REMOVE","GLOBAL",1)
!Global("Fengla_Talked","GLOBAL",1)
!Global("Fengla_Reward","GLOBAL",1)~ THEN BEGIN 9
  SAY ~A small, silent gnome girl wanders up to you and shakes your hand vigorously.  She smiles up at you for a second and then departs.~
  IF ~~ THEN REPLY ~Farewell... little girl.~ DO ~SetGlobal("Fengla_Reward","GLOBAL",1)
EraseJournalEntry(%Lower Dorn's Deep.

We met a strange deep gnome girl today named Fengla.  She had her name branded into the skin on her arm and her tongue was cut out.%)
EraseJournalEntry(%Lower Dorn's Deep.

Someone in a small palace in the northeastern section of Durdel Anatha cut Fengla's tongue out. She showed us a symbol of a pickaxe on her wrist. Perhaps that is the sign of her assailant.%)
EraseJournalEntry(%Lower Dorn's Deep.

Fengla told us that she takes food to a watchtower in the southeastern area of Durdel Anatha.  The watchtower appears to be heavily fortified and is surrounded by cattle pens filled with deep gnome slaves.%)

EraseJournalEntry(%Lower Dorn's Deep.

We met a slave girl in Lower Dorn's Deep.  She was taking food to a watchtower in the southern portion of Durdel Anatha.  We asked her for the key to the watchtower, and she handed it over.%)
AddXPObject(Player1,10500)
AddXPObject(Player2,10500)
AddXPObject(Player3,10500)
AddXPObject(Player4,10500)
AddXPObject(Player5,10500)
AddXPObject(Player6,10500)
EscapeArea()~ SOLVED_JOURNAL ~Lower Dorn's Deep.

We killed a group of archers in a watchtower who were keeping the deep gnome slaves in line.  Right after we finished, a small girl entered the tower, shook my hand, and then mysteriously departed.  Strange.~ EXIT
END

IF WEIGHT #1 ~Global("8001_FENGLA_REMOVE","GLOBAL",1)
Global("Fengla_Talked","GLOBAL",1)
!Global("Fengla_Reward","GLOBAL",1)~ THEN BEGIN 10
  SAY ~Fengla wanders up to you and shakes your hand vigorously.  She smiles up at you for a second, then departs.~
  IF ~~ THEN REPLY ~Farewell... little girl.~ DO ~SetGlobal("Fengla_Reward","GLOBAL",1)
EraseJournalEntry(%Lower Dorn's Deep.

We met a strange deep gnome girl today named Fengla.  She had her name branded into the skin on her arm and her tongue was cut out.%)
EraseJournalEntry(%Lower Dorn's Deep.

Someone in a small palace in the northeastern section of Durdel Anatha cut Fengla's tongue out. She showed us a symbol of a pickaxe on her wrist. Perhaps that is the sign of her assailant.%)
EraseJournalEntry(%Lower Dorn's Deep.

Fengla told us that she takes food to a watchtower in the southeastern area of Durdel Anatha.  The watchtower appears to be heavily fortified and is surrounded by cattle pens filled with deep gnome slaves.%)

EraseJournalEntry(%Lower Dorn's Deep.

We met a slave girl in Lower Dorn's Deep.  She was taking food to a watchtower in the southern portion of Durdel Anatha.  We asked her for the key to the watchtower, and she handed it over.%)
AddXPObject(Player1,10500)
AddXPObject(Player2,10500)
AddXPObject(Player3,10500)
AddXPObject(Player4,10500)
AddXPObject(Player5,10500)
AddXPObject(Player6,10500)
EscapeArea()~ SOLVED_JOURNAL ~Lower Dorn's Deep.

We killed a group of archers in a watchtower who were keeping the deep gnome slaves in line.  Right after we finished, Fengla entered the tower, shook my hand, and then quickly departed.~ EXIT
END