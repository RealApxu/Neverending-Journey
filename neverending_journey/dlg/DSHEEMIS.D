BEGIN ~DSHEEMIS~

IF ~NumberOfTimesTalkedTo(0) GlobalLT("Sheemish_Escape","GLOBAL",2)~ THEN BEGIN 0
  SAY ~Papa?  Papa, is that you?  It's me, Sheemish.~
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Papa?  No, I'm not your papa, Sheemish.  I don't have any children.  At least... none that I know of.  Heh heh.  Who is your papa?~ GOTO 1
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~No, I'm definitely not your papa, Sheemish.  Could be your mom, but it's not true as well.  My name is <GABBER>.  Who is your father?~ GOTO 1
  IF ~~ THEN REPLY ~I'm not your papa, Sheemish.  What's your father's name?~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~My papa is Conlan.  He's a blacksmith in Kuldahar.  He's *this* big and *this* tall, and if he were here, he'd beat the stuffin' out of these monsters.  "Pow, pow!" "Oof.  Argh!"  That last sound was the lizards and spiders getting beat up... not my dad.~
  IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ THEN REPLY ~Well, Sheemish, I'll see what I can do about "beating the stuffin'" out of the monsters for you.~ EXIT
  IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ THEN REPLY ~Fear not, lad.  I'll take care of the monsters.~ EXIT
  IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ THEN REPLY ~*sigh*  I can go kill the monsters... I guess.~ EXIT
  IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ THEN REPLY ~Beshaba smiles on you, boy.  You'll be lucky to get out of this maze even if I happen to kill everything between you and the door.  Farewell.~ EXIT
  IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ THEN REPLY ~I bet that my dad could beat up your dad.~ GOTO 2
  IF ~OR(2) !InParty("Minsc") Dead("Minsc") Global("LKingDead","GLOBAL",1) GlobalGT("SPRITE_IS_DEADLIZARDMAN","GLOBAL",24)~ THEN REPLY ~I already took care of all the monsters in the lizardman caves and everything between you and the exit.  You can leave anytime you want, Sheemish.~ DO ~SetGlobal("Sheemish_Escape","GLOBAL",1)~ GOTO 7
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ289
END

IF ~~ THEN BEGIN 2
  SAY ~Can not.~
  IF ~~ THEN REPLY ~Can too.~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Nuh-uh.~
  IF ~~ THEN REPLY ~Uh-huh.~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~My dad can breathe fire, and he has a big hammer.~
  IF ~~ THEN REPLY ~Yeah, well my dad can shoot lightning from his fingers and throw giants around.~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~So are you going to get rid of the monsters or not?~
  IF ~~ THEN REPLY ~Fear not, lad.  I'll take care of the monsters.~ EXIT
  IF ~~ THEN REPLY ~*sigh*  I can go kill the monsters... I guess.~ EXIT
  IF ~~ THEN REPLY ~Beshaba smiles on you, boy.  You'll be lucky to get out of this maze even if I happen to kill everything between you and the door.  Farewell.~ EXIT
  IF ~Global("LKingDead","GLOBAL",1) GlobalGT("SPRITE_IS_DEADLIZARDMAN","GLOBAL",24)~ THEN REPLY ~I already took care of all the monsters in the lizardman caves and everything between you and the exit.  You can leave anytime you want, Sheemish.~ DO ~SetGlobal("Sheemish_Escape","GLOBAL",1)~ GOTO 7
END

IF ~Global("Sheemish_Escape","GLOBAL",0)~ THEN BEGIN 6
  SAY ~Didja get rid of all the monsters yet?~
  IF ~~ THEN REPLY ~No, I haven't gotten rid of the monsters.~ EXIT
  IF ~Global("LKingDead","GLOBAL",1) GlobalGT("SPRITE_IS_DEADLIZARDMAN","GLOBAL",24)~ THEN REPLY ~Yes, I have.  You can leave anytime you want, Sheemish.~ DO ~SetGlobal("Sheemish_Escape","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~Yay!  Thanks.  Boy, my papa sure will be glad when I get home.~
  IF ~~ THEN REPLY ~Farewell, Sheemish.~ DO ~AddXPObject(Player1,12500) AddXPObject(Player2,12500) AddXPObject(Player3,12500) AddXPObject(Player4,12500) AddXPObject(Player5,12500) AddXPObject(Player6,12500) EscapeAreaMove("TT2103",188,163,0)~ UNSOLVED_JOURNAL ~Finding Sheemish, Conlan's son.

We freed Conlan's son, Sheemish from the depths of Dragon's Eye. We should probably return to Kuldahar to check on him to make sure he got home all right.~ EXIT
END

IF ~Global("Sheemish_Escape","GLOBAL",1) AreaCheck("TT2103")~ THEN BEGIN 8
  SAY ~Thanks again for saving me.  My papa said you could have this key to the chest in his shop.  He keeps a big hammer in there.  WHAM!  "How do you like that, Mister Giant?" "Raaarrr!  Not very much!"  Ha ha!  Get it?~
  IF ~~ THEN REPLY ~Yes, you're very funny.  Thanks for the key.~ DO ~GiveItem("KeyCon",Player1) SetGlobal("Sheemish_Escape","GLOBAL",2)~ SOLVED_JOURNAL ~Finding Sheemish, Conlan's son.

We freed Conlan's son, Sheemish from the depths of Dragon's Eye and returned to check on him to make sure he got home all right. He gave us a key to a chest in Conlan's house that contains some kind of enchanted hammer.~ EXIT
  IF ~~ THEN REPLY ~Sure.  Sure.  Thanks for the key, Sheemish.~ DO ~GiveItem("KeyCon",Player1) SetGlobal("Sheemish_Escape","GLOBAL",2)~ EXIT
  IF ~~ THEN REPLY ~Enough with the jokes, kid.  I didn't save you so I could listen to your yammering.  Just hand over the key and I'll be on my way.~ DO ~GiveItem("KeyCon",Player1) SetGlobal("Sheemish_Escape","GLOBAL",2)~ EXIT
END

IF ~Global("Sheemish_Escape","GLOBAL",2)~ THEN BEGIN 9
  SAY ~Someday, I'm going to make armor and weapons and horseshoes and spearheads and kettles and helmets and scythes and knives and mechanical dragons and spoons stuff like my papa, and it'll be great!  I'll put big razor things on all of the armor so it looks very scary!  "I'm a big warrior!  Watch out for me!"~
  IF ~~ THEN REPLY ~That's terrific, Sheemish.  Farewell.~ EXIT
END

IF ~Global("Sheemish_Escape","GLOBAL",1) AreaCheck("TT4002")~ THEN BEGIN 10
  SAY ~Thanks again for saving me.  My papa's going to be so happy when I get home!~
  IF ~~ THEN DO ~EscapeAreaMove("TT2103",188,163,0)~ EXIT
END