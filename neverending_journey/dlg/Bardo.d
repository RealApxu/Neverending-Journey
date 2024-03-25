BEGIN ~BARDO~

IF ~Global("VP_Sell_Slaves","GLOBAL",2)~ THEN BEGIN 0
  SAY ~Hello, you needin' Bardo's help?~
  IF ~~ THEN EXTERN ~MARKY~ 0
END

IF ~~ THEN BEGIN 1
  SAY ~You, you do what Marky says? You sell free people to slaver?~
  IF ~~ THEN REPLY ~Me? Sorry your friend is mistaken.~ GOTO 1a
  IF ~~ THEN REPLY ~If this creature belongs to you I advise you to tell him to shut his mouth, making accusations like that will get it into trouble.~ GOTO 1a
  IF ~~ THEN REPLY ~What if I did? You abandoned them and when I came across them they were already slaves and half dead to boot. At least they are still alive, no thanks to you.~ GOTO 2a
END

IF ~~ THEN BEGIN 1a
  SAY ~Marky, are you sure?~
  IF ~~ THEN EXTERN ~MARKY~ 1
END

IF ~~ THEN BEGIN 2a
  SAY ~This all Bardo's fault. Good peoples now has to suffer because him is selfish. Him can't put things right but him can avenge them. You never sell peoples again.~
  IF ~~ THEN DO ~ActionOverride("Marky",Enemy()) Enemy()~ EXIT
END

IF ~!Global("VP_Sell_Slaves","GLOBAL",2) Global("VP_Dar_Quest","GLOBAL",8)~ THEN BEGIN N0
  SAY ~Hello, you needin' Bardo's help?~
  IF ~~ THEN REPLY ~Well met Bardo. I came here seeking a prophet sent to this place by his followers. Would that by any chance be you?~ GOTO 2
  IF ~~ THEN REPLY ~So, this is how a prophet spends his time after abandoning his followers, languishing in the warmth of the local inn!~ GOTO 2
  IF ~~ THEN REPLY ~Not me Bardo, your followers, remember them?~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~Followers? Bardo have no followers. Bardo live in Candlekeep, work here in inn. You have wrong Bardo sorry.~
  IF ~~ THEN REPLY ~Ah, so that is the way of things, you have become accustomed to the luxuries afforded by civilised living. What kind of a prophet are you, Bardo, to run out on those that trusted you in exchange for an easier life for himself... you tell me what kind of prophet does that?~ GOTO 3
  IF ~~ THEN REPLY ~You deny that you left your people? Left them waiting for your return? Left them to the mercy of any who would take advantage of them when their moral was at its lowest?~ GOTO 3
  IF ~~ THEN REPLY ~Look I know that you are this prophet, and you know that you are this prophet! I do not have the time for games of *No I am not*... *Yes you are*... all I am here to do is to ask you to return to the people you abandoned.~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Ok, so what if Bardo was prophet? He left people in good spirits, they was pleased for him to go. They say they take care of things ok, whilst Bardo was gone, everything fine.~
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ quest20
  IF ~OR(2) !InParty("Dar") Dead("Dar")~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~They was ok I says! Spiritually they was fine. What this about anyway?~
  IF ~~ THEN REPLY ~Yes well, spiritually they may have been fine, but as your absence lengthened, they became more and more despondent. When we came upon them they had been enslaved and tortured for their beliefs, a broken people Bardo.~ GOTO 5
  IF ~~ THEN REPLY ~They thought you dead Bardo! The thought that you had abandoned them never entered their heads. They trusted in your return and you let them down. Because of your selfishness their moral declined and they fell prey to other savage tribes, those that persisted in your teachings were enslaved and tortured. Was this the bright future you saw for them?~ GOTO 5
  IF ~~ THEN REPLY ~Look prophet, I have freed your people from slavery because Dar here pestered me to do so, I came here to find you because he pestered me to do so, but this is as far as I go. From here on it is your choice, if you choose not return, know that I will not be around to rescue them a second time!~ GOTO 6
  IF ~~ THEN REPLY ~I have just freed these people of yours from a future of slavery Bardo. They have their freedom but are without hope, they are a broken people and in need of your guidance, will you not consider returning and ministering to them once more?~ GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY ~Bardo did not know... did not think.~
  IF ~~ THEN REPLY ~That much is obvious. Now that you do know, do you intend returning and helping them to rebuild their faith, a faith which you brought to them?~ GOTO 6
  IF ~~ THEN REPLY ~You know now prophet! The question now becomes what are you going to do about them?~ GOTO 6
  IF ~~ THEN REPLY ~So, Bardo, are you going to return to them and finish what you started or do I tell them that their suffering has been in vain, that their so called prophet is comfortably settled in Candlekeep and wants no part of them?~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~Bardo feels for their suffering, but him cannot guide them now. Did not find great book here, but find instead that Bardo not belong with them, he belong here. Bardo does not want to go back, not now, not ever.~
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ quest22
  IF ~OR(2) !InParty("Dar") Dead("Dar")~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Bardo sorry. Him not strong like you, him does not believe no more.~
  IF ~~ THEN EXTERN ~DARJ~ quest23
END

IF ~~ THEN BEGIN 8
  SAY ~(*Shaking his head*) Bardo, does not have dream or faith like you, him did once, it all gone now.~
  IF ~~ THEN EXTERN ~DARJ~ quest24
END

IF ~~ THEN BEGIN 9
  SAY ~(*Starting to turn away*) Bardo cannot.~
  IF ~~ THEN EXTERN ~DARJ~ quest25
END

IF ~~ THEN BEGIN 9a
  SAY ~(*Turning to Bardo*)~
  IF ~~ THEN REPLY ~Bardo, if you choose to turn away now, what word shall I take to these broken people of yours? Should I tell them that their faith was built on lies, that they should forget what you taught them and return to their savage ways? Is that all that is left for them now?~ GOTO 10
  IF ~~ THEN REPLY ~Bardo, listen to Dar's words, I was ready to kill them all to end their misery, but he urged me to seek you out, to bring you back to your people. At least my way would have saved them from further pain in the future that your reluctance to return will surely bring them.~ GOTO 11
  IF ~~ THEN REPLY ~Bardo, are you that much of a coward that you prefer to have those wretched people think you dead and yet, because they do not know for certain, they still cling to the hope that you will return? Is that any less cruel than the slavery I rescued them from?~ GOTO 12
END

IF ~~ THEN BEGIN 10
  SAY ~Bardo's word no good, him no longer believe it himself, but maybe you take hope to peoples, you find and take knowledge to them?~
  IF ~~ THEN REPLY ~I think not. I have allowed myself to be dragged here to find you, only to discover that it was a waste of my time as you did not want to be found, and now you want me to waste more of my time to clean up your mess! Sort it yourself!~ GOTO 12a
  IF ~~ THEN REPLY ~*Sigh*, I just knew that was coming! How do I manage to get myself entangled in the problems of others so easily? Is there a sign on my head that says *sucker for all lost causes*? Tell me what it is you want me to do Bardo?~ GOTO 13
  IF ~~ THEN REPLY ~If what you have to say is worthwhile, I will consider helping you. Say your piece?~ GOTO 13
  IF ~~ THEN REPLY ~Speak Bardo, Dar here will not rest easy until he has heard you out.~ GOTO 13
END

IF ~~ THEN BEGIN 11
  SAY ~You would kill to stop pain, what has Bardo done?~
  = ~Him sorry he did not mean to cause hurt, they good people, deserve more than Bardo can give.~
  = ~Maybe you help them, find knowledge and give them back hope?~
  IF ~~ THEN REPLY ~I think not. I have allowed myself to be dragged here to find you, only to discover that it was a waste of my time as you did not want to be found, and now you want me to waste more of my time to clean up your mess! Sort it yourself!~ GOTO 12a
  IF ~~ THEN REPLY ~*Sigh*, I just knew that was coming! How do I manage to get myself entangled in the problems of others so easily? Is there a sign on my head that says *sucker for all lost causes*? Tell me what it is you want me to do Bardo?~ GOTO 13
  IF ~~ THEN REPLY ~If what you have to say is worthwhile, I will consider helping you. Say your piece?~ GOTO 13
  IF ~~ THEN REPLY ~Speak Bardo, Dar here will not rest easy until he has heard you out.~ GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY ~Yes, Bardo coward, him do wrong taking people from their own, him not know enough to keep teaching them. When him fail to find the knowledge, him gets comfortable and forgets, but Bardo did find something, something that maybe you can do to help them?~
  IF ~~ THEN REPLY ~I think not. I have allowed myself to be dragged here to find you, only to discover that it was a waste of my time as you did not want to be found, and now you want me to waste more of my time to clean up your mess! Sort it yourself!~ GOTO 12a
  IF ~~ THEN REPLY ~*Sigh*, I just knew that was coming! How do I manage to get myself entangled in the problems of others so easily? Is there a sign on my head that says *sucker for all lost causes*? Tell me what it is you want me to do Bardo?~ GOTO 13
  IF ~~ THEN REPLY ~If what you have to say is worthwhile, I will consider helping you. Say your piece?~ GOTO 13
  IF ~~ THEN REPLY ~Speak Bardo, Dar here will not rest easy until he has heard you out.~ GOTO 13
END

IF ~~ THEN BEGIN 12a
  SAY ~(*Dar is interrupting*)~
  IF ~~ THEN EXTERN ~DARJ~ quest26
END

IF ~~ THEN BEGIN 13
  SAY ~Bardo tells his brother half-orc what he knows.~
  IF ~~ THEN REPLY ~Bardo, you have my ear for a few minutes. Start talking.~  GOTO 13a
  IF ~~ THEN REPLY ~Ok Bardo, let us hear what you have to say?~  GOTO 13a
END

IF ~~ THEN BEGIN 13a
  SAY ~Bardo teaching what he heard from another. This other say his words were learnt from old book, very old book and here has lots of old books.~
  = ~Bardo thought him find it, but him hear instead the book now three parts and one part is in safe keeping of druids in their grove, somewhere near Trademeet.~
  = ~Them say book is here... heretic... heretical, yes that the word, heretical to their belief in keeping this balance they always talk about.~
  = ~Bardo still thinks one part is here, but not with other great books, other part is lost somewhere else.~
  = ~Please, you find druids, find book, give to people hope they need, hope Bardo cannot give?~
  IF ~!Global("VP_CreateTaffic","GLOBAL",0)~ THEN REPLY ~I will speak with these druids Bardo, I will enjoy the opportunity to see some familiar sights again.~ GOTO 15
  IF ~Global("VP_CreateTaffic","GLOBAL",0)~ THEN REPLY ~I will speak with these druids Bardo.~ GOTO 15
  IF ~~ THEN REPLY ~I will see what I can do Bardo. I only hope these druids will be friendlier than the last one I tried to reason with.~ GOTO 15
  IF ~~ THEN REPLY ~Forget it Bardo, I am not about to go chasing across Faerun looking for the remnants of some book. You are on your own here.~ GOTO 14
  IF ~~ THEN REPLY ~This is something you started Bardo and I am not going to finish it for you. It is between you and your conscience what you do now.~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~Then they are lost.~
  IF ~~ THEN EXTERN ~DARJ~ quest28
END

IF ~~ THEN BEGIN 15
  SAY ~Bardo thank you, please you tell his people him sorry and to let book guide them. Them better people than Bardo could ever be. (*Bardo turns sadly and leaves*).~
  IF ~~ THEN DO ~SetGlobal("VP_Dar_Quest","GLOBAL",9) RevealAreaOnMap("AR2000") ActionOverride("Marky",EscapeArea()) EscapeArea()~ EXIT
END //--> to Trademeet

IF ~Global("VP_Sell_Slaves","GLOBAL",0) !Global("VP_Dar_Quest","GLOBAL",8)~ THEN BEGIN A0
  SAY ~Hello, you needin' Bardo's help?~
  IF ~~ THEN REPLY ~No Bardo, not at the moment. Farewell.~ EXIT
END