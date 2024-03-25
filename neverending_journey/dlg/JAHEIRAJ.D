//_________________________________________________________________________//
//  //
//  Additional dialogue as the group walk past the body of Khalid  //
//_________________________________________________________________________//
//  //

EXTEND_BOTTOM JAHEIRAJ 338
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 60
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 263
END

APPEND ~JAHEIRAJ~

IF WEIGHT #0 ~Global("VP_NPC_Notes_IWD","GLOBAL",1)~ THEN BEGIN NEJ531
  SAY ~<CHARNAME>, I don't know why we find ourselves so far to the North, but I feel something very unnatural in our current situation. Please, be very careful. This area is strange and I question whether we belong here.~ [mute]
  IF ~InParty("Imoen") InParty("Minsc")~ THEN DO ~SetGlobal("VP_NPC_Notes_IWD","GLOBAL",2)~ EXTERN ~IMOENJ~ NEJ71
  IF ~InParty("Imoen") !InParty("Minsc")~ THEN DO ~SetGlobal("VP_NPC_Notes_IWD","GLOBAL",2)~ EXTERN ~IMOENJ~ NEJ71
  IF ~!InParty("Imoen") InParty("Minsc")~ THEN DO ~SetGlobal("VP_NPC_Notes_IWD","GLOBAL",2)~ EXTERN ~MINSCJ~ NEJ243
  IF ~!InParty("Imoen") !InParty("Minsc")~ THEN EXIT
  IF ~InParty("Imoen2") InParty("Minsc")~ THEN DO ~SetGlobal("VP_NPC_Notes_IWD","GLOBAL",2)~ EXTERN ~Imoen2J~ VP_FIX1
  IF ~InParty("Imoen2") !InParty("Minsc")~ THEN DO ~SetGlobal("VP_NPC_Notes_IWD","GLOBAL",2)~ EXTERN ~Imoen2J~ VP_FIX1
  IF ~!InParty("Imoen2") InParty("Minsc")~ THEN DO ~SetGlobal("VP_NPC_Notes_IWD","GLOBAL",2)~ EXTERN ~MINSCJ~ NEJ243
  IF ~!InParty("Imoen2") !InParty("Minsc")~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ534
  SAY ~What cruel sadistic trick is this? To give us our freedom only to snatch it back as quickly? Someone will pay heavily for this!~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 369
  IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ comebck1
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 5
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ246
END

IF WEIGHT #1 ~Global("VP_NPC_Notes_Hroth","GLOBAL",1) ~ THEN BEGIN NEJ535
  SAY ~<CHARNAME>, tell me why do you let this man Hrothgar lead you by the nose?~
  IF ~~ THEN DO ~SetGlobal("VP_NPC_Notes_Hroth","GLOBAL",2) ~ GOTO NEJ536
END

IF ~~ THEN BEGIN NEJ536
  SAY ~You know very little of him and yet you follow in any direction that he takes you. He seems to be taking us in some very strange directions and yet you ask very few questions of him.~
  IF ~~ THEN REPLY ~Nobody leads me, Jaheira. It suits me to follow him for the moment.~ GOTO NEJ537
  IF ~~ THEN REPLY ~You know me better than anyone here, Jaheira. I follow Hrothgar because I feel that it is the right thing to do at the present time.~ GOTO NEJ537
  IF ~~ THEN REPLY ~Hrothgar intrigues me, Jaheira and I wish to know more of this strange life of his.~ GOTO NEJ537
  IF ~~ THEN REPLY ~I agreed to aid him in his task, Jaheira, whatever that may turn out to be, and aid him I shall. I agree things are not as we expected but I do not sense that we are in any danger from him.~ GOTO NEJ537
END

IF ~~ THEN BEGIN NEJ537
  SAY ~Have you really given much thought as to who or what this Hrothgar might or might not be? I do not believe that you have, <CHARNAME>. Stop and think about it for a moment at least.~
  IF ~~ THEN GOTO NEJ538
END

IF ~~ THEN BEGIN NEJ538
  SAY ~He travels with you through a portal, from some time in the past to the present day and accepts it as if he had only walked through a door to another room.~
  IF ~~ THEN GOTO NEJ539
END

IF ~~ THEN BEGIN NEJ539
  SAY ~Are you not curious or even worried as to why he expected to arrive out of his own time?~
  IF ~~ THEN REPLY ~I do have questions Jaheira, but if Hrothgar is not yet disposed to answer them I cannot force him to speak. We must wait until he decides when we should know more.~ GOTO NEJ540
  IF ~~ THEN REPLY ~I do not understand this strangeness anymore than you Jaheira. My thoughts, from first waking in Irenicus' dungeon and all that has since occurred are muddled. I am continually trying to find reason for what is happening now but can make no sense of any of it. Fate truly does not wish me to know too much too soon is the only rational explanation that I can come up with.~ GOTO NEJ540
  IF ~~ THEN REPLY ~Giving my heritage Jaheira, should I really be surprised when strange and seemingly inexplicable events occur around me? Do we not usually get answers in the end? The answers to both my questions are *yes* Jaheira, we may not get the answers we like but we do get them.~ GOTO NEJ540
  IF ~~ THEN REPLY ~Then what do you suggest I do Jaheira, assault Hrothgar and demand some answers? I have certainly toyed with the idea more than once, but no, I see by the expression on your face that like me, you know that would not be a wise action. For now I will watch and wait.~ GOTO NEJ540
END

IF ~~ THEN BEGIN NEJ540
  SAY ~All the same, this is not a natural road to be on, <CHARNAME>. A road that leads to the past and to the present could well lead to the future. No such road should exist, balance in all things would not allow this to be.~
  IF ~~ THEN GOTO NEJ541
END

IF ~~ THEN BEGIN NEJ541
  SAY ~We as mortals should not be allowed to know too much as it is in our nature to meddle where we should not when opportunity arises.~
  IF ~~ THEN REPLY ~I hear what you say Jaheira, but I think you are worrying too much when you speak of meddling. I have no intentions of meddling with anything. You believe it is in the nature of mortals to do so, I think you forget that the blood of a god runs through my veins Jaheira, maybe my nature is different.~ GOTO NEJ542
  IF ~~ THEN REPLY ~I am not as you say Jaheira mortal. I have the blood of a god in my veins making me half god by birth. Perhaps I have the right to meddle if it affects my destiny.~ GOTO NEJ542
  IF ~~ THEN REPLY ~Trust me, Jaheira, I may not be able to explain our situation but I believe that I will know what the right thing to do will be when I have to make a choice.~ GOTO NEJ542
END

IF ~~ THEN BEGIN NEJ542
  SAY ~Humph! That may be so, <CHARNAME>, but if you value my counsel then you would be wise to stay close to this Hrothgar.~
  IF ~~ THEN GOTO NEJ543
END

IF ~~ THEN BEGIN NEJ543
  SAY ~He clearly wanted you on this quest of his, and I cannot help but think that it is because of your blood connection with Bhaal that he tried so hard to persuade you to join him.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ545
  SAY ~This is not a wise thing to do, <CHARNAME>, upsetting the balance of what has passed and what is now. You will do well to think carefully on what this Tilorn is asking you to undertake.~
  IF ~~ THEN EXTERN ~TILORN~ 15
END

IF ~~ THEN BEGIN NEJ546
  SAY ~(*Wistfully*) So, we are to visit Ulcaster again, <CHARNAME>. The last time we were there Khalid was at my side and we had promised Gorion to aid and protect you should the worst befall him.~
  IF ~~ THEN GOTO NEJ547
END

IF ~~ THEN BEGIN NEJ547
  SAY ~The memories of such times are still painful but they are still good memories. We have almost come full circle in your journey, <CHARNAME>.~
  IF ~~ THEN EXTERN ~HROTHJ~ 60
END

IF ~~ THEN BEGIN NEJ548
  SAY ~Be careful, <CHARNAME>, it would not be wise to allow this mage to learn of your true identity.~
  IF ~True()~ THEN EXTERN ~TERTIA~ 5
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 62
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ262
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ154
END

IF ~~ THEN BEGIN NEJ549
  SAY ~It would appear that our friend Xan was always a despondent fellow. I had thought it was his incarceration by Mulahey in those dank mines that had made him so.~
  IF ~~ THEN DO ~SetGlobal("VP_Meeting_Xan","GLOBAL",1) ActionOverride("Xan",MoveToPointNoInterrupt([1801.455])) ActionOverride("Xan",Face(1))~ EXIT
END

IF ~~ THEN BEGIN NEJ550
  SAY ~I have always had reservations about what we are doing, Hrothgar! We cannot change what has past nor should we attempt to! As long as individuals we all strive to maintain balance in ourselves, all things will be as they should be.~
  IF ~~ THEN EXTERN ~HROTHJ~ 89
END

IF ~~ THEN BEGIN NEJ551
  SAY ~We only have Tilorn's belief that balance has tipped. He failed in his attempt and it looks as though we are about to fail too. Does that not answer your question as to whether we should be interfering here or not?~
  IF ~~ THEN EXTERN ~HROTHJ~ 90
END

IF ~~ THEN BEGIN NEJ552
  SAY ~Then maybe it is time for you to explain what this bigger picture is, Hrothgar?~
  IF ~~ THEN EXTERN ~HROTHJ~ 91
END

IF ~~ THEN BEGIN NEJ553
  SAY ~Hmmph! I just knew that was going to be your answer! There will be another time, Hrothgar.~
  IF ~~ THEN DO ~SetGlobal("VP_Leaving_Halruaa","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN NEJ554
  SAY ~We have little choice, <CHARNAME>. If the alarm is raised we stand little chance against the onslaught of magic that would be launched against us, we must act quickly!~
  IF ~True()~ THEN EXTERN ~RAYVON~ 2
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ rayvon2
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ rayvon
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ155
  IF ~InParty("Kachiko") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ60
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ264
END

IF ~~ THEN BEGIN NEJ555
  SAY ~The air here <CHARNAME>, it is different. I feel a slight chill in it but it is sweeter and more pleasant to that which we have become accustomed to.~
  IF ~InParty("Imoen")~ THEN REPLY ~This place does feel different, but we should not get our hopes up nor let our guard down because of the way we feel. One thing is for sure, we will not discover anything standing around here so I suggest we move quickly and prepare ourselves for whoever or whatever lies in wait at the bottom of these stairs.~ EXTERN ~IMOENJ~ NEJ77
  IF ~InParty("Imoen2")~ THEN REPLY ~This place does feel different, but we should not get our hopes up nor let our guard down because of the way we feel. One thing is for sure, we will not discover anything standing around here so I suggest we move quickly and prepare ourselves for whoever or whatever lies in wait at the bottom of these stairs.~ EXTERN ~IMOEN2J~ VP_FIX7
  IF ~InParty("Sharteel")~ THEN EXTERN ~SHARTJ~ nejopen1
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ265
END

IF ~~ THEN BEGIN NEJ556
  SAY ~You would do well to put aside your childish games Imoen. Look around you and see the real world for what it is, a wild and perilous place, not a playground.~
  IF ~~ THEN EXTERN ~IMOENJ~ NEJ120
END

IF ~~ THEN BEGIN NEJ557
  SAY ~Insolent child! You will do well to watch that smart mouth of yours my girl, before it lands you in real trouble.~
  IF ~~ THEN EXTERN ~IMOENJ~ NEJ121
END

IF ~~ THEN BEGIN NEJ558
  SAY ~I am relieved that at least you do not perceive me as an *old bird*. As for finding fault in others, I can only find it if it is there to find. I am merely trying to point out that what may endear you to your friends can just as easily alienate those who do not know you and your faul... uh... nature. That is all.~
  IF ~~ THEN EXTERN ~IMOENJ~ NEJ122
END

IF ~~ THEN BEGIN NEJ559
  SAY ~Imoen you have much to learn, but I do not have the patience to teach a wilful child, nor do I suspect would anyone else. You will have to learn your lessons the hard way, by experience.~
  IF ~~ THEN EXTERN ~IMOENJ~ NEJ123
END

IF ~~ THEN BEGIN NEJ560
  SAY ~(*Rolls her eyes*) I despair of you child!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ561
  SAY ~You would do well to put aside your childish games Imoen. Look around you and see the real world for what it is, a wild and perilous place, not a playground.~
  IF ~~ THEN EXTERN ~IMOEN2J~ VP_FIX36
END

IF ~~ THEN BEGIN NEJ562
  SAY ~Insolent child! You will do well to watch that smart mouth of yours my girl, before it lands you in real trouble.~
  IF ~~ THEN EXTERN ~IMOEN2J~ VP_FIX37
END

IF ~~ THEN BEGIN NEJ563
  SAY ~I am relieved that at least you do not perceive me as an *old bird*. As for finding fault in others, I can only find it if it is there to find. I am merely trying to point out that what may endear you to your friends can just as easily alienate those who do not know you and your faul... uh... nature. That is all.~
  IF ~~ THEN EXTERN ~IMOEN2J~ VP_FIX38
END

IF ~~ THEN BEGIN NEJ564
  SAY ~Imoen you have much to learn, but I do not have the patience to teach a wilful child, nor do I suspect would anyone else. You will have to learn your lessons the hard way, by experience.~
  IF ~~ THEN EXTERN ~IMOEN2J~ VP_FIX39
END

IF ~~ THEN BEGIN NEJ565
  SAY ~(*Rolls her eyes*) I despair of you child!~
  IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("VP_Jaheira_In_IWD","GLOBAL",2)~ THEN BEGIN NEJ566
  SAY ~You look troubled by this man's words <CHARNAME>. I saw nothing in his manner to cause such a look.~  [mute]
  IF ~~ THEN REPLY ~This is not possible! What is going on here?~ DO ~SetGlobal("VP_Jaheira_In_IWD","GLOBAL",3)~ GOTO NEJ567
  IF ~~ THEN REPLY ~I... I know that man Jaheira... at least I know of him.~ DO ~SetGlobal("VP_Jaheira_In_IWD","GLOBAL",3)~ GOTO NEJ568
  IF ~~ THEN REPLY ~What trick has that wizard played on us this time? I swear I will have his hide for this!~ DO ~SetGlobal("VP_Jaheira_In_IWD","GLOBAL",3)~ GOTO NEJ575
END

IF ~~ THEN BEGIN NEJ567
  SAY ~What is it <CHARNAME>? Your face, it is as white as the snow around us!~
  IF ~~ THEN REPLY ~I... I know that man Jaheira... at least I know of him.~ GOTO NEJ568
  IF ~~ THEN REPLY ~Hrothgar! A name I know but this makes no sense!~ GOTO NEJ568
END

IF ~~ THEN BEGIN NEJ568
  SAY ~You are not making sense <CHARNAME>. If we are as far north as I think we are, how could you possibly know anyone from this town?~
  IF ~~ THEN REPLY ~I did not say I knew him, only I know of him. Hrothgar of Easthaven, the name has become a legend in our time.~ GOTO NEJ569
  IF ~~ THEN REPLY ~There is something very wrong here. Legend says Hrothgar of Easthaven died over 100 years ago!~ GOTO NEJ569
  IF ~~ THEN REPLY ~I remember Gorion telling me stories of great men and women. Legends of heroes who have left their mark on The Realms in some way. Hrothgar of Easthaven was such a man.~ GOTO NEJ569
END

IF ~~ THEN BEGIN NEJ569
  SAY ~Has the portal done you an injury to your head <CHARNAME>? Legends are borne from past deeds, most men do not pass into legend until after they have left this world and Hrothgar is still very much part of this world.~
  IF ~~ THEN REPLY ~Legend tells of Hrothgar dying at the hand of a demon as he tried to defend his town, the town of Easthaven. You heard the man himself say, this is Easthaven!~ GOTO NEJ570
  IF ~~ THEN REPLY ~My head is fine thank you Jaheira. Hrothgar was said to have lost his life defending the town of Easthaven from a demon and yet, here we are in Easthaven and we have spoken to Hrothgar, is it any wonder I seem a little confused.~ GOTO NEJ570
  IF ~~ THEN REPLY ~I no more understand it than you. We are in Easthaven and Hrothgar is very much alive. Somehow we have been sent back in time and I do not mind betting that it is all Irenicus doing!~ GOTO NEJ570
END

IF ~~ THEN BEGIN NEJ570
  SAY ~Is it possible? That the portal has transport back to the past, if so for what possible reason? Could it be that this Irenicus is through with us and this is his cruel way of disposing of us so none shall learn of his crimes?~
  IF ~~ THEN REPLY ~We are in the past yes, but I am sure if Irenicus merely wanted to rid himself of us, we would be dead. Men like him have no conscience, nor do they fear retribution. No, we are here for a reason, you can be sure of that.~ GOTO NEJ571
  IF ~~ THEN REPLY ~If Irenicus meant for us to be here, then I can only imagine that he hopes we will change the past by some deed or action that will secure the future he wants for himself.~ GOTO NEJ571
  IF ~~ THEN REPLY ~We know how devious and brutal Irenicus is, he would not have had us come here if not for some devious, monstrous plan he has in that twisted head of his!~ GOTO NEJ571
END

IF ~~ THEN BEGIN NEJ571
  SAY ~This puts us in a very precarious situation <CHARNAME>. We must be vigilant and you must remember all that you know of Hrothgar and his battle with this demon. If things truly happen as legend says, we must not interfere or the balance may be disrupted irreparably. I repeat, we cannot interfere!~
  IF ~~ THEN REPLY ~I do not know this Hrothgar so it will not be a problem Jaheira.~ GOTO NEJ572
  IF ~~ THEN REPLY ~I do not know if I will be able to stand by and watch a good man die so horrible a death Jaheira?~ GOTO NEJ573
  IF ~~ THEN REPLY ~And you Jaheira, will you stand by and do nothing whilst a fellow being is torn to pieces?~ GOTO NEJ573
END

IF ~~ THEN BEGIN NEJ572
  SAY ~That is reassuring to hear <CHARNAME>, but to hear you say it without compassion in your voice saddens me. Let us hope we will not be forced to stand by our words.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ573
  SAY ~We have no choice <CHARNAME>. Do you think this is easy for me? If we are truly in the past then my own Khalid, the light in my heart, will be lost to me forever unless we find our way back to the future we left.~
  IF ~~ THEN GOTO NEJ574
END

IF ~~ THEN BEGIN NEJ574
  SAY ~No <CHARNAME>, it will not be easy for me to watch a man die to secure that future, and I will probably carry the pain with me for a very long time, but I am sworn to do that which is right in order to maintain balance in this world. Let us hope neither of us will be forced into making such a choice.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ575
  SAY ~Calm yourself <CHARNAME>. Whatever has caused such an outburst of rage from you?~
  IF ~~ THEN REPLY ~That madman has sent us to the past Jaheira! To be be more specific, he has sent us at least 100 years into the past!~ GOTO NEJ576
  IF ~~ THEN REPLY ~He is playing with my head again! To let me think I am free and then to show me that it is only an illusion! Curses on him, he will regret crossing me when I catch up to him!~ GOTO NEJ577
  IF ~~ THEN REPLY ~He cannot do this! He refuses to face me and sends us here instead!~ GOTO NEJ578
END

IF ~~ THEN BEGIN NEJ576
  SAY ~You are not making sense <CHARNAME>. What reason can you possibly have for believing we are in the past?~
  IF ~~ THEN REPLY ~That man, Hrothgar, I know him or at least I know what legend speaks of him. He died over 100 years ago defending his town from some demon. That town was Easthaven, the very same town that we now find ourselves in.~ GOTO NEJ570
  IF ~~ THEN REPLY ~This has to be another of his accursed experiments, damn this insanity! Legend says that Hrothgar of Easthaven died over 100 years ago Jaheira, he died defending this very town!~ GOTO NEJ570
END

IF ~~ THEN BEGIN NEJ577
  SAY ~Calm yourself <CHARNAME>. No one is playing with your head, least of all Irenicus. Where ever we may be, we are free of him.~
  IF ~~ THEN REPLY ~How are we free of him Jaheira? If this is to be believed, then that damned portal of his has catapulted us back into the past, which probably means only he can return us to our own time.~ GOTO NEJ576
  IF ~~ THEN REPLY ~You think so Jaheira? Do you believe Irenicus capable of travelling to the past, because if you believe all this to be real and not in my head, then that is where we are now, in the past.~ GOTO NEJ576
  IF ~~ THEN REPLY ~Free of him you say Jaheira, if you say he is not playing with my head, then we have all been sent back into the past. I doubt he would do that so we could be free of him!~ GOTO NEJ576
END

IF ~~ THEN BEGIN NEJ578
  SAY ~Calm yourself <CHARNAME>, we have not lost him yet. You forget, I also have an interest in finding this Irenicus, he still holds Khalid. It matters not where you believe we are, I will find him. Even if it means walking the length and breadth of Faerun or into The Nine Hells themselves, I will find him!~
  IF ~~ THEN REPLY ~You can walk as far as you want Jaheira, you will not find either Irenicus or Khalid in this time. They are in the future, whilst we are now in the past. Damn Irenicus and his portal!~ GOTO NEJ576
  IF ~~ THEN REPLY ~Unless we find someway back to our own time then I am afraid both Irenicus and Khalid are lost to us. You see Jaheira, that insane mage has somehow transported us back into the past.~ GOTO NEJ576
  IF ~~ THEN REPLY ~It is not so much how far you are prepared to walk to find Khalid, more like how many years are you prepared to walk? Irenicus has trapped us in the past Jaheira, him and Khalid are well out of our reach!~ GOTO NEJ576
END

IF ~~ THEN BEGIN NEJ579
  SAY ~Never before have I seen the destruction nature can bring when fully unleashed.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 113
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 26
  IF ~InParty("Accalia") !Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 31
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ139
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX55
END

IF ~~ THEN BEGIN NEJ580
  SAY ~If I had some milk thistle and dandelion root I could make you an infusion for your head right now but alas it is too cold for such herbs to be found here.~
  IF ~~ THEN GOTO NEJ581
END

IF ~~ THEN BEGIN NEJ581
  SAY ~Ghereg, I suggest you leave this area as soon as possible, gather the red and purple Frostberries that grow near hot springs. Mash them into a paste and eat them with boiled tundra grasses. That will make your head stop hurting. The remedy actually only works for ogres.~
  IF ~~ THEN DO ~AddExperienceParty(3500) SetGlobal("Ghereg_Head","GLOBAL", 3) EraseJournalEntry(%Remedy for Ghereg.

We met an ogre in a tower in Kuldahar Pass. His name was Ghereg, and his head hurt badly. He told us that he came to Kuldahar Pass from his cave, that he was "called."  He said he wanted to pound his head against the wall to make the pain go away.%) EraseJournalEntry(%Remedy for Ghereg.

We met an ogre in a tower in Kuldahar Pass. His name was Ghereg, and his head hurt badly. He said he wanted to pound his head against the wall to make the pain go away.%) EraseJournalEntry(%Remedy for Ghereg.

We met an ogre in a tower in Kuldahar Pass. His name was Ghereg, and he asked us why his head hurt. We told him that his head hurt because he was a big dummy. He got pretty angry after that.%) EraseJournalEntry(%Remedy for Ghereg.

We met an ogre in a tower in Kuldahar Pass. His name was Ghereg, and he asked us why his head hurt. We decided to leave him alone.%)~ SOLVED_JOURNAL ~Remedy for Ghereg.

We told Ghereg, the ogre in Kuldahar Pass, a recipe that would make his headache go away. He was very grateful, and promptly left.~ EXTERN ~DOGRE~ 5
END

IF ~~ THEN BEGIN NEJ582
  SAY ~Yes, and I'm sure we will speak of it again. Whether <CHARNAME> is hard of hearing or hard headed remains to be seen.~
  IF ~~ THEN EXTERN ~DARUNDEL~ 104
END

IF ~~ THEN BEGIN NEJ583
  SAY ~No Minsc, good and evil both have a place in Faerun.~
  IF ~~ THEN EXTERN ~MINSCJ~ NEJ278
END

IF ~~ THEN BEGIN NEJ584
  SAY ~To maintain balance is to understand that the conflict between good and evil will always exist on Faerun. It is impossible to have both present without this conflict.~
  IF ~~ THEN EXTERN ~DARUNDEL~ 105
END

IF ~~ THEN BEGIN NEJ585
  SAY ~Then as a druid, it is my place to strive to set the balance right.~
  IF ~~ THEN EXTERN ~DARUNDEL~ 24
END

IF ~~ THEN BEGIN NEJ586
  SAY ~My faith in Tempus is such that he would not have put this path before me if it were not the right one to follow.~
  IF ~~ THEN REPLY ~I don't see any other means of completing our mission.~ EXTERN ~HROTHJ~ 117
  IF ~~ THEN REPLY ~Why am I not surprised that the price for the success of this mission is the death of another?~ EXTERN ~HROTHJ~ 117
  IF ~~ THEN REPLY ~If this priestess is all that stands between the survival of Kuldahar, then her life is already forfeit.~ EXTERN ~HROTHJ~ 117
END

IF ~~ THEN BEGIN NEJ587
  SAY ~How about Imoen-Child-of-the-Ever-Wagging-Tongue?~
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ143
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX59
END

IF ~~ THEN BEGIN NEJ588
  SAY ~(*Sighs*) Life with <CHARNAME> is never dull.~
  IF ~True()~ THEN EXTERN ~DARJ~ 29
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ286
END

IF ~~ THEN BEGIN NEJ589
  SAY ~Tell me again Hrothgar, just how long have you known this druid Arundel?~
  IF ~~ THEN EXTERN ~HROTHJ~ 127
END

IF ~~ THEN BEGIN NEJ590
  SAY ~He may be an old and dear friend of yours Hrothgar, but he would not be the first to try and manipulate <CHARNAME> for their own ends. I reserve my judgement until this task is done.~
  IF ~!InParty("Imoen") !InParty("Imoen2") !InParty("Minsc")~ THEN REPLY ~When we have all quite finished, I think it is obvious the gem is not here and we should not waste time debating the issue but do as Hrothgar says and make our back to Kuldahar without delay.~ EXIT
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ287
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ146
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX62
END

IF ~~ THEN BEGIN NEJ591
  SAY ~If this place has truly been corrupted by evil then it is good that we are here to cleanse and balance it once again.~
  IF ~True()~ THEN EXIT
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ147
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX63
END

IF ~~ THEN BEGIN NEJ592
  SAY ~Silvanus may the soul of our brother Erevain find its way to you.~
  IF ~~ THEN REPLY ~However did he come to be here? He didn't leave with us and I am certain the avalanche has prevented anyone leaving Easthaven since our departure.~ EXTERN ~HROTHJ~ 133
  IF ~~ THEN REPLY ~A waste of a life... we could have maybe used his skills if we had known he was intent on leaving Easthaven.~ EXTERN ~HROTHJ~ 134
  IF ~~ THEN REPLY ~What did the poor fool hope to accomplish out here alone?~ EXTERN ~HROTHJ~ 135
END

IF ~~ THEN BEGIN NEJ593
  SAY ~Lack of choices is not our problem. Our problem is a lack of acceptable outcomes.~
  IF ~~ THEN EXTERN ~HROTHJ~ 275
END

IF ~~ THEN BEGIN NEJ594
  SAY ~We all do our best to look after Minsc. He needs us and we need him.~
  IF ~True()~ THEN EXTERN ~MINSCJ~ NEJ293
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ150
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX66
END

IF ~~ THEN BEGIN NEJ595
  SAY ~The heavens forbid that life with <CHARNAME> should ever be boring!~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 280
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 35
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ297
END

IF ~~ THEN BEGIN NEJ611
  SAY ~This Hrothgar, goes beyond *trust me, I can tell you no more*. If its trust you want then I suggest you think carefully on how you answer <CHARNAME>'s question! I have seen enough lies and treachery in the future... I will not suffer the same from you! Know this whilst you consider your answer.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 196
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 43
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ314
  IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 38
END

IF ~~ THEN BEGIN NEJ612
  SAY ~Look around you Accalia, do you know exactly where it is that Hrothgar has delivered us to... do you know which direction we need to take in order to return to Kuldahar? Of course you don't, Hrothgar brought us here and only he can return us, he has no need to do us any harm, not whilst he holds the key to our return.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 196
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ172
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX88
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 43
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ314
END

IF ~~ THEN BEGIN NEJ613
  SAY ~Death is as much a necessary part of nature's cycle as is birth. What we see here is an abomination in the sight of the Mother's eyes, for the cycle has been interrupted and balance in this place has been lost. It is for us to release the souls of those poor wretches and bring harmony, not only to their spirits but to the balance in this place once again.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",2) RealSetGlobalTimer("VP_Accalia_Hrothgar","GLOBAL",10)~ EXIT
  IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN EXTERN ~SHARTJ~ kaylsold
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 206
  IF ~InParty("Accalia") !Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 40
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 45
END

IF ~~ THEN BEGIN NEJ614
  SAY ~(*Rolls her eyes and clicks her tongue.*) Tch... I give up with you child! Perhaps when you gain some sense and maturity, you will have cause to think on all that I have tried to teach you.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",2) RealSetGlobalTimer("VP_Accalia_Hrothgar","GLOBAL",30)~ EXIT
  IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN EXTERN ~SHARTJ~ kaylsold
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 206
  IF ~InParty("Accalia") !Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 40
END

IF ~~ THEN BEGIN NEJ615
  SAY ~Let us hope Larrel and Geralith will have good news for us <CHARNAME>. For as much as I can sense the imbalance in this time and my duty as a druid, should be to strive to correct it, I feel strongly that this is one time we should not interfere.~
  IF ~True()~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutscene("VPCutH07")~ EXIT
  IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 42
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ317
END

IF ~~ THEN BEGIN NEJ616
  SAY ~You and me child. As much as I can sense the imbalance in this time and my duty as a druid, should be to strive to correct it, I feel strongly that this is one time we should not interfere. Let us hope Larrel and Geralith will have good news for us.~
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ177
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX93
END

IF ~~ THEN BEGIN NEJ617
  SAY ~For once you show some maturity in your words Imoen, there is hope for you yet. She is right Accalia, you know nothing. I have fought alongside <CHARNAME> and would so again in an instance.~
  IF ~~ THEN GOTO NEJ618
END

IF ~~ THEN BEGIN NEJ618
  SAY ~I can't say that I am not relieved to be going home, I have a husband that I need to see, to know that he is safe, but if <CHARNAME> gave the word then I would remain here and fight for your cause. As it is, it is time for us to leave the past alone.~
  IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 46
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ319
END

IF ~~ THEN BEGIN NEJ619
  SAY ~I see in you the courage to restore balance to this place Accalia. I wish you well.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 233
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 49
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ180
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX96
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ321
END

IF ~~ THEN BEGIN NEJ620
  SAY ~Then it is as it should be and the future will be safe. You are a brave man Hrothgar, and your cause is noble, I wish you luck in this task you have set yourself.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 225
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ181 //-->3.02
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX97 //-->3.02
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 54 //-->2.02
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ322
END

IF ~~ THEN BEGIN NEJ621
  SAY ~For once you show some maturity in your words Imoen, there is hope for you yet. She is right Accalia, you know nothing. I have fought alongside <CHARNAME> and would so again in an instance.~
  IF ~~ THEN GOTO NEJ622
END

IF ~~ THEN BEGIN NEJ622
  SAY ~I can't say that I am not relieved to be going home, I have a husband that I need to see, to know that he is safe, but if <CHARNAME> gave the word then I would remain here and fight for your cause. As it is, it is time for us to leave the past alone.~
  IF ~InParty("Accalia")~ THEN EXTERN ~ACCALIJ~ 54
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ323
END

IF ~~ THEN BEGIN NEJ623
  SAY ~I see in you the courage to restore balance to this place Accalia. I wish you well.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 258
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 59
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ185
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX101
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ325
END

IF ~~ THEN BEGIN NEJ624
  SAY ~It was you who told me to hope when I despaired of seeing Khalid again and now my hopes are dashed once again, and the pain is tenfold. What right did you have to speak to me as you did and let me hope again? I do not wish to hear any more of your words!~
  IF ~True()~ THEN GOTO 340
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 87
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ 37
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 60
END

IF ~~ THEN BEGIN NEJ625
  SAY ~You! What do you know of my pain, you who have never loved, never been loved? How can you possibly know how it feels to lose a loved one? Your words give me no comfort half-orc now leave me be.~
  IF ~True()~ THEN GOTO 340
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ 87
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ 37
END

IF ~~ THEN BEGIN NEJ626
  SAY ~My people have never worried about what has been lost to monster or to man.~
  IF ~~ THEN EXTERN ~HROTHJ~ 272
END

IF ~~ THEN BEGIN NEJ627
  SAY ~Bah! A foul business indeed. These creatures were gathering up the villagers and using them for food and as payment to the queen of the snake people!~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 273
  IF ~InParty("Accalia") !Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 59
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ148
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX64
END

IF ~~ THEN BEGIN NEJ628
  SAY ~What sense is there in delay? It will only serve to allow the enemy chance to prepare further for our arrival.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 274
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ292
  IF ~InParty("Accalia") !Dead("Accalia")~ THEN EXTERN ~ACCALIJ~ 60
END

IF ~~ THEN BEGIN NEJ629
  SAY ~Let us thank Mother earth and pray to Silvanus that our opponent doesn't change his ways.~
  IF ~True()~ THEN EXIT
  IF ~InParty("Minsc") !Dead("Minsc") OR(2) !InParty("Dar") Dead("Dar")~ THEN EXTERN ~MINSCJ~ NEJ326
  IF ~InParty("Minsc") !Dead("Minsc") InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 62
  IF ~InParty("Sharteel") !Dead("Sharteel")~ THEN EXTERN ~SHARTJ~ egenia
END

IF ~~ THEN BEGIN NEJ630
  SAY ~Now that we've taken the Gem from the creature, what are we to do with it?~
  IF ~~ THEN EXTERN ~HROTHJ~ 149
END

IF ~~ THEN BEGIN NEJ631
  SAY ~Calm yourself child, whatever the wager, let's not disappoint them.~
  IF ~~ THEN EXTERN ~HROTHJ~ 282
END

IF ~~ THEN BEGIN NEJ632
  SAY ~Best not to look for allies in this forsaken place... we are on our own here.~
  IF ~~ THEN EXTERN ~HROTHJ~ 283
END

IF ~~ THEN BEGIN NEJ633
  SAY ~Then it is as it should be and the future will be safe. You are a brave man Hrothgar, and your cause is noble, I wish you luck in this task you have set yourself.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 250
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ NEJ191
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ VP_FIX107
  IF ~InParty("Dar")~ THEN EXTERN ~DARJ~ 66
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ329
END

IF ~~ THEN BEGIN NEJ634
  SAY ~I shudder when I think what this Necromancer intends for that poor souls body. Visions of my own Khalid's body broken and violated by Irenicus swim before my eyes. Such perversion should not be allowed <CHARNAME>!~
  IF ~True()~ THEN EXIT
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ224
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ200
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ166
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ NEJ312
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ NEJ255
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 70
  IF ~InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ NEJ119
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ NEJ199
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ NEJ333
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~AERIEJ~ NEJ235
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ331
  IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ156
END

IF ~~ THEN BEGIN NEJ635
  SAY ~I swear I do not understand you <CHARNAME>, taking on such a request and you knowing  full well what the necromancer had in mind to do with that poor souls's body.~
  = ~You saw the way Irenicus had defiled my Khalid's body and how it cut my heart to see him laid out so. If you were not repulsed by such desecration then I fear I do not know you at all.~
  IF ~True()~ THEN DO ~ActionOverride("TuEzek",EscapeArea())~ EXIT
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ 290
END

IF ~~ THEN BEGIN NEJ636
  SAY ~Or not! We could just as easily have tipped the balance in ways we can not know.~
  = ~We have no idea of what changes have already taken place simply because we are here and have found the thing, but having found it we can not more leave it here than deploy it ourselves even if we had the key.~
  IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ THEN REPLY ~Then it is decided, we take it with us.~ EXTERN ~HROTHJ~ 336
  IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ THEN REPLY ~We'll not know anything until Tilorn gets us safely out of here, lets hope he does it before RayVon discovers his mages are dead and his artifact is missing.~ EXTERN ~HROTHJ~ 336
  IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ THEN REPLY ~Why does everything seem to rely on keys around here?~ EXTERN ~HROTHJ~ 337
  IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ THEN REPLY ~If it's made by mages then it may not necessarily need a key, it could just as easily need some incantation of sorts to start the thing up.~ EXTERN ~HROTHJ~ 337
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ337
END

IF ~~ THEN BEGIN NEJ638
  SAY ~Non of us are going to survive if you two carry on shouting at each other. Be thankful that there were no students to witness your little set to!~
  = ~Hrothgar is only expressing his concern for the group <CHARNAME>, not criticising your leadership. Now for all our sakes, stop being so defensive and take us out of here.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 398
  IF ~!Dead("Dar") InParty("Dar")~ THEN EXTERN ~DARJ~ 91
END

IF ~~ THEN BEGIN sharaval
  SAY ~All our bodies are destined to feed nature Shar-Teel, but that does not mean we gloat when death takes our companions so swiftly and so horribly. Have a care with your words in future my girl!~
  IF ~~ THEN EXTERN ~HROTHJ~ 401
END

IF ~~ THEN BEGIN vulova
  SAY ~(*Rolls her eyes*) Those two would try the patience of Ilmater himself, <CHARNAME>.~
  = ~Apart from that bit of trouble we had with Minsc and Edwin over Dynaheir in Nashkiel, I don't recall having a more argumentative pair in party...ever!~
  IF ~True()~ THEN EXIT
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ vulova
END

IF ~~ THEN BEGIN meloraqt
  SAY ~Nature has been wronged here <CHARNAME>. I can feel her sorrow over the way she feels she has been abused in this place. We should walk carefully.~
  IF ~~ THEN DO ~SetGlobal("VP_Melora_Quest","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN shendru
  SAY ~You are an abomination druid! Nay, I will not address you as such, for you are no protector of the mother's children.~
  = ~As it was your failure to maintain balance in yourself that has caused the corruption here, so shall it be your blood that helps to cleanse it.~
  IF ~~ THEN EXTERN ~SHENDRU~ 7
END

IF ~AreaCheck("AR1900") Global("VP_Jahi_In_DrGrove","LOCALS",0)~ THEN BEGIN DG1
  SAY ~I sense the struggle of nature herself as she battles to flourish and grow in this place <CHARNAME>. We must find what has caused this disturbance in the balance here and quickly.~
  IF ~~ THEN DO ~SetGlobal("VP_Jahi_In_DrGrove","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN DG2
  SAY ~Well met Erhard. I sense a great imbalance in this wood and knowing that this grove is out of your jurisdiction, it worries me that what I sense warrants the attention of one of the Great Druids.~
  IF ~~ THEN EXTERN ~ERHARD~ 2
END

IF ~~ THEN BEGIN DG3
  SAY ~<CHARNAME>, this is a matter I am bound to look into, please, Erhard needs our aid here.~
  IF ~~ THEN EXTERN ~ERHARD~ 18
END

IF ~~ THEN BEGIN tafficuh
  SAY ~Will mortals never learn to leave nature alone! Is it any wonder the work of a druid is never done when men persist in upsetting the balance in ways such as this!~
  IF ~True()~ THEN EXTERN ~TAFFICP~ umberhk3
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ tafficuh
  IF ~InParty("Kachiko") InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ tafficuh
  IF ~InParty("Yoshimo") InParty("Kachiko") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ tafficuh
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ tafficuh
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ tafficuh
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ tafficuh
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ tafficuh
  IF ~InParty("Nalia") !Dead("Nalia") OR(2) Global("EnteredAR1304","GLOBAL",1) !Global("NaliaKeepPlot","GLOBAL",0)~ THEN EXTERN ~NALIAJ~ tafficuh
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ tafficuh
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ tafficuh
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ tafficuh
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ tafficuh
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ tafficuh
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~VICONIJ~ tafficuh
  IF ~InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ tafficuh
  IF ~InParty("Aerie") !Dead("Aerie")~ THEN EXTERN ~AERIEJ~ tafficuh
END

END