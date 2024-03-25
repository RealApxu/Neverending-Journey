BEGIN ~MAIA~

IF ~  NumberOfTimesTalkedTo(0) ~ THEN BEGIN 0
  SAY ~Thank the gods! Well met strangers, I am Maia. We were sent here to rid this area of its foul inhabitants.~
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~We were unfortunately over whelmed by them and sought refuge in this cave. How did you come to be here?~
  IF ~~ THEN REPLY ~Well met Maia. I am <CHARNAME>. I take it the poor soul we encountered outside is also one of you? He thought we had been sent by some druid and was babbling about a game and a gem that he hoped you had. What was he trying to tell us Maia?~ GOTO 2
  IF ~~ THEN REPLY ~I am <CHARNAME>. We were given little choice in coming here and arrived by magical means. You and that poor deranged soul outside this cave are all that our search of the area has uncovered, there does not appear to be any exits.You came here of your own free will, but appear to be unable to leave the same way, what goes on here Maia?~ GOTO 2
  IF ~~ THEN REPLY ~I am <CHARNAME>. From what I understand from that poor wretch outside, you are also trapped here. He mentioned a druid and spoke as if this was some game to him. You may be content to hole up here and die of hunger and thirst, I am not! Tell me where this druid hides himself and I will deal with him?~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~I will tell you what I know <CHARNAME>. Craile, the man you spoke to outside, is... was our leader.~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~He stands at the entrance thinking to guard us from the wolfweres whilst we look for the gem... but I am getting ahead of myself, let me start again.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~This area is the domain of an insane druid, Shendru by name, he is studying the hunting techniques of the wolfwere, to him they are the supreme force of nature and he is fascinated by all aspects of their viciousness.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~As I have said, we were sent here to rid the area of their foul presence and it was not until we arrived that we discovered the truth of the matter.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~We tried fighting our way out but they are too numerous and overpowered us quickly. No matter however many we managed to kill, more would appear to take their place.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~They hunt only at night, but that is also the only time the druid opens the exits from this place.~
  IF ~~ THEN REPLY ~And this druid, when does he put in an appearance to open these exits?~ GOTO 8
  IF ~~ THEN REPLY ~So the only hope of escape is at night when these creatures hunt, and the druid can then observe his pets yes?~ GOTO 8
  IF ~~ THEN REPLY ~You mentioned a gem that you are seeking, Craile was also excited at the prospect that you had found it, why did he attach so much importance to it?~ GOTO 11
  IF ~~ THEN REPLY ~So you ran in here like frightened children, and hoped for what, a miracle?~ GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY ~As you are newcomers, Shendru will wait until nightfall and then make an appearance to offer you a proposition, a game he calls it.~
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY ~It is no more than a contest in survival of the fittest, in his sick mind he sees it as a game, a sport.~
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY ~Once he has said his piece he will depart and that will be the last you see of him, or so it has been with us.~
  IF ~~ THEN REPLY ~A contest you say, and what does this contest involve?~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~This druid�s idea of fun is to open the exits and give you the chance to fight your way through his pets, whilst he observes how you try to outwit the might of the wolfweres.~
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY ~There are too many to fight but there is a way, Shendru mentioned a gem of light hidden deep within the earth that would show the way if we had heart enough to fight the guardian for it.~
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY ~This is the only cave we have not explored completely so I am certain it is here somewhere. We were resting for a short while before embarking on the search for this gem ourselves when you arrived.~
  IF ~~ THEN REPLY ~Some choice! Looks like I have to contend with werewolves whether I play this druid�s game or not. I guess I may as well wait around and have it out with him when puts in an appearance.~ GOTO 14
  IF ~~ THEN REPLY ~I will not be a pawn for anyone�s amusement, this druid has chosen the wrong person to play games with this time!~ GOTO 14
  IF ~~ THEN REPLY ~You can hang about if you wish, but as soon as night falls I am out of here. I have fought wolfweres and werewolves before and I am not afraid to do so again. If this Shendru gets in my way then I will fight him as well!~ GOTO 14
  IF ~~ THEN REPLY ~You say the druid himself spoke of this light gem, can you be sure it was not part of his insane game? Maybe he is sadistic enough to give you hope where there is non?~ GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY ~If Shendru had been that easy to deal with we could have taken him ourselves, but he does not hang around long enough for you to take action against him, as you will see soon enough for yourself.~
  IF ~~ THEN DO ~SetGlobal("VP_Melora_Quest","GLOBAL",5) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutM05") ~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY ~I am as sure as I can be that it is here. We are going to have a battle on our hands whichever path we take and we barely survived trying to make a run for the exits.~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~We have to try for the gem, as I see it, that is our only hope.~
  IF ~~ THEN DO ~SetGlobal("VP_Melora_Quest","GLOBAL",5) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutM05") ~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY ~He is quite insane as you can see <CHARNAME>. You will stand more chance of escaping here alive if you look for the light gem, but if you wish to try fighting your way through I wish you luck.~
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY ~We will rest for a while longer and then make a search of this cave for some indication of a way to reach the gem for ourselves.~
  IF ~~ THEN REPLY ~I wish you luck in your search Maia. We will look for an exit and deal with whatever crosses our path along the way.~ GOTO 19
  IF ~~ THEN REPLY ~We will search for this gem that you speak of Maia and then on our return, perhaps we can all leave safely.~ GOTO 19
  IF ~~ THEN REPLY ~If as you say this gem is the only safe way to go then I had best make a start searching for it before that madman closes the area again.~ GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY ~Before you make your escape from this area, could I please beg your help in ridding this place of Shendru?~
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY ~We cannot allow him to continue to blight this land with his insanity otherwise this place is a danger to all who are unfortunate enough to find their way here.~
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY ~Shendru should not be left to carry on his sadistic practises for his own amusement.~
  IF ~~ THEN REPLY ~A great deal of damage has been done to this area and it is time for it to end, but first a way of escape must be secured for us all and then it will be time to deal with this Shendru.~ GOTO 22
  IF ~~ THEN REPLY ~I shall take care of this druid, you can be assured of that. He and his pets are all that stand between me and pay back to a certain bounty hunter!~ GOTO 22
  IF ~~ THEN REPLY ~This druid is not my concern. My argument is with the bastard who left me here in the first place! If you want Shendru stopped then that is something you will have to take care of yourselves.~ GOTO 23
END

IF ~~ THEN BEGIN 22
  SAY ~I shall pray for your success <CHARNAME>. Farewell.~
  IF ~~ THEN DO ~SetGlobal("VP_Melora_Quest","GLOBAL",7) ~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY ~Then take care of him we shall, even at the cost of all our lives. Such evil cannot be permitted to continue. Farewell <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("VP_Melora_Quest","GLOBAL",7) ~ EXIT
END

IF ~  GlobalGT("VP_Melora_Quest","GLOBAL",6) GlobalLT("VP_Melora_Quest","GLOBAL",9) !PartyHasItem("lightgem") OR(2) !Global("SPRITE_IS_DEADWwolfM","GLOBAL",0) GlobalGT("VP_First_Visit","MYAREA",1) ~ THEN BEGIN 24
  SAY ~I see you were no more successful than we were <CHARNAME>. We were about to embark on a search for the light gem. Some of our wounds are still far from healed but with you gone the gem was our only hope.~
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY ~You are still in much better shape than we <CHARNAME>, so if you wish to search for the gem, you would stand a much better chance of retrieving it and returning alive than we.~
  IF ~  !Global("SPRITE_IS_DEADWwolfM","GLOBAL",0) ~ THEN REPLY ~It was insane Maia! I am no coward but I have never seen so many of the beasts. It was as though for every one we killed two more appeared to take its place! Where does this druid keep so many hidden? Indeed the gem is now our only hope, we will begin a search immediately.~ GOTO 26
  IF ~  !Global("SPRITE_IS_DEADWwolfM","GLOBAL",0) ~ THEN REPLY ~It is impossible, we were overwhelmed and I could swear I heard the mocking laughter of the druid himself with every beast we killed! If this gem exists then by the gods we shall find it and this insanity stops now!~ GOTO 26
  IF ~  Global("SPRITE_IS_DEADWwolfM","GLOBAL",0) ~ THEN REPLY ~Can you watch over us while we rest?~ GOTO 34
END

IF ~~ THEN BEGIN 26
  SAY ~We shall remain here and pray that you return safely with the gem <CHARNAME>. Be assured that nothing will get past us to hinder you in your search. Come, rest a while for now, my brave friends.~
  IF ~~ THEN DO ~RestParty() ~ EXIT
END

IF ~  Global("VP_EvilAct","GLOBAL",1) ~ THEN BEGIN 27
  SAY ~You return <CHARNAME>! The gods be prais... by all that is holy... what have you... no... aaaargh...~
  IF ~~ THEN DO ~SetGlobal("VP_EvilAct","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutM08") ~ EXIT
END

IF ~  GlobalGT("VP_Melora_Quest","GLOBAL",6) GlobalLT("VP_Melora_Quest","GLOBAL",9) PartyHasItem("lightgem") ~ THEN BEGIN 28
  SAY ~You return <CHARNAME>! The gods be praised! Do you have the gem? Please tell me that it does exist and that you have it?~
  IF ~~ THEN REPLY ~I do and I am out of here before that druid closes the exits. You can follow or stay, it is up to you.~ GOTO 29
  IF ~~ THEN REPLY ~I have it but I intend finding the druid before I leave here. It is time to play the last scene in this game.~ GOTO 29
  IF ~~ THEN REPLY ~I do, but I believe it would be safer for you to remain here until I have dealt with Shendru. If I manage to defeat him the exits should stay open, you will be able to make your escape in the safety of the day light.~ GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY ~Shendru is not going to let you go easily, I fear you will have to face him whether you wish to or not.~
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY ~We will make for the exits when the morning comes, if the exits are open we will know that you are safe.~
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY ~However fate chooses to end this, I want to thank you for all that you have done <CHARNAME>. May the gods walk with you this night and keep you safe. Farewell.~
  IF ~~ THEN DO ~SetGlobal("VP_Melora_Quest","GLOBAL",9) ~ EXIT
END

IF ~  Global("VP_Melora_Quest","GLOBAL",9) ~ THEN BEGIN 32
  SAY ~Come, rest a while for now, my brave friends.~
  IF ~~ THEN DO ~RestParty() ~ EXIT
END

IF ~  GlobalGT("VP_Melora_Quest","GLOBAL",6) GlobalLT("VP_Melora_Quest","GLOBAL",9) !PartyHasItem("lightgem") Global("SPRITE_IS_DEADWwolfM","GLOBAL",0) GlobalLT("VP_First_Visit","MYAREA",2) ~ THEN BEGIN 33
  SAY ~You return <CHARNAME>! Do you want to rest?~
  IF ~~ THEN REPLY ~Thank you, Maia.~ GOTO 34
  IF ~~ THEN REPLY ~Thank you, Maia, but we need to leave.~ GOTO 35
END

IF ~~ THEN BEGIN 34
  SAY ~Come, rest a while for now, my brave friends.~
  IF ~~ THEN DO ~RestParty() ~ EXIT
END

IF ~~ THEN BEGIN 35
  SAY ~I shall pray for your success <CHARNAME>. Farewell.~
  IF ~~ THEN EXIT
END