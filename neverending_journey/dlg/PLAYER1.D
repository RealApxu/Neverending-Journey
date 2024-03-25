APPEND PLAYER1

IF WEIGHT #0 ~!Global("VP_BackTo_Kuldahar","GLOBAL",0) Global("VP_NewEnd_Of_Part1","GLOBAL",1) GlobalGT("VP_Who_Is_Hrothgar","GLOBAL",1) Global("TrBack0602","GLOBAL",2) Global("VP_PlayerDialogFix","GLOBAL",0)~ THEN BEGIN NEJ62 // from:
  SAY ~So, once again we are destined to take the unknown road. Let us ready ourselves for what lies ahead.~ [mute]
  IF ~True()~ THEN GOTO NEJ63
  IF ~InParty("Dar")~ THEN GOTO NEJ64
//IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 1
  IF ~InParty("Erevain")~ THEN EXTERN ~EREVAINJ~ 3
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ Back0602
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ Back0602
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ Back0602
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ Back0602
END

IF ~~ THEN BEGIN NEJ63
  SAY ~Then let us enter the portal together. It has been a strange road to our freedom, but we are all safe and that is what matters.~
  IF ~!InParty("Sharteel")~ THEN DO ~SetGlobal("VP_NewEnd_Of_Part1","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutNJ2")~ EXIT
  IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ nearpor1
END

IF ~~ THEN BEGIN NEJ64
  SAY ~What of you Dar? Will you take the portal with us?~
  IF ~~ THEN EXTERN ~DARJ~ 1
END

IF WEIGHT #-1 ~Global("VP_SoW_Portal_Talk","GLOBAL",3)~ THEN BEGIN NEJ65
  SAY ~Just a nightmare... (*you mutter to yourself*)~ [mute]
  IF ~~ THEN DO ~SetGlobal("VP_SoW_Portal_Talk","GLOBAL",4) SetGlobal("VP_PlayerDialogFix","GLOBAL",1) EraseJournalEntry(%Dragon's Eye.

We met the "Lizard King" of Dragon's Eye.  He informed us that the upper caves of the volcano belonged to him.  He also indicated that he was brought to the caves by someone named Yxunomei.  Apparently, the lizard men do the bidding of Yxunomei to feed his people.  They abduct the villagers for food and for Yxunomei.%) EraseJournalEntry(%Dragon's Eye.

We encountered an undead creation today that was used as the "eyes and mouth" of a necromancer.  It attacked us after it had addressed us.%) EraseJournalEntry(%Dragon's Eye.

We ventured down to the fourth level of the Dragon's Eye volcano.  We found a priest of Eldath, the goddess of peace, there.  He told us that he and his students are part of an Eldathyn retreat in Dragon's Eye.  He offered us healing and a place to rest.%) EraseJournalEntry(%Kuldahar Pass.

We met a goblin marshal in Kuldahar Pass who was going mad with pain.  He told us that his head hurt, that something was whispering things to him.  He didn't understand what was wrong with him, but he felt some instinctive urge to "answer" the voice in his head.%)~ GOTO NEJ66
END

IF ~~ THEN BEGIN NEJ66
  SAY ~(*But for some reason you still feel a pressing need to see for yourself that the world outside your room hasn't changed.*)~
  IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~Global("VP_Hrothgar_Interjects","GLOBAL",1) ~ THEN BEGIN NEJ67
  SAY ~(*You look around and are relieved to see that all of your companions are safe.*)~ [mute]
  IF ~True()~ THEN GOTO NEJ68
  IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ comebck1
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 5
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ246
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ534
  IF ~InParty("Imoen")~ THEN GOTO NEJ69
  IF ~InParty("Imoen2")~ THEN GOTO NEJ69
  IF ~InParty("Hrothgar")~ THEN EXTERN ~HROTHJ~ 19
END

IF ~~ THEN BEGIN NEJ68
  SAY ~Then let us continue, and make our way through this damned place.~
  IF ~~ THEN DO ~SetGlobal("VP_Hrothgar_Interjects","GLOBAL",2) ~ EXIT
END

IF ~~ THEN BEGIN NEJ69
  SAY ~(*Your eyes fall on Imoen.*) Imoen are you alright? You look distressed.~
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ74
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX4
END

IF WEIGHT #-3 ~Global("VP_Hrothgar_Tilorn","GLOBAL",1)~ THEN BEGIN NEJ70
  SAY ~(*As you start to walk away from the destruction that is in front of you, still reeling from the unexpected loss of Imoen, Hrothgar stops and looks about, a look of anxious bewilderment on his face.*)~ [mute]
  IF ~~ THEN EXTERN ~HROTHJ~ 22
END

IF ~~ THEN BEGIN NEJ71
  SAY ~(*You look at Hrothgar with a look of total disbelief on your face that he has no idea of what is to be done now.*)~
  IF ~~ THEN EXTERN ~HROTHJ~ 25
END

IF ~~ THEN BEGIN NEJ73
  SAY ~Farewell, Dar. It has been a strange road to our freedom, but we are all safe and that is what matters.~
  IF ~!InParty("Sharteel")~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutNJ4")~ EXIT
  IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ nearpor2
END

IF ~~ THEN BEGIN NEJ74
  SAY ~(*You look into the face or Tilorn as Hrothgar makes the introduction and a memory stirs in your mind but you are unable to grasp it before it slips away.*)~
  IF ~~ THEN REPLY ~So, you are Tilorn, the one whom Arundel spoke of briefly. Hrothgar did not say that you and he were friends, but then he is being annoyingly evasive on many things. I do not believe that we have met so how is it that you know my name? Although, strangely for a second there, I thought that your face was known to me.~ EXTERN ~TILORN~ 3
  IF ~~ THEN REPLY ~Tilorn is it. The same Tilorn that visited Arundel in Kuldahar and now, also a friend of Hrothgar's. Tell me Tilorn, 'friend of Hrothgar', how did you come to be in Kuldahar ahead of us and now here before us also? You seem to know my name before Hrothgar made mention of it and yet, I do not know you that I am sure. Although, for a moment your face was familiar to me but now it is gone. Why should that be?~  EXTERN ~TILORN~ 3
  IF ~~ THEN REPLY ~Ah, Tilorn! The mystery visitor to the old druid. Hrothgar omitted to say that you and he were friends, but then Hrothgar has omitted to tell me many things! Are you going to say how it is that you know my name Tilorn? You look somewhat familiar to me but for the moment I cannot place you, but I will, you can be assured of that!~ EXTERN ~TILORN~ 3
  IF ~~ THEN REPLY ~So, you are a friend of Hrothgar, Tilorn. Strange that he did not admit to it when first I asked him of you. What reason has he to hide this from me do you think? Even stranger, Tilorn, why do I feel that I should know you?~ EXTERN ~TILORN~ 3
END

IF ~~ THEN BEGIN NEJ75
  SAY ~(*You look at Tilorn and the look he gives you back makes you forget what it was that you were about to say.*)~
  IF ~~ THEN EXTERN ~TILORN~ 7
END

IF WEIGHT #-5 ~Global("VP_Touch_Statue","GLOBAL",0) Global("VP_InfoSwitch","GLOBAL",0) Global("VP_InHalruaa","GLOBAL",1)~ THEN BEGIN NEJ76
  SAY ~(*The hundreds of chips of translucent green glass which make up this stained-glass window don't appear to be held together by anything, but rather remain free-floating and mysteriously suspended within the iron frame's boundaries. The shards ripple and move in slow waves, causing bizarre patterns to fluctuate across the window's surface as various portions of it refract the galleria's light in different directions. A small placard beside the window reads 'Arcadian Stained-Glass Window.'*)~ [mute]
  IF ~~ THEN GOTO NEJ85
END

IF ~Global("VP_Touch_Statue","GLOBAL",1) Global("VP_InfoSwitch","GLOBAL",0)~ THEN BEGIN NEJ77
  SAY ~(*You reach out to touch the glass shards once again, but succeed only in bruising your knuckles; the glass may as well be sheet-iron.*)~ [mute]
  IF ~~ THEN DO ~SetGlobal("VP_Touch_Statue","GLOBAL",2)~ EXIT
END

IF ~Global("VP_Touch_Statue","GLOBAL",2) Global("VP_InfoSwitch","GLOBAL",0)~ THEN BEGIN NEJ78
  SAY ~(*You try to touch the glass shards for the third time, and... you smear the foul-smelling ointment in the air. You turn and see behind you there is a strange shimmering around the statue, and you watch as the statue takes an intake of breath and its eyes fill with a blasing, vengeful madness.*)~ [mute]
  IF ~~ THEN REPLY ~Greetings...~ GOTO NEJ79
  IF ~~ THEN REPLY ~*Cover your ears.*~ GOTO NEJ79
  IF ~~ THEN REPLY ~*Run like mad.*~ GOTO NEJ79
END

IF ~~ THEN BEGIN NEJ79
  SAY ~(*Before you can do a thing, a blasing torrent of words flies from the sorcerer's lips. As he speaks, you feel a agonising sensation, like a sudden wave of raging heat, pour over you and settle into your skin like a blistering wound.*)~
  IF ~~ THEN GOTO NEJ80
END

IF ~~ THEN BEGIN NEJ80
  SAY ~(*Blindness strikes you as your eyes burst, running from their sockets like shattered eggs... you hear someone screaming, and realise it is you...*)~
  IF ~~ THEN REPLY ~*Wait for the horror to end.*~ GOTO NEJ81
  IF ~~ THEN REPLY ~*Drop to your knees in shock.*~ DO ~SetGlobal("VP_Touch_Statue","GLOBAL",4) CloseDoor("STATUE") ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT01")~ EXIT
END

IF ~~ THEN BEGIN NEJ81
  SAY ~Die horribly, a victim of Gangroighydon's Awful Curse.~
  IF ~~ THEN DO ~CloseDoor("STATUE") Kill(Player1) Kill(Player2) Kill(Player3) Kill(Player4) Kill(Player5) Kill(Player6)~ EXIT
END

IF WEIGHT #-6 ~Global("VP_Touch_Statue","GLOBAL",4) Global("VP_InfoSwitch","GLOBAL",0)~ THEN BEGIN NEJ82
  SAY ~(*You don't know how long you have been unconscious, but after you recover from that terrible shock you notice that the 'statue' is simply gone, presumably having walked off without leaving so much as a note of apology.*)~ [mute]
  IF ~~ THEN DO ~SetGlobal("VP_Touch_Statue","GLOBAL",5) ~ EXIT
END

IF ~Global("VP_Touch_Statue","GLOBAL",5) Global("VP_InfoSwitch","GLOBAL",0) !Global("VP_InHalruaa","GLOBAL",0)~ THEN BEGIN NEJ83
  SAY ~The portal is activated.~ [mute]
  IF ~~ THEN REPLY ~*Go through the portal.*~ GOTO NEJ84
  IF ~~ THEN REPLY ~*Leave.*~ EXIT
END

IF ~~ THEN BEGIN NEJ84
  SAY ~(*You are violently teleport to somewhere outside this room.*)~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT02")~ EXIT
END

IF ~~ THEN BEGIN NEJ85
  SAY ~(*You reach out to touch the undulating glass shards, but find you cannot do so... your hand stops just short of the surface of the glass.*)~
  IF ~~ THEN DO ~SetGlobal("VP_Touch_Statue","GLOBAL",1)~ EXIT
END

IF WEIGHT #-7 ~GlobalLT("VP_Touch_Statue","GLOBAL",4) Global("VP_InfoSwitch","GLOBAL",1)~ THEN BEGIN NEJ86
  SAY ~(*The statue looks like it is about to make some angry proclamation. The sculptor has captured the essence of fury magnificently; the chiseled tension lines around the neck and forehead alone must have taken many long months to get correct. Fine cracks run over the entire statue, and there is a plaque attached to its base.*)~ [mute]
  IF ~~ THEN GOTO NEJ87
END

IF ~~ THEN BEGIN NEJ87
  SAY ~(*The plaque reads: 'This statue is believed to be the final fate of the Etherserian sorcerer Gangroighydon. Attacked by a conclave of rival sorcerers at the height of his dream madness, he was imprisoned with a spell that turned his flesh into stone. Gangroighydon is said to have been frozen with a final, awful curse still upon his lips, a curse so terrible that it was *never* meant to be spoken by the lips of a living man.'*)~
  IF ~~ THEN EXIT
END

IF WEIGHT #-8 ~GlobalGT("VP_Touch_Statue","GLOBAL",3) Global("VP_InfoSwitch","GLOBAL",1)~ THEN BEGIN NEJ88
  SAY ~(*The 'statue' - in truth the once-petrified sorcerer Gangroighydon - has gone leaving behind only the plaque beneath its pedestal.*)~ [mute]
  IF ~~ THEN EXIT
END

IF WEIGHT #-9 ~Global("VP_Hrothgar_Lavallin","GLOBAL",3)~ THEN BEGIN NEJ89
  SAY ~(*A short time elapses and a portal opens behind you. The portal closes. Although you see nothing you sense that someone is moving around in the room as if looking for something. Suddenly an item is taken from one of the shelves and the portal opens again. It remains open briefly and then closes... A few moments later Lavallin returns.*)~ [mute]
  IF ~~ THEN DO ~SetGlobal("VP_Hrothgar_Lavallin","GLOBAL",4) SetGlobal("VP_Lavallins_Plot","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT04")~ EXIT
END


IF WEIGHT #-10 ~Global("VP_Lavallins_Plot","GLOBAL",7)~ THEN BEGIN NEJ90
  SAY ~(*The portal opens after a short wait. You immediately go through the portal and find yourself in sewers. You try to catch you breath but... the sewers suddenly disappear and a moment later you find yourself in an underground warren made up of freshly dug tunnels lit by light gems embedded along the walls, and the air is surprisingly fresh.*)~ [mute]
  IF ~~ THEN DO ~SetGlobal("VP_Lavallins_Plot","GLOBAL",8)~ EXIT
END

//IF WEIGHT #-11 ~Global("StartIWD","GLOBAL",2)~ THEN BEGIN NEJ91
//  SAY ~~
//  IF ~~ THEN DO ~SetGlobal("StartIWD","GLOBAL",3)~ EXTERN ~HROTHJ~ 112
//END

IF WEIGHT #-11 ~Global("VP_Severed_Hand","GLOBAL",1)~ THEN BEGIN NEJ92
  SAY ~What the hell is going on here?!~ [mute]
  IF ~True()~ THEN DO ~SetGlobal("VP_Severed_Hand","GLOBAL",2)~ EXIT
  IF ~InParty("Hrothgar")~ THEN EXTERN ~HROTHJ~ 194
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ313
END

IF WEIGHT #-12 ~Global("VP_Astrolabe_Talks","GLOBAL",3)~ THEN BEGIN NEJ93
  SAY ~(*As Larrel turns away to speak with Geralith, Hrothgar walks over and takes a look at the astrolabe. He stands running his hands over the machine but with his back to the group. When you look towards him, it is as if he feels your eyes turn in his direction and he drops his hands deliberately...*)~ [mute]
  IF ~~ THEN GOTO NEJ94
END

IF ~~ THEN BEGIN NEJ94
  SAY ~(*He  continues to peer closer at the machine but without touching it further. Then, amid the chatter of the group he walks back and stands quietly.*)~
  IF ~True()~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutscene("VPCutH07")~ EXIT
  IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 42
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ317
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ615
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ176
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX92
END

//Accalia is not in Party --> VP_Mov01 --> Back to the Future!
IF ~~ THEN BEGIN NEJ95
  SAY ~(*Once again Hrothgar removes the black box from his pocket and pointing it at the Astrolabe...*)~
//IF ~~ THEN REPLY ~Wait, Hrothgar, don't do this! On the second thought, I've decided to go to Dorn's Deep right now. Larrel, could you take us to Dorn's Deep?~ EXTERN ~DLARREL~ 53
  IF ~~ THEN REPLY ~(*You close your eyes, and ...*)~ DO ~SetGlobal("VP_In_IWD_Part1","GLOBAL",0) SetGlobal("TrBack0602","GLOBAL",2)~ EXTERN ~HROTHJ~ 245
END

//Accalia is in Party, and she leaves --> VPCutNJ5
IF ~~ THEN BEGIN NEJ96
  SAY ~(*Once again Hrothgar removes the black box from his pocket and pointing it at the Astrolabe...*)~
//IF ~~ THEN REPLY ~Wait, Hrothgar, don't do this! On the second thought, I've decided to go to Dorn's Deep right now. Larrel, could you take us to Dorn's Deep?~ EXTERN ~DLARREL~ 53
  IF ~~ THEN REPLY ~(*You close your eyes, and ...*)~ DO ~SetGlobal("VP_In_IWD_Part1","GLOBAL",0) SetGlobal("TrBack0602","GLOBAL",2)~ EXTERN ~HROTHJ~ 268
END

//Accalia is in Party, and both she and Dar leaves --> VPCutNJ6
IF ~~ THEN BEGIN NEJ98
  SAY ~(*Once again Hrothgar removes the black box from his pocket and pointing it at the Astrolabe...*)~
  IF ~~ THEN REPLY ~(*You close your eyes, and ...*)~ DO ~SetGlobal("VP_In_IWD_Part1","GLOBAL",0) SetGlobal("TrBack0602","GLOBAL",2)~ EXTERN ~HROTHJ~ 269
END

//Accalia is not in Party, and Dar leaves --> VPCutNJ7
IF ~~ THEN BEGIN NEJ99
  SAY ~(*Once again Hrothgar removes the black box from his pocket and pointing it at the Astrolabe...*)~
  IF ~~ THEN REPLY ~(*You close your eyes, and ...*)~ DO ~SetGlobal("VP_In_IWD_Part1","GLOBAL",0) SetGlobal("TrBack0602","GLOBAL",2)~ EXTERN ~HROTHJ~ 270
END

//States NeJ100-104 are omitted

IF WEIGHT #-16 ~Global("VP_Know_Tilorn","GLOBAL",1)~ THEN BEGIN NEJ105
  SAY ~(*You see a man watching you from a distance... Tilorn?*)~ [mute]
  IF ~~ THEN DO ~SetGlobal("VP_Know_Tilorn","GLOBAL",2)~ EXTERN ~TILORN~ 0
END

IF WEIGHT #-17 ~Global("VP_Rt_Mine_Visited","GLOBAL",1)~ THEN BEGIN NEJ106
  SAY ~(*As you enter the area you cannot help but notice a noxious taint to the air. You suspect that these vapours are the cause of the pools taint.*)~ [mute]
  IF ~~ THEN DO ~SetGlobal("VP_Rt_Mine_Visited","GLOBAL",2)~ EXIT
END

END