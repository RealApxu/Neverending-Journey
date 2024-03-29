BEGIN ~DWHITCOM~

IF ~GlobalGT("Kuldahar_Attack","GLOBAL",0) GlobalLT("Kuldahar_Attack","GLOBAL",3) Global("Kuldahar_Murder","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY ~Sorry for the confusion, friend - we're having our share of problems at the moment. Looks like you stirred up a viper's nest at Dragon's Eye, and they came down to pay us back.~
  IF ~Global("Arundel_Belhifet","GLOBAL",0)~ THEN REPLY ~I had nothing to do with these attackers - but I *will* get to the bottom of it. In the meantime, I'm in need of a meal, if the kitchen's open.~  DO ~StartStore("KUTAV",Player1)~ EXIT
  IF ~GlobalGT("Arundel_Belhifet","GLOBAL",0)~ THEN REPLY ~Those attackers in the town were *not* from Dragon's Eye. They're part of another problem - which I fear I will have to deal with presently. In the meantime, I'm in need of a meal, if the kitchen's open.~  DO ~StartStore("KUTAV",Player1)~ EXIT
  IF ~~ THEN REPLY ~I'm looking for a room for the night.~  GOTO 5
  IF ~Global("Amelia_Whitcomb","GLOBAL",1)~ THEN REPLY ~Amelia, one of your barmaids, said I should ask you for a meal.~  GOTO 3
  IF ~Global("Know_Lysan","GLOBAL",1) Gender(Player1, Male) Global("SPRITE_IS_DEADLYSAN","GLOBAL",0)~ THEN REPLY ~Your barmaid, Lysan, is quite pleasant. And talkative.~  GOTO 4
  IF ~Global("Lysan_Stuff","GLOBAL",0) Global("SPRITE_IS_DEADLYSAN","GLOBAL",1)~ THEN REPLY ~Whitcomb, I had a disturbing encounter with one of your barmaids, Lysan, in the Vale of Shadows.~  GOTO 6
  IF ~~ THEN REPLY ~I must take my leave. Farewell.~  EXIT
END

IF ~NumTimesTalkedTo(0) Global("Kuldahar_Murder","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY ~Well, now, seems the Pass coughed up one more straggler! Welcome to the Root Cellar, stranger. Name's Whitcomb. What's your pleasure? A drink? Something from the kitchen?~
  IF ~~ THEN REPLY ~A drink would be welcome, yes.~  DO ~StartStore("KUTAV",Player1)~ EXIT
  IF ~~ THEN REPLY ~Actually, I'm looking for a room for the night.~  GOTO 5
  IF ~Global("Amelia_Whitcomb","GLOBAL",1)~ THEN REPLY ~Amelia, one of your barmaids, said I should ask you for a meal.~  GOTO 3
  IF ~Global("Know_Lysan","GLOBAL",1) Gender(Player1, Male) Global("SPRITE_IS_DEADLYSAN","GLOBAL",0)~ THEN REPLY ~Your barmaid, Lysan, is quite pleasant. And talkative.~  GOTO 4
  IF ~Global("Lysan_Stuff","GLOBAL",0) Global("SPRITE_IS_DEADLYSAN","GLOBAL",1)~ THEN REPLY ~Whitcomb, I had a disturbing encounter with one of your barmaids, Lysan, in the Vale of Shadows.~  GOTO 6
  IF ~~ THEN REPLY ~Nothing this day, thanks.~  EXIT
END

IF ~NumTimesTalkedToGT(0) Global("Kuldahar_Murder","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY ~Welcome back, friend. Can I get you a drink? ~
  IF ~~ THEN REPLY ~A drink would be welcome, yes.~  DO ~StartStore("KUTAV",Player1)~ EXIT
  IF ~~ THEN REPLY ~Actually, I'm looking for a room for the night.~  GOTO 5
  IF ~Global("Amelia_Whitcomb","GLOBAL",1)~ THEN REPLY ~Amelia, one of your barmaids, said I should ask you for a meal.~  GOTO 3
  IF ~Global("Know_Lysan","GLOBAL",1) Gender(Player1, Male) Global("SPRITE_IS_DEADLYSAN","GLOBAL",0)~ THEN REPLY ~Your barmaid, Lysan, is quite pleasant. And talkative.~  GOTO 4
  IF ~Global("Lysan_Stuff","GLOBAL",0) Global("SPRITE_IS_DEADLYSAN","GLOBAL",1)~ THEN REPLY ~Whitcomb, I had a disturbing encounter with one of your barmaids, Lysan, in the Vale of Shadows.~  GOTO 6
  IF ~~ THEN REPLY ~Nothing this day, thanks.~  EXIT
END

IF ~~ THEN BEGIN 3 // from: 5.1 4.2 2.2 1.2 0.3
  SAY ~Ha! I *strongly* doubt she said it as politely as that. A brassy one, she is - her tongue could cut firewood, and it will if she keeps up her chatter. But never you mind -- I can set you up with a meal that's to your liking, just name your pleasure.~
  IF ~~ THEN REPLY ~That would be welcome, yes.~  DO ~StartStore("KUTAV",Player1)~ EXIT
  IF ~~ THEN REPLY ~Actually, I'm looking for a room for the night.~  GOTO 5
  IF ~Global("Know_Lysan","GLOBAL",1) Gender(Player1, MALE) Global("SPRITE_IS_DEADLYSAN","GLOBAL",0)~ THEN REPLY ~Your barmaid, Lysan, is quite pleasant. And talkative.~  GOTO 4
  IF ~Global("Lysan_Stuff","GLOBAL",0) Global("SPRITE_IS_DEADLYSAN","GLOBAL",1)~ THEN REPLY ~Whitcomb, I had a disturbing encounter with one of your barmaids, Lysan, in the Vale of Shadows.~  GOTO 6
  IF ~~ THEN REPLY ~Nothing this day, thanks.~  EXIT
END

IF ~~ THEN BEGIN 4 // from: 5.2 3.2 2.3 1.3 0.4
  SAY ~Oh, do you fancy her? She's easy on the eyes, she is, but a little too much of winter's chill in her to *my* liking, friend. Can't say I haven't tried to thaw her out a little, but she could keep an ogre at bay with those eyes of hers. She came here a few months ago, and she works hard, so I'm not complaining.~
  IF ~~ THEN REPLY ~Could I see your bill of fare?~  DO ~StartStore("KUTAV",Player1)~ EXIT
  IF ~~ THEN REPLY ~I see. I'm looking for a room for the night.~  GOTO 5
  IF ~Global("Amelia_Whitcomb","GLOBAL",1)~ THEN REPLY ~Amelia, one of your barmaids, said I should ask you for a meal.~  GOTO 3
  IF ~~ THEN REPLY ~Nothing this day, thanks.~  EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 3.1 2.1 1.1 0.2
  SAY ~A room? Sorry, but I can't help you, friend. Try the Evening Shade, 'cross town. The innkeeper's bound to have some rooms to let, and desperate to let them, too, since the passes aren't going to see any caravans for a while.~
  IF ~~ THEN REPLY ~Could I see what food and drink you've got?~  DO ~StartStore("KUTAV",Player1)~ EXIT
  IF ~Global("Amelia_Whitcomb","GLOBAL",1)~ THEN REPLY ~Amelia, one of your barmaids, said I should ask you for a meal.~  GOTO 3
  IF ~Global("Know_Lysan","GLOBAL",1) Gender(Player1, Male) Global("SPRITE_IS_DEADLYSAN","GLOBAL",0)~ THEN REPLY ~Your barmaid, Lysan, is quite pleasant. And talkative.~  GOTO 4
  IF ~Global("Lysan_Stuff","GLOBAL",0) Global("SPRITE_IS_DEADLYSAN","GLOBAL",1)~ THEN REPLY ~Whitcomb, I had a disturbing encounter with one of your barmaids, Lysan, in the Vale of Shadows.~  GOTO 6
  IF ~~ THEN REPLY ~I'll go to the Evening Shade, then. Thank you.~  EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.3 3.3 2.4 1.4 0.5
  SAY ~I was *wondering* where that fool woman had gone off to! I was worried she'd been taken by raiders - but... in the Vale, you say? She said she was going to visit family in upper Kuldahar, like she does every other month or so.  ~
  IF ~!Alignment(Player1, MASK_EVIL)~ THEN REPLY ~I suspect that was a story she told you so you wouldn't know she was going on religious retreats. She was a priestess of Auril, and she would head up into the Vale to do the will of her goddess. She... won't be coming back.~  DO ~SetGlobal("Lysan_Stuff","GLOBAL",1)~ GOTO 7
  IF ~!Alignment(Player1, MASK_GOOD)~ THEN REPLY ~That was merely a convenient lie she told you so you wouldn't suspect her motives. Obviously, it worked. She was a priestess of that frost-bitch, Auril, and I had to kill her before she did any more of her goddess' work.~  DO ~SetGlobal("Lysan_Stuff","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.0
  SAY ~Wh - are you *serious?* Lysan may be as cold as a witch's breast, but a priestess of the frostmaiden? Come now, don't jest with Whit--~
  IF ~~ THEN REPLY ~Look, I did what had to be done, but she had winter in her heart and meant Kuldahar harm, so I was forced to fight her. I don't wish to discuss it any more.~  GOTO 8
  IF ~~ THEN REPLY ~Listen to me, you jabbering skeleton. She was an Aurilite priestess, and she's dead. Now *silence.* Or perhaps you were in league with her all along. What is *your* faith, Whitcomb?~  GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 9.0 7.0
  SAY ~I... see. Well, to tell the truth, I suspected Lysan was something more than she let on... but still... an Auril priestess? My. Well, I'll see that her belongings are thrown out and burned without del--~
  IF ~~ THEN REPLY ~Wait -- her belongings? Do you mind if I keep them? There might be some, uh, clues in them. Especially if they're valuable.~  SOLVED_JOURNAL ~Finding the priestess of Auril.

We found the priestess of Auril that Kresselack spoke of, a woman named Lysan. Once she revealed herself, we attacked her.~  GOTO 10
  IF ~~ THEN REPLY ~I would like to see these items. Perhaps they contain some clues as to what is transpiring in the Dale. If not, then I shall see that they are kept safe.~  SOLVED_JOURNAL ~Finding the priestess of Auril.

We found the priestess of Auril that Kresselack spoke of, a woman named Lysan. Once she revealed herself, we attacked her.~  GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY ~Uh... no, no, I worship Tempus. I have no love of the cold, I assure you. Ask the brothers and Calliana - I am a devout man.~
  IF ~~ THEN REPLY ~Very well, then it seems *one* of Kuldahar's problems has been solved, but I suspect Lysan was only a part of a much larger threat.~  GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 8.1 8.0
  SAY ~Well... hmmm. All right. I've got them here...~
  IF ~~ THEN REPLY ~Make haste and hand them over, then.~  DO ~GiveItemCreate("Scrl56",Player1, 1, 0, 0) GiveItemCreate("Scrl61",Player1, 1, 0, 0) GiveItemCreate("Scrl06",Player1, 1, 0, 0) GiveItemCreate("MantleCS",Player1, 3, 0, 0)~ EXIT
  IF ~~ THEN REPLY ~Thank you, Whitcomb.~  DO ~GiveItemCreate("Scrl56",Player1, 1, 0, 0) GiveItemCreate("Scrl61",Player1, 1, 0, 0) GiveItemCreate("Scrl06",Player1, 1, 0, 0) GiveItemCreate("MantleCS",Player1, 3, 0, 0)~ EXIT
END

IF ~Global("Kuldahar_Murder","GLOBAL",1)~ THEN BEGIN 11 // from:
  SAY ~You've got some spine comin' in here, stranger... this inn isn't the place for butchers like you. You'd better leave quick unless you want me to run you through. Go on, now! Get out!~
  IF ~~ THEN REPLY ~You're quick with the threats, but I'll see you squealing like a stuck pig before you can even draw your blade. Want me to leave? *Make* me.~  DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY ~I'll leave... for now.~  EXIT
END