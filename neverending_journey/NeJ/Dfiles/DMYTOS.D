BEGIN ~DMYTOS~

IF ~NumberOfTimesTalkedTo(0) Global("M_Done","GLOBAL",0)~ THEN BEGIN 0
  SAY ~Greetings. I am Bone Dancer Mytos. I must commend you on your efforts to enter here. Your perseverance is remarkable, to say the least. Now tell me, why are you here?~
  IF ~~ THEN REPLY ~I would like to ask you some questions.~ GOTO 2
  IF ~~ THEN REPLY ~I seek the evil that plagues Kuldahar. Would that be you?~ GOTO 14
  IF ~~ THEN REPLY ~I have nothing to say to you at this time. Farewell.~ GOTO 24
END

IF ~NumTimesTalkedToGT(0) Global("M_Done","GLOBAL",0)~ THEN BEGIN 1
  SAY ~Once again you stand before me. Why?~
  IF ~~ THEN REPLY ~I would like to ask you some questions.~ GOTO 2
  IF ~~ THEN REPLY ~I seek the evil that plagues Kuldahar.~ GOTO 14
  IF ~~ THEN REPLY ~I have nothing to say to you at this time. Farewell.~ GOTO 24
END

IF ~~ THEN BEGIN 2
  SAY ~What questions?~
  IF ~~ THEN REPLY ~Who are you again?~ GOTO 3
  IF ~~ THEN REPLY ~Can you tell me about this place?~ GOTO 13
  IF ~~ THEN REPLY ~I seek the evil that plagues Kuldahar. Would that be you?~ GOTO 14
  IF ~~ THEN REPLY ~Never mind.  Farewell.~ GOTO 24
END

IF ~~ THEN BEGIN 3
  SAY ~I am Bone Dancer Mytos, priest of Myrkul.~
  IF ~~ THEN REPLY ~What is a bone dancer?~ GOTO 4
  IF ~Class(Player1,CLERIC)~ THEN REPLY ~You are a priest of Myrkul, the god of death?~ GOTO 12
  IF ~Class(Player1,PALADIN)~ THEN REPLY ~You are a priest of Myrkul, the god of death?~ GOTO 12
  IF ~~ THEN REPLY ~I am not familiar with Myrkul. Can you tell me of him?~ GOTO 11
  IF ~~ THEN REPLY ~Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~I must leave now. Farewell.~ GOTO 24
END

IF ~~ THEN BEGIN 4
  SAY ~A Bone Dancer is a servant of Myrkul. It is our duty to raise guardian dead to protect places of importance to the faith. It is I who raised the guardians of this tomb.~
  IF ~Class(Player1,CLERIC) Alignment(Player1,MASK_GOOD)~ THEN REPLY ~So you are responsible for these vile creatures?~ GOTO 5
  IF ~Class(Player1,PALADIN)~ THEN REPLY ~So you are responsible for these vile creatures?~ GOTO 5
  IF ~Class(Player1,DRUID)~ THEN REPLY ~So you are responsible for these vile creatures?~ GOTO 5
  IF ~Class(Player1,CLERIC) Alignment(Player1,MASK_EVIL)~ THEN REPLY ~You have performed your duties adequately, Mytos. My... compliments to you.~ GOTO 26
  IF ~~ THEN REPLY ~I am not familiar with Myrkul. Can you tell me of him?~ GOTO 11
  IF ~~ THEN REPLY ~Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~I must leave now. Farewell.~ GOTO 24
END

IF ~~ THEN BEGIN 5
  SAY ~Vile? I would hardly call them that. These guardians have been here for centuries and have harmed no one. If you had not entered here they would not have attempted to harm you.~
  IF ~~ THEN REPLY ~Undead are vile regardless of their actions. They are the product of the dark art of necromancy.~ GOTO 6
  IF ~~ THEN REPLY ~This is not a subject I care to debate. Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~I must leave now. Farewell.~ GOTO 24
END

IF ~~ THEN BEGIN 6
  SAY ~I see... Let me ask you this. Is it not true that healing, the raising of the dead, and resurrection are necromantic as well?~
  IF ~~ THEN REPLY ~The healing arts are indeed necromantic in nature. However, necromancy crosses the line of decency and corrupts the art. It is vile, as are its creations.~ GOTO 7
  IF ~~ THEN REPLY ~This is not a subject I care to debate. Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~I must leave now. Farewell.~ GOTO 24
END

IF ~~ THEN BEGIN 7
  SAY ~Being undead myself, I can't help but find your opinion to be close-minded, prejudicial, and personally insulting.~
  IF ~~ THEN REPLY ~Well... I find you to be personally insulting.~ GOTO 8
  IF ~~ THEN REPLY ~I meant nothing personal. I was simply expressing my opinion.~ DO ~AddexperienceParty(7923)~ GOTO 9
  IF ~Class(Player1,CLERIC)~ THEN REPLY ~As a priest I can afford no other view. I meant nothing personal.~ DO ~AddexperienceParty(7923)~ GOTO 10
  IF ~Class(Player1,DRUID)~ THEN REPLY ~As a druid I can afford no other view. I meant nothing personal.~ DO ~AddexperienceParty(7923)~ GOTO 10
  IF ~Class(Player1,PALADIN)~ THEN REPLY ~As a paladin I can afford no other view. I meant nothing personal.~ DO ~AddexperienceParty(7923)~ GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY ~How dare you! Guardians. Slay this fool!~
  IF ~~ THEN REPLY ~So be it!~ DO ~SetGlobal("M_Done","GLOBAL",1) StartCutSceneMode() ActionOverride("Mytos",Wait(1)) ActionOverride("Mytos",CreateCreature("SKELWA01",[1776.219],0)) ActionOverride("Mytos",CreateCreature("SKELWA01",[1839.204],0)) ActionOverride("Mytos",CreateCreature("SKELWA01",[2000.249],0)) ActionOverride("Mytos",CreateCreature("SKELWA01",[2035.317],0)) ActionOverride("Mytos",EndCutSceneMode()) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~Very well, I will take no offense to your words. Shall we continue our conversation?~
  IF ~~ THEN REPLY ~Yes. I have more questions.~ GOTO 2
  IF ~~ THEN REPLY ~No. I think I should be leaving. Farewell.~ GOTO 24
END

IF ~~ THEN BEGIN 10
  SAY ~Yes...  Matters of faith often cause such differences of opinion.  I think it would be in our best interest to end this discussion now.~
  IF ~~ THEN REPLY ~Yes. I think I should be leaving. Farewell.~ GOTO 24
END

IF ~~ THEN BEGIN 11
  SAY ~Can it be that you know nothing of the Lord of the Dead? Ah, well. It matters not. All things living know of Him eventually.~
  IF ~~ THEN REPLY ~So, Myrkul is a death god?~ GOTO 12
  IF ~~ THEN REPLY ~I see.  Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~I must leave now. Farewell.~ GOTO 24
END

IF ~~ THEN BEGIN 12
  SAY ~No. He presides over the dead, not death itself. Death is nothing more than a simple transition from the world of the living to the world of the dead. Death is fleeting where Myrkul is eternal.~
  IF ~~ THEN REPLY ~I see.  Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~I must leave now. Farewell.~ GOTO 24
END

IF ~~ THEN BEGIN 13
  SAY ~There is nothing I can tell you. You are not of the faith and are therefore not privy to such information.~
  IF ~~ THEN REPLY ~Very well. Let me ask you something else then.~ GOTO 2
  IF ~~ THEN REPLY ~I must leave now. Farewell.~ GOTO 24
END

IF ~~ THEN BEGIN 14
  SAY ~Kuldahar... Do you refer to the little hamlet under the great tree? No, my concerns lie within these walls, not without. I would suggest you continue your search elsewhere.~
  IF ~~ THEN REPLY ~Why should I believe you innocent?~ GOTO 15
  IF ~~ THEN REPLY ~If you are not responsible, then who is?~ GOTO 22
END

IF ~~ THEN BEGIN 15
  SAY ~Amazing... You come here and slay my guardians, you steal the keys to this tomb, you break the seals upon these doors, and you question my innocence? Upon what authority?~
  IF ~~ THEN REPLY ~I come with the authority of Kuldahar to seek out the source of the evil that has fallen upon this land.~ GOTO 16
  IF ~~ THEN REPLY ~It matters not. I need to investigate this tomb. Will you allow it?~ GOTO 20
END

IF ~~ THEN BEGIN 16
  SAY ~Ah, I see... And who in Kuldahar holds the deeds to this vale or this tomb? By what right do they send you here with *authority* to kill, loot, and destroy?~
  IF ~~ THEN REPLY ~It is the right of any people to take action against a perceived threat.~ GOTO 17
  IF ~~ THEN REPLY ~It matters not who sent me here. I need to investigate this tomb. Will you allow it?~ GOTO 20
END

IF ~~ THEN BEGIN 17
  SAY ~Perceived threat? What are you talking about? These guardians have been here for centuries and have harmed no one! Where is your threat?~
  IF ~~ THEN REPLY ~I am curious, Mytos. Why does a *tomb* need this much protection? Unless, of course, it is more than it seems?~ GOTO 18
  IF ~~ THEN REPLY ~It matters not who sent me here. I need to investigate this tomb. Will you allow it?~ GOTO 20
END

IF ~~ THEN BEGIN 18
  SAY ~Bah! You speak rubbish now. You are trying to justify your wanton acts by creating threats where they do not exist.~
  IF ~~ THEN REPLY ~You are not answering my question. Why does a tomb need this much protection?~ GOTO 19
  IF ~~ THEN REPLY ~Then allow me to investigate this tomb fully, Mytos.~ GOTO 20
END

IF ~~ THEN BEGIN 19
  SAY ~For no other reason than the fact that the protection was available. As one of the faithful the person interred here had access to Bone Dancers. So he used them. Nothing sinister is going on.~
  IF ~~ THEN REPLY ~Then allow me to investigate this tomb fully, Mytos.~ GOTO 20
  IF ~~ THEN REPLY ~I don't understand. What is a bone dancer?~ GOTO 23
END

IF ~~ THEN BEGIN 20
  SAY ~No. It is forbidden. As a matter of fact I have spent too much time talking with you and neglecting my duty. I must demand that you surrender the keys in your possession and leave here. I will not ask again.~
  IF ~~ THEN REPLY ~I have no intention of leaving until I am satisfied there is no threat to Kuldahar within these walls.~ GOTO 21
  IF ~~ THEN REPLY ~Mytos, I am trying to be reasonable here. I cannot in good conscience leave until I have investigated this tomb fully. Can we come to some understanding?~ DO ~AddexperienceParty(7923)~ GOTO 25
END

IF ~~ THEN BEGIN 21
  SAY ~Then you leave me no choice. Guardians. Slay this fool!~
  IF ~~ THEN REPLY ~So be it!~ DO ~SetGlobal("M_Done","GLOBAL",1) StartCutSceneMode() ActionOverride("Mytos",Wait(1)) ActionOverride("Mytos",CreateCreature("SKELWA01",[1776.219],0)) ActionOverride("Mytos",CreateCreature("SKELWA01",[1839.204],0)) ActionOverride("Mytos",CreateCreature("SKELWA01",[2000.249],0)) ActionOverride("Mytos",CreateCreature("SKELWA01",[2035.317],0)) ActionOverride("Mytos",EndCutSceneMode()) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY ~I have no idea. What happens outside this vale is of no concern to me.~
  IF ~~ THEN REPLY ~Why should I believe you innocent of Kuldahar's woes?~ GOTO 15
END

IF ~~ THEN BEGIN 23
  SAY ~A Bone Dancer, such as myself, is a servant of Myrkul. It is our duty to raise guardian dead to protect places of importance to the faith. It is I who raised the guardians of this tomb.~
  IF ~~ THEN REPLY ~I see. I would ask you to allow me to investigate this tomb fully, Mytos.~ GOTO 20
END

IF ~~ THEN BEGIN 24
  SAY ~No. You may not leave here until you have surrendered the keys you have in your possession.~
  IF ~~ THEN REPLY ~I cannot do that at this time.~ GOTO 21
  IF ~~ THEN REPLY ~First I must investigate this tomb. Will you allow this?~ GOTO 20
  IF ~~ THEN REPLY ~Well, you may take them. I really appologise for all these disturbances I cause to your... hmm... 'people'. I don't actually want to continue on this quest, and I don't wish to go in more troubles than I have.~ GOTO 27
END

IF ~~ THEN BEGIN 25
  SAY ~No, we cannot. You have your duty and I have mine. This conflict was inevitable... Guardians. To arms!~
  IF ~~ THEN REPLY ~So be it.~ DO ~SetGlobal("M_Done","GLOBAL",1) StartCutSceneMode() ActionOverride("Mytos",Wait(1)) ActionOverride("Mytos",CreateCreature("SKELWA01",[1776.219],0)) ActionOverride("Mytos",CreateCreature("SKELWA01",[1839.204],0)) ActionOverride("Mytos",CreateCreature("SKELWA01",[2000.249],0)) ActionOverride("Mytos",CreateCreature("SKELWA01",[2035.317],0)) ActionOverride("Mytos",EndCutSceneMode()) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY ~Adequately? Are trying to imply that you could have done better? I think not.~
  IF ~~ THEN REPLY ~Your creations could not prevent our entry here, Mytos. If they are a reflection of your abilities as a necromancer, then you need more practice in the art.~ GOTO 8
  IF ~~ THEN REPLY ~Forgive me. I meant no insult to you, Mytos.~ GOTO 9
END

IF ~~ THEN BEGIN 27
  SAY ~It's really wise from your side. But I don't need your appologies, and I simply don't like your tone. It seems to me you're preparing another ambush here. So don't think it will be so easy. This conflict was inevitable... Guardians! To arms!~
  IF ~~ THEN REPLY ~So be it.~ DO ~SetGlobal("M_Done","GLOBAL",1) StartCutSceneMode() ActionOverride("Mytos",Wait(1)) ActionOverride("Mytos",CreateCreature("SKELWA01",[1776.219],0)) ActionOverride("Mytos",CreateCreature("SKELWA01",[1839.204],0)) ActionOverride("Mytos",CreateCreature("SKELWA01",[2000.249],0)) ActionOverride("Mytos",CreateCreature("SKELWA01",[2035.317],0)) ActionOverride("Mytos",EndCutSceneMode()) Enemy()~ EXIT
END