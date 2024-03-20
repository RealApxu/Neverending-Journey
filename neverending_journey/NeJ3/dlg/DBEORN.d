BEGIN ~DBEORN~

IF WEIGHT #1 ~NumTimesTalkedTo(0) Global("Beorn_Talk","GLOBAL",0)~ THEN BEGIN 0
  SAY ~Beware, traveler.  If you mean any harm to these people, I and my kin will stop you. This community of refugees has suffered enough. I am Beorn, Eighth Facet of Callarduran. Who are you?~
  IF ~~ THEN REPLY ~I'm <CHARNAME>. Tarnelm told us how to get here. We brought him and the others in the camp some food. He thought he could trust us.~ DO ~SetGlobal("Beorn_Talk","GLOBAL",1)~ JOURNAL ~Lower Dorn's Deep.

In a deep gnome refugee camp, we encountered a deep gnome priest of Callarduran named Beorn. He was very suspicious of our presence in the camp.~ GOTO 1
  IF ~~ THEN REPLY ~I'm <CHARNAME>. I just sort of... found this place. Some umber hulks broke through a wall and attacked us.~ DO ~SetGlobal("Beorn_Talk","GLOBAL",1)~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY ~Well, should he trust you?~
  IF ~~ THEN REPLY ~Of course! I would never harm innocents.~ GOTO 3
  IF ~~ THEN REPLY ~Certainly. I have no intention of harming you or anyone else here.~ GOTO 3
  IF ~~ THEN REPLY ~Er... I guess so.~ GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY ~Do you work for Marketh?~
  IF ~~ THEN REPLY ~Marketh? Yeah, he's my boss.~ GOTO 6
  IF ~!Global("Know_Marketh","GLOBAL",1)~ THEN REPLY ~Marketh? Sorry, but I don't even know who Marketh *is.*~ DO ~SetGlobal("Know_Marketh","GLOBAL",1)~ JOURNAL ~Lower Dorn's Deep.

Beorn informed us that Marketh enslaves the deep gnomes to serve Revered Brother Poquelin.  According to him, salamanders, led by one called "Shikata," abuse the gnomes, often burning them to death.~ GOTO 7
  IF ~~ THEN REPLY ~No. I'm trying to stop Marketh.~ GOTO 8
END

IF ~~ THEN BEGIN 3
  SAY ~Good. I am relieved to hear that. If you are a friend of Tarnelm and a helper of our people, you are our friend. You are welcome to rest here. Please visit me later in our temple to the northeast. There is something I would ask of you, something of grave importance.~
  IF ~~ THEN REPLY ~Certainly. Thank you, Beorn.~ DO ~SetGlobal("GOING_TO_TEMPLE","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY ~Okay. Farewell.~ DO ~SetGlobal("GOING_TO_TEMPLE","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY ~Sure... whatever. Farewell.~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~Listen, you are welcome to rest here to hide from the minions of Revered Brother Poquelin, but at least have the courtesy to show us some respect while you are here.  I'll speak with you later.  You can find me at the temple to the northeast.~
  IF ~~ THEN DO ~SetGlobal("GOING_TO_TEMPLE","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~You're worse than the drow parasite behind me.  I'm only one man, but I'll die before I let you harm my people.~
  IF ~~ THEN REPLY ~Sounds good to me!  Muhahahaha!~ DO ~SetGlobal("Sad_Gnomes","GLOBAL",1) Enemy() Attack(Protagonist)~ EXIT
  IF ~~ THEN REPLY ~Look, I was just kidding... sorry.  Really.~ GOTO 4
END

IF ~~ THEN BEGIN 6
  SAY ~How can you stand serving that... scum?  Well, no matter.  I'm only one man, but I'll die before I let you harm my people.~
  IF ~~ THEN REPLY ~If that's what it takes, so be it.~ DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY ~Hey, hey, I was joking.  I don't serve Marketh.  Sorry about that.~ GOTO 4
END

IF ~~ THEN BEGIN 7
  SAY ~Marketh is a horrible human.  He enslaves my people for his lord, Revered Brother Poquelin.  Salamanders, led by Shikata, abuse my people and force them to work in the old refineries and mines of Dorn's Deep.  The salamanders are incredibly cruel, often forcing my people against walls just to burn them to death.~
  IF ~~ THEN REPLY ~Wow.  Sounds like a great guy.~ GOTO 4
  IF ~~ THEN REPLY ~Hmm.  No, I don't serve him.~ GOTO 8
  IF ~~ THEN REPLY ~If I can do anything about it, I'll stop him.~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~Good.  I am relieved to hear that.  The enemies of Marketh are our friends.  You are welcome to rest here.  Please visit me later in our temple to the northeast.  There is something I would ask of you, something of grave importance.~
  IF ~~ THEN REPLY ~Certainly.  Thank you, Beorn.~ DO ~SetGlobal("GOING_TO_TEMPLE","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY ~Okay.  Farewell.~ DO ~SetGlobal("GOING_TO_TEMPLE","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY ~Sure... whatever.  Farewell.~ GOTO 4
END

IF WEIGHT #2 ~Global("Beorn_Talk","GLOBAL",1) GlobalLT("Beorn_Quest","GLOBAL",3)~ THEN BEGIN 9
  SAY ~Welcome to our humble temple, my friend.  As I said before, I am Beorn, Eighth Facet of Callarduran.  Callarduran Smoothhands is the god of my people.  He helps us shape the stone, speak with the earth, and protect our people during hard times.  Even with his protection, however, we sometimes need help...~
  IF ~~ THEN REPLY ~You need say no more.  I will help you.~ UNSOLVED_JOURNAL ~Lower Dorn's Deep.

Beorn asked us to help him protect the camp from an umber hulk attack and rescue the lost high priest of Callarduran, Guello. The man behind the umber hulk attack is a dark elf sorcerer named Malavon, who in turn works for Revered Brother Poquelin. Guello is believed to be held in Marketh's mines.~ GOTO 10
  IF ~Class(LastTalkedToBy,Paladin)~ THEN REPLY ~I will protect you... even though you are a priest of a foreign faith.  It is my duty to help those in need.~ UNSOLVED_JOURNAL ~Lower Dorn's Deep.

Beorn asked us to help him protect the camp from an umber hulk attack and rescue the lost high priest of Callarduran, Guello. The man behind the umber hulk attack is a dark elf sorcerer named Malavon, who in turn works for Revered Brother Poquelin. Guello is believed to be held in Marketh's mines.~ GOTO 10
  IF ~Class(LastTalkedToBy,Druid)~ THEN REPLY ~As a druid, I appreciate the reverence your people show to the earth.  I will help you.~ UNSOLVED_JOURNAL ~Lower Dorn's Deep.

Beorn asked us to help him protect the camp from an umber hulk attack and rescue the lost high priest of Callarduran, Guello. The man behind the umber hulk attack is a dark elf sorcerer named Malavon, who in turn works for Revered Brother Poquelin. Guello is believed to be held in Marketh's mines.~ GOTO 10
  IF ~~ THEN REPLY ~Oh, brother.  Here it comes again.  Yeah, I guess I can help you.~ UNSOLVED_JOURNAL ~Lower Dorn's Deep.

Beorn asked us to help him protect the camp from an umber hulk attack and rescue the lost high priest of Callarduran, Guello. The man behind the umber hulk attack is a dark elf sorcerer named Malavon, who in turn works for Revered Brother Poquelin. Guello is believed to be held in Marketh's mines.~ GOTO 10
  IF ~~ THEN REPLY ~No way.  I'm not helping you.~ GOTO 13
END

IF ~~ THEN BEGIN 10
  SAY ~I thank you.  Here is the problem at hand. Malavon, a drow sorcerer serving Revered Brother Poquelin, is trying to use his army of umber hulks to find this camp. You see, we svirfneblin are inherently proof against magical detection... it's one of the only things that prevent the drow and duergar from slaughtering us.~
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~The umber hulks, however, can feel very subtle vibrations in the ground. With the increased activity in this area, it's only a matter of time before the hulks find us. On top of this, our Ruby priest, Guello, tried to save some of our people. He was captured by Marketh's henchman, Seth, and languishes in the mines.~
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY ~We need your help.  We need you to rescue Guello from the mines and then protect our village from the umber hulk horde when it finds us.  We would be most grateful.~
  IF ~Global("SPRITE_IS_DEADMalavon","GLOBAL",1)~ THEN REPLY ~But... I already killed Malavon.~ GOTO 20
  IF ~~ THEN REPLY ~I'll see what I can do.  Farewell.~ DO ~SetGlobal("Beorn_Talk","GLOBAL",2) SetGlobal("Beorn_Quest","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY ~I changed my mind.  I can't do it.~ GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY ~Please, we need your help. If you cannot be persuaded by sympathy, perhaps I can appeal to common sense. If this refugee camp is destroyed, you will lose the only safe haven you have near Dorn's Deep.~
  IF ~~ THEN REPLY ~Oh, alright.  I'll do it.~ GOTO 10
  IF ~~ THEN REPLY ~I'll take my chances.~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~Fine.  I can't force you to do anything. Enjoy your sleep while you are able. Don't let the umber hulk mandible pierce your lung while you're sleeping.~
  IF ~~ THEN DO ~SetGlobal("Beorn_Talk","GLOBAL",2) SetGlobal("Beorn_Quest","GLOBAL",1)~ EXIT
END

IF WEIGHT #3 ~Global("Beorn_Quest","GLOBAL",1) GlobalGT("Beorn_Talk","GLOBAL",1)~ THEN BEGIN 15
  SAY ~Oh, it's you again. What do you want now?~
  IF ~~ THEN REPLY ~Nothing. I just wanted to bother you.~ EXIT
  IF ~~ THEN REPLY ~Look, I've changed my mind. I've decided to help you.~ GOTO 10
END

IF WEIGHT #4 ~Global("Beorn_Quest","GLOBAL",2) GlobalGT("Beorn_Talk","GLOBAL",1)~ THEN BEGIN 16
  SAY ~I welcome you back to our humble temple, friend. How can I help you?~
  IF ~~ THEN REPLY ~I'm not exactly sure where the mines are. If I'm going to find Guello, I need to know how to get there.~ GOTO 17
  IF ~~ THEN REPLY ~I am in need of healing.~ DO ~StartStore("LDD_Beor",Protagonist)~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY ~The mines are southeast of Durdel Anatha, south of the palace, and west of the Great Forge.~
  IF ~~ THEN REPLY ~Could you provide me with some healing?~ DO ~StartStore("LDD_Beor",Protagonist)~ EXIT
  IF ~~ THEN REPLY ~Thanks. Farewell.~ EXIT
END

IF WEIGHT #0 ~GlobalGT("Beorn_Quest","GLOBAL",2) GlobalLT("Beorn_Quest","GLOBAL",5) !Global("Gnome_Hate","GLOBAL",1)~ THEN BEGIN 18
  SAY ~Thank you for rescuing Guello from the mines. His return has bolstered our spirits greatly. If we can keep out of harm's way until the umber hulks have passed, we will have a good chance of recovering.~
  IF ~~ THEN REPLY ~Could you provide me with some healing?~ DO ~StartStore("LDD_Beor",Protagonist)~ EXIT
  IF ~~ THEN REPLY ~Think nothing of it.  Farewell.~ EXIT
END

IF ~GlobalGT("Beorn_Quest","GLOBAL",5) Global("VP_BeornThanks","LOCALS",0)~ THEN BEGIN 19
  SAY ~You have our eternal gratitude for saving our community. Because of you, generations of svirfneblin will continue to live and mine in the same region that we have for thousands of years.~
  IF ~~ THEN REPLY ~Could you provide me with some healing?~ DO ~SetGlobal("VP_BeornThanks","LOCALS",1) StartStore("LDD_Beor",Protagonist)~ EXIT
  IF ~~ THEN REPLY ~I'm glad to have been of help. Farewell.~ DO ~SetGlobal("VP_BeornThanks","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY ~Sure. Farewell.~ DO ~SetGlobal("VP_BeornThanks","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY ~I am glad to hear it, but his umber hulks search for us still. Will you help us? Can you?~
  IF ~GlobalLT("SPRITE_IS_DEADUMBH8009","GLOBAL",15)~ THEN REPLY ~I'll see what I can do. Farewell.~ DO ~SetGlobal("Beorn_Talk","GLOBAL",2) SetGlobal("Beorn_Quest","GLOBAL",2)~ EXIT
  IF ~GlobalGT("SPRITE_IS_DEADUMBH8009","GLOBAL",14)~ THEN REPLY ~But I have already eliminated them all.~ DO ~SetGlobal("Beorn_Talk","GLOBAL",2) SetGlobal("Beorn_Quest","GLOBAL",2)~ GOTO 23
  IF ~~ THEN REPLY ~I changed my mind. I can't do it.~ GOTO 14
END

IF ~Global("Beorn_Quest","GLOBAL",5)~ THEN BEGIN 21
	SAY ~You have saved us, and for this, we are eternally grateful. Please accept this small gift as a token of our appreciation.~
  IF ~~ THEN REPLY ~No, I cannot accept such a gift. Knowing that you and your people are safe is the only reward I need.~ DO ~AddXPObject(Player1,25000) AddXPObject(Player2,25000) AddXPObject(Player3,25000) AddXPObject(Player4,25000) AddXPObject(Player5,25000) AddXPObject(Player6,25000) EraseJournalEntry(%Lower Dorn's Deep.

In a deep gnome refugee camp, we encountered a deep gnome priest of Callarduran named Beorn. He was very suspicious of our presence in the camp.%) EraseJournalEntry(%Lower Dorn's Deep.

Beorn informed us that Marketh enslaves the deep gnomes to serve Revered Brother Poquelin.  According to him, salamanders, led by one called "Shikata," abuse the gnomes, often burning them to death.%) EraseJournalEntry(%Lower Dorn's Deep.

Beorn asked us to help him protect the camp from an umber hulk attack and rescue the lost high priest of Callarduran, Guello. The man behind the umber hulk attack is a dark elf sorcerer named Malavon, who in turn works for Revered Brother Poquelin. Guello is believed to be held in Marketh's mines.%) SetGlobal("Beorn_Quest","GLOBAL",6)~ EXIT
  IF ~~ THEN REPLY ~Thanks, Beorn. Glad we could be of service.~ DO ~AddXPObject(Player1,25000) AddXPObject(Player2,25000) AddXPObject(Player3,25000) AddXPObject(Player4,25000) AddXPObject(Player5,25000) AddXPObject(Player6,25000) EraseJournalEntry(%Lower Dorn's Deep.

In a deep gnome refugee camp, we encountered a deep gnome priest of Callarduran named Beorn. He was very suspicious of our presence in the camp.%) EraseJournalEntry(%Lower Dorn's Deep.

Beorn informed us that Marketh enslaves the deep gnomes to serve Revered Brother Poquelin.  According to him, salamanders, led by one called "Shikata," abuse the gnomes, often burning them to death.%) EraseJournalEntry(%Lower Dorn's Deep.

Beorn asked us to help him protect the camp from an umber hulk attack and rescue the lost high priest of Callarduran, Guello. The man behind the umber hulk attack is a dark elf sorcerer named Malavon, who in turn works for Revered Brother Poquelin. Guello is believed to be held in Marketh's mines.%) SetGlobal("Beorn_Quest","GLOBAL",6) GiveItemCreate("bootfor2",LastTalkedToBy,0,0,0)~ EXIT
END

IF ~GlobalGT("Beorn_Quest","GLOBAL",5) Global("VP_BeornThanks","LOCALS",1)~ THEN BEGIN 22
  SAY ~Welcome back, my friend. How can I help you?~
  IF ~~ THEN REPLY ~Can you give me some healing?~ DO ~StartStore("LDD_Beor",Player1)~ EXIT
  IF ~~ THEN REPLY ~Oh, nothing. I just thought I'd say hello.~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY ~Then please rescue Guello from the mines.~
  IF ~~ THEN GOTO 17
END