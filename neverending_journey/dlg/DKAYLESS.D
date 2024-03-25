BEGIN ~DKAYLESS~

IF ~NumTimesTalkedTo(0) Global("K_Done", "GLOBAL", 0)~ THEN BEGIN 0
  SAY ~Adventurers?  Here in the Hand of the Seldarine?  You must have fought past the horde below.  Battle ready, I take it?  Tell me, why are you here?~
  IF ~~ THEN REPLY ~We seek to find Larrel.  Evil stalks the land, and we need his powers to find the source.~ GOTO 1
  IF ~~ THEN REPLY ~Very battle ready, I might add.  More than adequate to deal with another ghost if she thinks to attack us.~ GOTO 2
  IF ~~ THEN REPLY ~We seek Larrel, the only one who can summon forth the divining power of the Heartstone Gem.~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY ~A noble cause.  That's something my heart has yearned for -- what I wouldn't give to ride once again for such causes.  Well met, adventurers.  My name is Kaylessa.  I am... was... the weapons master of the Hand.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY ~A hearty lot you are!  It's good to see the fighting spirit still alive after so many decades.  That same spirit used to drive all my thoughts and actions... before the fall.  My name is Kaylessa.  I am... was... the weapons master of the Hand.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY ~Hmmm.  I don't know much about this Heartstone Gem, but it must be powerful indeed if only Larrel can use its powers.  My name is Kaylessa.  I am... was... the weapons master of the Hand.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~With that all said, you must have some questions that need answering.~
  IF ~~ THEN REPLY ~Well met, Kaylessa.  We would know more about you - you're very different than the most of the spirits we've encountered here.~ GOTO 5
  IF ~~ THEN REPLY ~As we had mentioned, we need to find Larrel.  Can you help us?~ GOTO 8
  IF ~~ THEN REPLY ~Unfortunately my questions will have to wait for now.  Farewell, Kaylessa.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~When the Hand was at the pinnacle of its glory, I trained my people in the ways of combat.  No one could best my deftness with the sword or my accuracy with the bow.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~All my soldiers were honed to perfection.  When we were called to battle, it did not take long before our enemies found their forces in chaos and retreat.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~Those days are long gone now.  Any of my soldiers that remain are twisted shadows of their former selves.  I differ from them only in that I have retained my senses.  It is a curse, knowing what we've become and powerless to do anything about it.~
  IF ~~ THEN REPLY ~Kaylessa, I'd like to talk about how to find Larrel.  Perhaps something can be done to help you if we find him.~ GOTO 8
  IF ~~ THEN REPLY ~You have my sympathies, Kaylessa.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~Finding Larrel will not be easy.  When the Hand fell, he was damned.  He is now a Baelnorn, an elven lich-like creature doomed to live forever.  How this came about?  I do not know.~
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY ~You may have seen Larrel as you have explored the Hand, but what you saw is not truly him - it is more a 'sending,' a figment of himself that wanders the Hand.  Larrel -- the true Larrel -- is atop Labelas Tower.~
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY ~Every time I have seen Larrel's sending, it has rambled on like a village idiot -- with one exception.  Once, it mentioned something about Larrel's great astrolabe and how it was no longer turning.~
  IF ~~ THEN REPLY ~Can you tell me more about Larrel's astrolabe?~ GOTO 11
  IF ~~ THEN REPLY ~Kaylessa, I have other questions for you.~ GOTO 4
  IF ~~ THEN REPLY ~Very interesting.  I must depart for now.~ EXIT
END

IF ~~ THEN BEGIN 11 //1
  SAY ~Larrel's astrolabe is a wondrous device constructed to help him and his wizards research space and time. As I recall, Larrel and his wizards were using it during the last days of the Hand.~
  IF ~~ THEN REPLY ~Larrel was researching  space and time... I must know more of this astrolabe Kaylessa.~ GOTO 19 //-->2
  IF ~~ THEN REPLY ~Tell me all you know of Larrel and these wizards of his. I will know everything they have discovered during this research of theirs.~ GOTO 19 //-->2
  IF ~~ THEN REPLY ~Space and time you say Kaylessa...  then I need to speak with Larrel most urgently. His astrolabe, or at least his knowledge may yet be our saviour.~ GOTO 20 //-->3
END

IF ~~ THEN BEGIN 12 //from 11
  SAY ~In the aftermath of the Hand's destruction, I found this piece of machinery, which I believe to be a piece of Larrel's astrolabe. After seeing the state of mind of most everyone left in the Hand, I have held onto it and guarded it. The last thing I wanted was someone using the power held within this piece to cause further harm to the Hand.~
  IF ~Global("KaylessaQuest","GLOBAL",0)~ THEN REPLY ~Kaylessa, we may need that item if we are to have Larrel help us.~ GOTO 13
  IF ~Global("KaylessaQuest","GLOBAL",0)~ THEN REPLY ~If it is indeed part of the astrolabe then it is imperative that you give it to me so that I can take it to Geralith... it could be the means for me to enlist the aid of Larrel.~ GOTO 13
  IF ~Global("KaylessaQuest","GLOBAL",0)~ THEN REPLY ~Kaylessa, that item you have maybe all that stands between me finding my way home or being trapped here forever... I desperately need to speak with Larrel. Please, will you give it to me?~ GOTO 13
  IF ~Global("KaylessaQuest","GLOBAL",0)~ THEN REPLY ~If that item will help in my quest to speak with Larrel, then I mean to have it... one way or another.~ GOTO 13
  IF ~~ THEN REPLY ~Many thanks for your time.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~Your intentions may be noble, but I'm afraid I cannot entrust you with this item yet.  You will need to prove yourselves first.~
  IF ~~ THEN REPLY ~How?~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~The elves atop this tower were among my most dedicated soldiers.  Whatever curse befell the Hand not only twisted their bodies, but twisted their minds as well.  They act and live as if in the final moments of the Hand.  Forever prepared to defend against any intrusion to this tower.~
  IF ~~ THEN REPLY ~What of them?~ DO ~SetGlobal("KaylessaQuest","GLOBAL",1)~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~My soldiers do not deserve what has befallen them -- they deserve to die in battle.  They would want to meet their end with steel in their hands upon the battlefield.  I would ask that you climb the tower and send them to eternal rest.~
  IF ~GlobalGT("SoldiersDead","GLOBAL",24) Global("K_Done", "GLOBAL", 0)~ THEN REPLY ~Kaylessa, I have already encountered your soldiers on the upper levels. They all fought with great honor.  They rest in peace now.~ DO ~AddXPObject(Player1,35000) AddXPObject(Player2,35000) AddXPObject(Player3,35000) AddXPObject(Player4,35000) AddXPObject(Player5,35000) AddXPObject(Player6,35000) SetGlobal("K_Done", "GLOBAL", 1) EraseJournalEntry(%To battle the soldiers of Kaylessa.

We met Kaylessa in Shevarash Tower in the Severed Hand.  She has asked us to battle her soldiers and put them to proper rest.  In return, she will give us some strange piece of machinery for an astrolabe.%)~ SOLVED_JOURNAL ~To battle the soldiers of Kaylessa.

Kaylessa asked us to put her soldiers to rest on the field of battle.  We told her that we had already encountered them and that they all fought with great honor.~ GOTO 18
  IF ~~ THEN REPLY ~I will put them to rest as you wish.~ UNSOLVED_JOURNAL ~To battle the soldiers of Kaylessa.

We met Kaylessa in Shevarash Tower in the Severed Hand.  She has asked us to battle her soldiers and put them to proper rest.  In return, she will give us some strange piece of machinery for an astrolabe.~ GOTO 16
  IF ~~ THEN REPLY ~Let me think about it.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY ~You have my heartfelt thanks. Return to me when my soldiers are at peace.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",2) RealSetGlobalTimer("VP_Accalia_Hrothgar","GLOBAL",10)~ EXIT
  IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN EXTERN ~SHARTJ~ kaylsold
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 209
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ613
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ315
  IF ~InParty("Imoen") !Dead("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ173
  IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX89
END

IF ~NumTimesTalkedToGT(0) Global("K_Done", "GLOBAL", 0)~ THEN BEGIN 17
  SAY ~I see you have returned, adventurers.~
  IF ~~ THEN REPLY ~Greetings once again, Kaylessa.  You had mentioned you were the Hand's weapon master?~ GOTO 5
  IF ~~ THEN REPLY ~We still seek to find Larrel.  Can you help us?~ GOTO 8
  IF ~GlobalGT("SoldiersDead","GLOBAL",24) Global("KaylessaQuest","GLOBAL",1) Global("K_Done", "GLOBAL", 0)~ THEN REPLY ~Kaylessa, your soldiers all fought with great honor.  Their suffering has ended, and they rest now.~ DO ~AddXPObject(Player1,35000) AddXPObject(Player2,35000) AddXPObject(Player3,35000) AddXPObject(Player4,35000) AddXPObject(Player5,35000) AddXPObject(Player6,35000) SetGlobal("K_Done", "GLOBAL", 1) EraseJournalEntry(%To battle the soldiers of Kaylessa.

Kaylessa asked us to put her soldiers to rest on the field of battle.  We told her that we had already encountered them and that they all fought with great honor.%) EraseJournalEntry(%To battle the soldiers of Kaylessa.

We met Kaylessa in Shevarash Tower in the Severed Hand.  She has asked us to battle her soldiers and put them to proper rest.  In return, she will give us some strange piece of machinery for an astrolabe.%)~ SOLVED_JOURNAL ~To battle the soldiers of Kaylessa.

We returned to Kaylessa and told her all her soldiers have been put to rest.~ GOTO 18
  IF ~~ THEN REPLY ~Good to see you, Kaylessa.  I must depart.~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY ~I thank you for helping with one of my last tasks in this realm.  Before I give you your reward, I would have you help me one last time.  With my soldiers at rest, there is only one thing left for me to do - to join them.  I would ask for the honor of dying in battle.~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 19 //2
  SAY ~I am not the person you should be asking, I know no more than what I have said. I am a soldier and I have no interest in the ways of the wizard.~
  IF ~~ THEN REPLY ~Then I guess I will have to continue my search for Larrel and take my questions to him.~ GOTO 20 //-->3
  IF ~~ THEN REPLY ~Larrel's astrolabe  may be our only means of escaping this place Kaylessa. Please, anything you know or may have heard will be a great help.~ GOTO 21 //-->4
  IF ~~ THEN REPLY ~This is very important, please Kaylissa is there nothing you can recall of Larrel's research?~ GOTO 21 //-->4
  IF ~~ THEN REPLY ~I can not believe this. Our way home may be within our grasp yet you say you know nothing about this device, Larrel... the wizard who had the machine built... wanders the tower in a state of utter confusion. Is there no one sane enough to talk with?~ GOTO 21 //-->4
END

IF ~~ THEN BEGIN 20 //3
  SAY ~I am afraid you will get little from Larrel, or anyone here. When the hand fell, so did the mind and reason of almost all who dwelt within. Few escaped the curse.~
  IF ~~ THEN REPLY ~Then tell me of those who did escape, maybe I can find one among them who can tell me what I need to know?~ GOTO 21 //-->4
  IF ~~ THEN REPLY ~Is it possible that any who did escape the curse still wander these rooms?~ GOTO 21 //-->4
  IF ~~ THEN REPLY ~I have no choice, I must speak with Larrel, and the need has become more urgent since learning of this astrolabe.~ GOTO 21 //-->4
END

IF ~~ THEN BEGIN 21 //4
  SAY ~Find Geralith, he is around somewhere, probably atop the tower with Larrel. If I am right, then he will be trying to repair the astrolabe. It was he who built the machine and he who was responsible for its upkeep.~
  IF ~~ THEN REPLY ~Geralith is trying to repair the astrolabe... are you saying that it is broken?~ GOTO 12
  IF ~~ THEN REPLY ~Damn! Just my luck to hear of a machine that could possibly take me home, and then in the next breath to be told it is broken! Are you sure of this Kaylessa?~ GOTO 12
END  