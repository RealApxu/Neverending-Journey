BEGIN ~RHEZON~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Rhezon1
  SAY ~Yes, and what is it you want from Rhezon the sorcerer?  Before you say anything let me tell you that I am all out of love potions.~
  = ~There appears to be something in the air of late, the whole population of Trademeet are wanting love potions and please, I do not turn love rivals into toads either.~
  = ~If it's either of those things that you have come about then the exit is through the same door that you have just come through.~
  IF ~~ THEN EXTERN ~TAFFICJ~ Taffic1
END

IF ~~ THEN BEGIN Rhezon2
  SAY ~I said I do not transform suitors into toads and that means I don't transform anyone into any other creature either. Now what was that name you said, Thalantyr?~
  = ~Thalantyr... yes I remember the name vaguely, he was I believe a friend of Aldruis, my old mentor. I only met the man once and that was when I was still apprenticed to Aldruis. Now why would he be sending you to me?~
  IF ~~ THEN EXTERN ~TAFFICJ~ Taffic2
END

IF ~~ THEN BEGIN Rhezon3
  SAY ~You believe in coming straight to the point don't you gnome, in which case I will do you the same courtesy. Aldrius did indeed impart the secret to me, but the spell requires a component that is rare and very difficult to come by.~
  = ~One that I have never managed to acquire, I don't have the same resources my mentor had, so I am not really in a position to help you at the moment.~
  IF ~~ THEN EXTERN ~TAFFICJ~ Taffic3
END

IF ~~ THEN BEGIN Rhezon4
  SAY ~Oh ho my impatient friend! You haven't yet heard what the component is yet, at least let me finish before committing yourself.~
  IF ~~ THEN EXTERN ~TAFFICJ~ Taffic4
END

IF ~~ THEN BEGIN Rhezon5
  SAY ~(*Hm, such arrogance I have never seen in one so small*). You'll understand the problem when I say the spell requires the blood of one of the demons of The Abyss itself... a Balor.~
  = ~Unfortunately Balors are not in the habit of visiting this plane too often and those that do aren't too keen on giving up their blood... in fact they prefer to take ours.~
  IF ~PartyHasItem("BalBlood")~ THEN EXTERN ~TAFFICJ~ TafficN1
  IF ~!PartyHasItem("BalBlood")~ THEN EXTERN ~TAFFICJ~ Taffic5
END

IF ~~ THEN BEGIN Rhezon6
  SAY ~I believe you just might my impetuous friend... if determination has anything to do with it, I believe you might just pull this off. I will in the meantime be preparing the other components whilst I await your return.~
  IF ~~ THEN EXTERN ~TAFFICJ~ Taffic71
END

IF ~~ THEN BEGIN Rhezon61
  SAY ~You have... Let me look closer for if it is other than Balor's blood the consequences will be fatal... Ah yes excellent, it is indeed demon ichor, a very potent and rare component that only few will venture to obtain.~
  = ~As many that have tried, have also failed ... I am fortunate that you, my little forest gnome, should come my way carrying the very thing that I have searched for.~
  IF ~~ THEN DO ~TakePartyItem("BalBlood") SetGlobal("VP_TafficQuest","GLOBAL",5)~ EXTERN ~TAFFICJ~ Taffic30
END

IF ~~ THEN BEGIN Rhezon40
  SAY ~(*Laughs*) Ha! What a foolish and vain creature you are gnome. You are what you are, neither I nor any person I know can change a being's race.~
  = ~See how easily you were duped into getting this component for me, how could you ever be anything else other than the stupid gnome that you are?~
  IF ~~ THEN EXTERN ~TAFFICJ~ Taffic40
END

IF ~~ THEN BEGIN Rhezon50
  SAY ~(*Laughs even louder*) Ha! You really are the most stupid creature I have met gnome. Apart from Thalantyr of course ... but I suppose he was young and impressionable back then.~
  = ~I can not believe that to this day he still believes Aldruis performed the miracle of changing a dwarf to an elf. It was purely illusionary magic my gullible gnome, done to impress an equally gullible conjurer.~
  = ~The minute I set eyes on you I could see I could use your obsession to my advantage. Your desire to become what you can never be overshadows any sense you once had.~
  = ~It was simple enough to convince you that the balor ichor was a necessary component, and your vanity made sure you would not fail.~
  = ~Any intelligent being would have seen my request for what it was, a ploy to acquire a rare component. Now, begone gnome and learn from what has transpired this day.~
  IF ~~ THEN EXTERN ~TAFFICJ~ Taffic50
END

IF ~!NumTimesTalkedTo(0) !Global("VP_TafficQuest","GLOBAL",17) !Global("VP_TafficQuest","GLOBAL",23) InParty("Taffic") OR(2) PartyHasItem("BalBlood") Global("VP_TafficQuest","GLOBAL",11)~ THEN BEGIN blood1
  SAY ~Well, if it isn't the little gnome with big ambitions! Welcome back my little friend.~
  IF ~~ THEN EXTERN ~TAFFICJ~ blood1
END

IF ~~ THEN BEGIN blood2
  SAY ~Then I take it you have brought the necessary component back with you?~
  IF ~~ THEN EXTERN ~TAFFICJ~ blood2
END

IF ~~ THEN BEGIN blood3
  SAY ~Excellent! Demon ichor, a very potent and rare component that only few will venture to obtain. As many that have tried, have also failed. You have done well my little forest gnome.~
  IF ~~ THEN DO ~TakePartyItem("BalBlood")~ EXTERN ~TAFFICJ~ blood3
END

IF ~~ THEN BEGIN blood4
  SAY ~So, it appears our gnome was duped into believing he had found allies to back in him in his insane notions of greatness. Destiny was never on his side, only in his mind.~
  IF ~~ THEN DO ~SetGlobal("VP_TafficQuest","GLOBAL",7) AddXPObject(Player1,18500) AddXPObject(Player2,18500) AddXPObject(Player3,18500) AddXPObject(Player4,18500) AddXPObject(Player5,18500) AddXPObject(Player6,18500) ActionOverride("Taffic",ChangeAIScript("",DEFAULT)) ActionOverride("Taffic",SetLeavePartyDialogFile()) ActionOverride("Taffic",SetGlobal("KickedOut","LOCALS",1)) ActionOverride("Taffic",LeaveParty()) ActionOverride("Taffic",EscapeArea()) EscapeArea()~ EXIT
END

IF ~Global("VP_TafficQuest","GLOBAL",17)~ THEN BEGIN taffich1
  SAY ~Is that you my little gnome? You understand of course that I have to ask, after all you Umberhulks all look alike to me!~
  IF ~~ THEN DO ~SetGlobal("VP_TafficQuest","GLOBAL",20)~ EXTERN ~TAFFICJ~ taffich1
END

IF ~~ THEN BEGIN taffich2
  SAY ~What, after all I did for you, gnome, and you are not enjoying your newly found *greatness*? You cut me deeply Taffic.~
  IF ~~ THEN REPLY ~Enough wizard! You have taunted him long enough, now what does it take to release him?~ GOTO taffich3
  IF ~~ THEN REPLY ~Leave him be wizard, quit this cruel taunting before I do some taunting of my own!~ GOTO taffich3
END

IF ~~ THEN BEGIN taffich3
  SAY ~Taunt him, now what possible reason do I have to taunt him? It was he that came to me begging to be made greater than he was.~
  = ~"I want a body that will cause all who look upon me to lose their minds", was that not your words, gnome? Now come, you have to agree, I have done as he asked.~
  IF ~~ THEN REPLY ~You twisted his words to suit your own perverted humour. What is it going to take to undo what you have done?~ GOTO taffich4
  IF ~~ THEN REPLY ~You have had your fun, now end this cruel jest.~ GOTO taffich4
  IF ~~ THEN REPLY ~He may be an arrogant son of a bitch, but he does not deserve this, end this travesty or he will be having the last laugh... plus your head!~ GOTO taffich6
END

IF ~~ THEN BEGIN taffich4
  SAY ~I could not resist having some fun with the little fool. Wherever did he get the idea that it is possible to change that which one is born into?~
  = ~I could not give him his wish so I thought to give him the next best thing... the body of a creature that would cause the reaction he wished for.~
  = ~To be fair I did warn him to be careful what he wished, for it might come true.~
  = ~However, I tire of the prank and that was all I intended it to be. You pay me 1000 gp and I will return him to you.~
  IF ~~ THEN REPLY ~1000 gold, I would prefer a straight swop, say your head for the gnome to be back in his body.~ GOTO taffich6
  IF ~PartyGoldGT(999)~ THEN REPLY ~Prank? You think causing misery is a prank? I know Taffic can be a pain in the butt, but he is a harmless dreamer, now take your gold and work your spell!~ GOTO taffich5
  IF ~PartyGoldGT(999)~ THEN REPLY ~Here take your gold and end return the gnome now.~ GOTO taffich5
  IF ~~ THEN REPLY ~1000 gold? Too much, I do not have that amount. I will return when I do.~ GOTO taffich7
  IF ~~ THEN REPLY ~He is not worth it, sorry to have bothered you. Farewll wizard.~ GOTO taff_end
END

IF ~~ THEN BEGIN taffich5
  SAY ~Good. I'll now cast my reversal spell and Taffic will be once again a gnome. After that you folks will excuse me, I have places to be, things to do.~
  IF ~~ THEN DO ~SetGlobal("VP_TafficQuest","GLOBAL",21) TakePartyGold(1000) AddXPObject(Player1,47500) AddXPObject(Player2,47500) AddXPObject(Player3,47500) AddXPObject(Player4,47500) AddXPObject(Player5,47500) AddXPObject(Player6,47500) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutTQ1")~ EXIT
END

IF ~Global("VP_TafficQuest","GLOBAL",23) PartyGoldGT(999)~ THEN BEGIN storyend
  SAY ~I see you returned with my gold.~
  IF ~~ THEN EXTERN ~TAFFICJ~ taffich8
END

IF ~Global("VP_TafficQuest","GLOBAL",23) PartyGoldLT(1000)~ THEN BEGIN notend
  SAY ~You're wasting your time. Make haste and bring me my gold while I'm still here.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN taffich6
  SAY ~Come, I ask only 1000 gold, besides, you take my head and your little gnome here will forever be an Umberhulk.~
  = ~You see, the reversal spell just happens to be in my head, not written on parchment about my person. Choice is yours.~
  IF ~~ THEN EXTERN ~TAFFICJ~ taffich4
END

IF ~~ THEN BEGIN taffich7
  SAY ~Make that soon, for I leave tonight and with me goes any chance of your friend returning to his gnomish existence.~
  IF ~~ THEN EXTERN ~TAFFICJ~ taffich5
END

IF ~~ THEN BEGIN taffich9
  SAY ~Make that soon, for I leave tonight and with me goes any chance of your friend returning to his gnomish existence.~
  IF ~PartyGoldGT(999)~ THEN REPLY ~Here take your gold and end return the gnome now.~ GOTO taffich5
  IF ~~ THEN REPLY ~1000 gold? Too much, I do not have that amount. I will return when I do.~ GOTO taffich0
  IF ~~ THEN REPLY ~He is not worth it, sorry to have bothered you. Farewll wizard.~ GOTO taff_end
END

IF ~~ THEN BEGIN taff_end
  SAY ~So, it appears our gnome was duped into believing he had found allies to back in him in his insane notions of greatness. Destiny was never on his side, only in his mind.~
  IF ~~ THEN EXTERN ~TAFFICJ~ taff_end
END

IF ~~ THEN BEGIN taffich0
  SAY ~As I said, make haste while I'm still here.~
  IF ~~ THEN EXTERN ~TAFFICJ~ taffich5
END