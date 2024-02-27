BEGIN ~DGUELLO~

IF ~NumTimesTalkedTo(0)
GlobalLT("Beorn_Quest","GLOBAL",3)~ THEN BEGIN 0
  SAY ~Watch out, the salamanders are about.  If they see you, they'll kill you.~
  IF ~~ THEN REPLY ~Thanks for the advice.  Who are you?~ JOURNAL ~Lower Dorn's Deep.

The mines of Lower Dorn's Deep are home to a small population of deep gnomes.  Among them is a priest named Guello.  He warned us about the salamander guards nearby and claimed that he was captured by umber hulks to work in the mines.  He told us that he needed to return to his camp or many of his people would die.~ GOTO 1
  IF ~~ THEN REPLY ~I can take care of myself, thanks.  Who are you?~ JOURNAL ~Lower Dorn's Deep.

The mines of Lower Dorn's Deep are home to a small population of deep gnomes.  Among them is a priest named Guello.  He warned us about the salamander guards nearby and claimed that he was captured by umber hulks to work in the mines.  He told us that he needed to return to his camp or many of his people would die.~ GOTO 1
  IF ~Global("SPRITE_IS_DEADSHIKATA","GLOBAL",1)
GlobalGT("SPRITE_IS_DEADSAL8008","GLOBAL",11)~ THEN REPLY ~I already killed Shikata and all of his salamanders.~ GOTO 12
END

IF ~~ THEN BEGIN 1
  SAY ~I am Guello, a priest.  I was captured by Malavon's umber hulks and brought here to work in the mines.  I need to return to my people or many will die... many.~
  IF ~Global("Beorn_Quest","GLOBAL",2)~ THEN REPLY ~Yes.  Beorn sent me to rescue you.  How can I get you out of here?~ GOTO 2
  IF ~GlobalLT("Beorn_Quest","GLOBAL",2)~ THEN REPLY ~I can help you get out of here.  What do I need to do?~ GOTO 2
  IF ~~ THEN REPLY ~Too bad.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Shikata, the salamander king, and his cruel kin, they watch over us constantly.  Defeat them and we can escape.~
  IF ~~ THEN REPLY ~I'll see what I can do.~ EXIT
  IF ~~ THEN REPLY ~Forget it.  Farewell.~ EXIT
END

IF ~NumTimesTalkedToGT(0)
GlobalLT("Beorn_Quest","GLOBAL",3)
OR(2)
	Global("SPRITE_IS_DEADSHIKATA","GLOBAL",0)
	GlobalLT("SPRITE_IS_DEADSAL8008","GLOBAL",12)~ THEN BEGIN 3
  SAY ~Please help us!  Send Shikata and his thugs back to the plane they came from.  If you do not, Marketh and his salamanders will work my people into the grave!~
  IF ~~ THEN EXIT
END

IF ~Global("Beorn_Quest","GLOBAL",3)~ THEN BEGIN 4
  SAY ~Thank you for rescuing me from the mines.  Now that Shikata is dead, we are one step closer to saving our people.  You have our gratitude.~
	IF ~~ THEN REPLY ~Don't mention it, Guello. I'm just glad that you're safe.~ DO ~SetGlobal("Beorn_Quest","GLOBAL",4)~ GOTO 5
	IF ~~ THEN REPLY ~Yeah, sure.~ DO ~SetGlobal("Beorn_Quest","GLOBAL",4)~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~I hope that your courage is as remarkable as your charity.  By communing with the stones, we have learned that a pack of umber hulks is headed this way.  They are likely to find our camp within two surface days.  We need you to help defend us.~
  IF ~~ THEN REPLY ~Of course, I will protect you.~ GOTO 7
  IF ~~ THEN REPLY ~On second thought, that sounds dangerous.  I don't think I can help you.~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~Please!  We need your help. If you do not help us, we are surely doomed.~
  IF ~~ THEN REPLY ~Oh, fine.  I guess I can help you.~ GOTO 7
  IF ~~ THEN REPLY ~Sorry.  I'm not helping you.  Farewell.~ GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY ~Thank you. We have learnt that Malavon has been building up their forces in the Artisan's District, which is accessible throught the tunnels northeast of the main entance to Dorn's Deep or from the northwest doorway in the Garden.~
=
~In the meantime, Beorn and I will watch over our people here. May Callarduran be with you.~
  IF ~~ THEN REPLY ~Farewell.~ DO ~SetGlobal("Gnome_Retreat","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~Very well.  If you will not help us, we will not help you.  From now on, you are the enemy of my people.  Cursed be your name.~
  IF ~~ THEN DO ~SetGlobal("Gnome_Hate","GLOBAL",1)~ EXIT
END

IF ~Global("Beorn_Quest","GLOBAL",5)~ THEN BEGIN 9
  SAY ~You have saved us, and for this, we are eternally grateful. Please accept this small gift as a token of our appreciation.~
  IF ~~ THEN REPLY ~No, I cannot accept such a gift. Knowing that you and your people are safe is the only reward I need.~ DO ~AddXPObject(Player1,25000)
AddXPObject(Player2,25000)
AddXPObject(Player3,25000)
AddXPObject(Player4,25000)
AddXPObject(Player5,25000)
AddXPObject(Player6,25000)
EraseJournalEntry(%Lower Dorn's Deep.

The mines of Lower Dorn's Deep are home to a small population of deep gnomes.  Among them is a priest named Guello.  He warned us about the salamander guards nearby and claimed that he was captured by umber hulks to work in the mines.  He told us that he needed to return to his camp or many of his people would die.%)
SetGlobal("Beorn_Quest","GLOBAL",6)~ EXIT
  IF ~~ THEN REPLY ~Thanks, Guello. Glad we could be of service.~ DO ~AddXPObject(Player1,25000)
AddXPObject(Player2,25000)
AddXPObject(Player3,25000)
AddXPObject(Player4,25000)
AddXPObject(Player5,25000)
AddXPObject(Player6,25000)
EraseJournalEntry(%Lower Dorn's Deep.

The mines of Lower Dorn's Deep are home to a small population of deep gnomes.  Among them is a priest named Guello.  He warned us about the salamander guards nearby and claimed that he was captured by umber hulks to work in the mines.  He told us that he needed to return to his camp or many of his people would die.%)
SetGlobal("Beorn_Quest","GLOBAL",6)
GiveItemCreate("bootfor2",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~GlobalGT("Beorn_Quest","GLOBAL",3)
!Global("Beorn_Quest","GLOBAL",5)
!Global("Gnome_Hate","GLOBAL",1)~ THEN BEGIN 10
  SAY ~How can I help you, friends?~
  IF ~~ THEN REPLY ~Can you give me some healing?~ DO ~StartStore("LDD_Guel",Player1)~ EXIT
  IF ~~ THEN REPLY ~Oh, nothing.  I just thought I'd say hello.  Farewell, Guello.~ EXIT
END

IF ~NumTimesTalkedToGT(0)
Global("SPRITE_IS_DEADSHIKATA","GLOBAL",1)
GlobalGT("SPRITE_IS_DEADSAL8008","GLOBAL",11)
GlobalLT("Beorn_Quest","GLOBAL",3)~ THEN BEGIN 11
  SAY ~Thank you for slaying Shikata and his evil kin.  You must leave this area quickly, though, before anyone else comes to find you.  I and my people will attempt to return to our camp through lower passages when the opportunity is right.  Again, I thank you, my friends.~
  IF ~~ THEN DO ~SetGlobal("Beorn_Quest","GLOBAL",3)
AddXPObject(Player1,10635)
AddXPObject(Player2,10635)
AddXPObject(Player3,10635)
AddXPObject(Player4,10635)
AddXPObject(Player5,10635)
AddXPObject(Player6,10635)
EraseJournalEntry(%Lower Dorn's Deep.

The mines of Lower Dorn's Deep are home to a small population of deep gnomes.  Among them is a priest named Guello.  He warned us about the salamander guards nearby and claimed that he was captured by umber hulks to work in the mines.  He told us that he needed to return to his camp or many of his people would die.%)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY ~Thank you for slaying Shikata and his evil kin.  You must leave this area quickly, though, before anyone else comes to find you.  I and my people will attempt to return to our camp through lower passages when the opportunity is right.  Again, I thank you, my friends.~
  IF ~~ THEN DO ~SetGlobal("Beorn_Quest","GLOBAL",3)
AddXPObject(Player1,10635)
AddXPObject(Player2,10635)
AddXPObject(Player3,10635)
AddXPObject(Player4,10635)
AddXPObject(Player5,10635)
AddXPObject(Player6,10635)
EraseJournalEntry(%Lower Dorn's Deep.

The mines of Lower Dorn's Deep are home to a small population of deep gnomes.  Among them is a priest named Guello.  He warned us about the salamander guards nearby and claimed that he was captured by umber hulks to work in the mines.  He told us that he needed to return to his camp or many of his people would die.%)
EscapeArea()~ EXIT
END