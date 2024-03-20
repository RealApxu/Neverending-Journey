BEGIN ~DTARNELM~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Go away.  Can't Marketh's goons pick on someone else? Give old Tarnelm a rest.~
  IF ~~ THEN REPLY ~Uh... what do you mean?  I wasn't going to pick on you.~ GOTO 1
  IF ~~ THEN REPLY ~Are you alright?  Your breathing sounds very shallow.~ GOTO 2
  IF ~~ THEN REPLY ~Nah.  I want to pick on *you.*~ GOTO 3
  IF ~~ THEN REPLY ~What is this place?~ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY ~All you outsiders do is work my people to death and steal the pride of Callarduran.  The only time you come down here is to have some fun kicking us around.  Why don't I just knock my own teeth out and save you the trouble?~
  IF ~~ THEN REPLY ~That sounds like a good idea.  I'd certainly be entertained.~ GOTO 3
  IF ~~ THEN REPLY ~No, seriously.  I wasn't going to pick on you.  Why would I do something like that?~ GOTO 2
  IF ~~ THEN REPLY ~What is this place?~ GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY ~That's nice.  Feign caring.  It must give you some sort of cruel delight to see someone cheer up right before you shove your stinking boot in their face.~
  IF ~~ THEN REPLY ~Yep, you got me.  I love kicking sick and feeble gnomes in the face.  I can't get enough of it!~ GOTO 3
  IF ~!Global("Tarnelm_Food","GLOBAL",2)~ THEN REPLY ~Come on.  I'm really concerned.  I didn't come here to hurt you.~ DO ~SetGlobal("Tarnelm_Food","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY ~What is this place?~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY ~What a surprise.  Why don't you just throw me into the Pit and get it over with?  Being eaten to death by beetles is a much more pleasant fate.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~It's an oubliette, genius.  This is where that deranged sadistic bastard Marketh throws svirfneblin when we're too weak to work in the mines or the refinery.  I used to work at the great forge before Maiden Ilmadia and her fire giants moved in to tear it apart.~
  IF ~!Global("Tarnelm_Food","GLOBAL",2)~ THEN REPLY ~Hey!  I didn't come down here to get insulted or treated like I'm someone's evil henchman.~ DO ~SetGlobal("Tarnelm_Food","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY ~It sounds like Marketh knows how to handle his business.  I like his style.~ GOTO 3
  IF ~~ THEN REPLY ~Who is Maiden Ilmadia?~ DO ~SetGlobal("Know_Ilmadia","GLOBAL",1)~ GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY ~Well, if you're such a kindly soul, why don't you get out of here and bring us some food?  My breathing isn't getting any better by choking on rock dust all the time.  While you're at it, why don't you kill the salamanders at the top of the chain elevator?~
  IF ~PartyHasItem("Potatoes")
!Global("Tarnelm_Food","GLOBAL",2)~ THEN REPLY ~Food?  I have some food with me right now.  Here you go.~ DO ~SetGlobal("Tarnelm_Food","GLOBAL",2)
TakePartyItem("potatoes")
AddXPObject(Player1,3500)
AddXPObject(Player2,3500)
AddXPObject(Player3,3500)
AddXPObject(Player4,3500)
AddXPObject(Player5,3500)
AddXPObject(Player6,3500)
EraseJournalEntry(%Lower Dorn's Deep.

Tarnelm, a grumpy gnome in the Oubliette, asked us to go get some food for him and his dying brothers.  He seems unlikely to trust us unless we do something nice for him.%)~ GOTO 9
  IF ~!PartyHasItem("Food")~ THEN REPLY ~Where can I find some food?~ UNSOLVED_JOURNAL ~Lower Dorn's Deep.

Tarnelm, a grumpy gnome in the Oubliette, asked us to go get some food for him and his dying brothers.  He seems unlikely to trust us unless we do something nice for him.~ GOTO 7
  IF ~~ THEN REPLY ~I'll see what I can do, Tarnelm.~ EXIT
  IF ~~ THEN REPLY ~Why are the salamanders here?~ UNSOLVED_JOURNAL ~Lower Dorn's Deep.

Tarnelm, a grumpy gnome in the Oubliette, asked us to go get some food for him and his dying brothers.  He seems unlikely to trust us unless we do something nice for him.~ GOTO 8
  IF ~~ THEN REPLY ~Heh.  Sorry, friend.  I don't have the time.  Farewell.~ UNSOLVED_JOURNAL ~Lower Dorn's Deep.

Tarnelm, a grumpy gnome in the Oubliette, asked us to go get some food for him and his dying brothers.  He seems unlikely to trust us unless we do something nice for him.~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~She's a crazy wench who serves our mysterious malevolent overlord.  I don't know much about her, save that she's an elf maiden and she's in charge of dismantling the great forge.  Apparently, our overlord wants to build a huge metal ship from the forge's plates.~
  IF ~!Global("Tarnelm_Food","GLOBAL",2)~ THEN REPLY ~It sounds like things are pretty bad down here.  Is there anything I can help you with?~ DO ~SetGlobal("Tarnelm_Food","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY ~Hmm.  Interesting.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~You're a smart one, aren't you?  Obviously the salamanders don't eat our food.  Why don't you try checking in the small palace off of Durdel Anatha?  Marketh lives there.  There should be some food there.  If you are especially brave, you could try checking the domes in the Artisan's District.  Ma... Malavon might...~
  IF ~!Global("Malavon_Dead","GLOBAL",1)~ THEN REPLY ~What's wrong?  What about Malavon?~ GOTO 10
  IF ~Global("Malavon_Dead","GLOBAL",1)~ THEN REPLY ~Malavon?  He's dead, friend.  You don't have to worry about him anymore.~ GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY ~How in the Nine Hells should I know?  Our priest back in... uh, our priest, Beorn, he told us that the dwarves used portals to the elemental plane of fire in order to power their forges.  Maybe the salamanders came through there.~
  IF ~PartyHasItem("Potatoes")
!Global("Tarnelm_Food","GLOBAL",2)~ THEN REPLY ~By the way, here's the food you wanted.~ DO ~SetGlobal("Tarnelm_Food","GLOBAL",2)
TakePartyItem("potatoes")
AddXPObject(Player1,3500)
AddXPObject(Player2,3500)
AddXPObject(Player3,3500)
AddXPObject(Player4,3500)
AddXPObject(Player5,3500)
AddXPObject(Player6,3500)
EraseJournalEntry(%Lower Dorn's Deep.

Tarnelm, a grumpy gnome in the Oubliette, asked us to go get some food for him and his dying brothers.  He seems unlikely to trust us unless we do something nice for him.%)~ GOTO 9
  IF ~!PartyHasItem("Food")~ THEN REPLY ~Where can I find some food?~ DO ~SetGlobal("Tarnelm_Food","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 9
  SAY ~Well, I'll be damned!  I never would have expected anyone to help us.  You don't seem half bad to me.  Perhaps you could help us with something else...~
  IF ~~ THEN REPLY ~Certainly.  Just tell me what you need and I'll see what I can do.~ GOTO 12
  IF ~~ THEN REPLY ~Sure.  I'd like to help you, but I'm kind of busy right now.  Farewell.~ GOTO 13
  IF ~~ THEN REPLY ~Nope.  I don't think so.  I have better things to do.~ GOTO 13
  IF ~~ THEN REPLY ~Maybe I could help you later.  I have to go right now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~What's wrong?!  You must not have been around here long if you don't know about Malavon.  That drow madman is raising an army of umber hulks to seek out my people.  With him on our backs and no food in our bellies, we're in dire trouble.  If you want to distinguish yourselves from the rest of the scum in Dorn's, go find us some food.~
  IF ~~ THEN REPLY ~I'll see what I can do, Tarnelm.~ DO ~SetGlobal("Tarnelm_Food","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY ~Tough luck, friend.~ GOTO 13
  IF ~~ THEN REPLY ~If I had to deal with workers as lazy as you, I'd probably hire some umber hulk thugs, too.~ GOTO 13
  IF ~~ THEN REPLY ~Sorry, but I have to go now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY ~What?  You got rid of *Malavon?*  Well, Callarduran be praised.  I never thought I'd live to see the day when that insane bastard got his due.  You seem like a decent fellow.  I'll show you how to get to a safe haven if you'll help my people.~
  IF ~~ THEN REPLY ~Of course I'll help you.  Just let me know what I need to do.~ DO ~SetGlobal("Tarnelm_Food","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY ~Maybe I could help you later.  I have to go right now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY ~My people are located a short distance from here in a camp.  The umber hulks are having trouble finding it for now, but they won't for long.  If you can make it there, you can seek shelter.  Of course, we'd appreciate it if you could defend us from the umber hulks.~
  IF ~~ THEN REPLY ~How do I get there?~ DO ~SetGlobal("Tarnel_Trap_Set","GLOBAL",1)~ JOURNAL ~Lower Dorn's Deep.

Tarnelm told us that a village of his kind was somewhere nearby, but that it might be attacked at any time by packs of roaming umber hulks.  He told us how to get to the camp.  Apparently, all we have to do is walk to the northeast corner of the Oubliette.  Umber hulks should come looking for us.  From their tunnels, we can follow a path of light to the camp.~ GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY ~If you're not gonna help us, to the Pit with you.  Let me die in peace.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY ~Go to the northeastern corner of the Pit.  There's a plateau there.  If you walk around there for a while, the hulks will eventually come looking for you.  I can feel them burrowing below us even now.  Once they get through, you can enter the twisting tunnel maze on the other side.  Use the glowing red gems to find your way to our camp.~
  IF ~~ THEN REPLY ~Why don't the umber hulks use the path, if it's so easy to follow?~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~Heh heh.  Well, you see, the umber hulks eyes can't detect red light very well, especially when they're burrowing.  They have strange, clear skin on their eyes that can protect them from debris when they rush around.  It's very difficult for them to detect the gem's particular tint of light.~
  IF ~~ THEN REPLY ~Hmm.  Interesting.  Thanks, Tarnelm.~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 16
  SAY ~Eh.  It's you again.  What can I do for you?~
  IF ~PartyHasItem("Potatoes")
!Global("Tarnelm_Food","GLOBAL",2)~ THEN REPLY ~I brought you some food from the palace.~ DO ~SetGlobal("Tarnelm_Food","GLOBAL",2)
TakePartyItem("potatoes")
AddXPObject(Player1,3500)
AddXPObject(Player2,3500)
AddXPObject(Player3,3500)
AddXPObject(Player4,3500)
AddXPObject(Player5,3500)
AddXPObject(Player6,3500)
EraseJournalEntry(%Lower Dorn's Deep.

Tarnelm, a grumpy gnome in the Oubliette, asked us to go get some food for him and his dying brothers.  He seems unlikely to trust us unless we do something nice for him.%)~ GOTO 9
  IF ~~ THEN REPLY ~What is this place?~ GOTO 4
  IF ~~ THEN REPLY ~Who's Maiden Ilmadia?~ DO ~SetGlobal("Know_Ilmadia","GLOBAL",1)~ GOTO 6
  IF ~Global("Tarnelm_Food","GLOBAL",2)
GlobalLT("TARNEL_TRAP_SET","GLOBAL",2)~ THEN REPLY ~You said that you needed help with something else before...~ GOTO 12
  IF ~~ THEN REPLY ~Nothing in particular.  Farewell.~ EXIT
END
