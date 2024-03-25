APPEND ~EDWINJ~

IF ~~ THEN BEGIN NEJ188
  SAY ~Ulcaster! I am to return to Ulcaster after all the trouble I had  making my way to Athkatla! Why I ask myself, do I let the likes of you lead?!~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 60
  IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ NEJ546
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ260
  IF ~InParty("Kachiko") InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ57
  IF ~InParty("Yoshimo") InParty("Kachiko") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ152
  IF ~InParty("Kachiko") !InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ58
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ 35
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ 7
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 12
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ158
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ NEJ206
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ NEJ321
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ NEJ252
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ222
END

IF ~~ THEN BEGIN NEJ189
  SAY ~Posing as wizards in an academy full of them! You buffoons will never carry  this off! This will be a suicide mission for us all. It would be sensible if you let me do all the talking once we arrive, I value my life if you do not.~
  IF ~True()~ THEN EXTERN ~TILORN~ 19
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ NEJ261
  IF ~InParty("Kachiko") InParty("Yoshimo") !Dead("Kachiko")~ THEN EXTERN ~KACHIJ~ NEJ59
  IF ~InParty("Yoshimo") InParty("Kachiko") !Dead("Yoshimo")~ THEN EXTERN ~YOSHJ~ NEJ153
  IF ~InParty("Leina") !Dead("Leina")~ THEN EXTERN ~LEINAJ~ 36
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ 8
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ159
  IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN EXTERN ~MAZZYJ~ NEJ207
  IF ~InParty("Nalia") !Dead("Nalia")~ THEN EXTERN ~NALIAJ~ NEJ322
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ NEJ253
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ223
END

IF ~~ THEN BEGIN NEJ190
  SAY ~If you expect to carry this off, now would be a good time for me to take the lead. (*Even garbed in robes, it's still easy to see through this group for the rabble they are.*)~
  IF ~True()~ THEN EXIT
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ161
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ 11
END

IF ~~ THEN BEGIN NEJ191
  SAY ~And if we put you up front my dear we wouldn't stand a cat in hells chance of getting in. When was the last time you saw a hafling with a mind brilliant enough to hold magic? (*One has to wonder if her father's brain and talents were as small as she is.*)~
  IF ~~ THEN EXTERN ~MELORAJ~ 12
END

IF ~~ THEN BEGIN NEJ192
  SAY ~YOU want ME to allow this pathetic despondent fairy to assess my competency as a mage? My answer to that is  No... NO... AND NO! I will see the nine hells freeze over before I allow that to happen!~
  IF ~~ THEN REPLY ~Please I understand how all this is beneath you but please Edwin, we stand to gain some new scrolls if you will do this for me. Scrolls we will never get the chance to acquire again.~ GOTO NEJ193
  IF ~~ THEN REPLY ~I just knew that I was going to regret asking you, but please Edwin, you are the group's mage and as such the only one who can win these rare scrolls for us.~ GOTO NEJ193
END

IF ~~ THEN BEGIN NEJ193
  SAY ~I have no need for the scrolls you speak of. This is a matter of one's own self pride and one's dignity that you are asking me to forget. NO, I WILL NOT be judged by a morose, woodland fairy.~
  IF ~~ THEN REPLY ~Edwin please, no one is asking you to sacrifice your pride or you dignity here. Think for a moment, Xan's and our time has occurred, it is now in our past. You have no need to face him again and I will assure you that what ever occurs here will not be spoken of outside the group. Please reconsider Edwin?~ GOTO NEJ194
  IF ~~ THEN REPLY ~I'll not beg you Edwin, I too have my pride and dignity but I will ask you once more to please reconsider. Is there nothing I can say that will change your mind, nothing at all?~ GOTO NEJ194
END

IF ~~ THEN BEGIN NEJ194
  SAY ~You walk a fine line <CHARNAME> and I am warning you not to cross it!~
  IF ~~ THEN GOTO NEJ195
END

IF ~~ THEN BEGIN NEJ195
  SAY ~I have given you my answer and if you force me to repeat it, I will do so in the most uncomfortable way for you that I can think of, and my imagination is as vast as my intelligence. Understood!

(*He looks you in the eye, his own eyes hard and steely. You know Edwin well enough to know that his threats are not idle, and you also get the feeling that he does not expect an answer from you*).~
  IF ~~ THEN EXTERN ~XANH~ 45
END

IF ~~ THEN BEGIN NEJ196
  SAY ~Whereas I would normally prefer not to waste my valuable time and genius on showmanship, this Halruaan conjurer with his airs of superiority and condescending manner, could do well to learn a few things from a master.~
  IF ~~ THEN DO ~SetGlobal("VP_Edwin_ConQuest","GLOBAL",1)~ EXTERN ~TUMORD~ 15
END

IF ~~ THEN BEGIN NEJ197
  SAY ~So that is the way of it, my own astuteness amazes even me at times. Give the students scrolls that have been doctored, they then fail and have to pay again to study further. I could almost come to like this mage, still he shouldn't have tried to deceive one with more intelligence than himself...  (*Begins  to unleash a spell*)...~
  IF ~~ THEN REPLY ~Edwin, hold a moment. Killing this mage may make you feel better, and I suppose he deserves killing for thinking he could deceive you, but please, having demonstrated your superiority by uncovering his ruse, please consider the safety of us all if we set Halruaa's mages  against us.~ GOTO NEJ198
  IF ~!Class(Player1,MAGE_ALL)~ THEN REPLY ~Edwin please, killing Mordecai is only going to aggravate Halruaa's mages and that is not a situation we want to have to deal with at this present moment.~ GOTO NEJ198
END

IF ~~ THEN BEGIN NEJ198
  SAY ~Luckily the fool has his back to me, I am not in the habit of killing a man unless I can see his face as he dies.~
  IF ~~ THEN DO ~ActionOverride("TuMord",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN NEJ199
  SAY ~If the fool mage can not take adequate precautions for the care of his body after death then he deserves no better. (*Whereas I myself will have no such problems as I intend to make sure I am never taken by death.*)~
  IF ~True()~ THEN EXIT
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ224
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ200
  IF ~InParty("Valygar") !Dead("Valygar")~ THEN EXTERN ~VALYGARJ~ NEJ166
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ NEJ312
  IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN EXTERN ~KELDORJ~ NEJ255
  IF ~InParty("Dar") !Dead("Dar")~ THEN EXTERN ~DARJ~ 70
  IF ~InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ NEJ119
END

IF ~~ THEN BEGIN tranfail
  SAY ~I don't recall asking for anyone's interference ...  DID I?!~
  IF ~~ THEN REPLY ~Edwin please, Malvolio sees you as one of his students and not as the accomplished mage that you are. My guess is he erred on the side of caution for fear he would lose his position if a student died during one of his tests. In no way does this outcome reflect on your genius nor is it a failing on your part.~ GOTO tranfai2
  IF ~~ THEN REPLY ~Edwin, Malvolio wouldn't know greatness if it came up and hit him in the face. He acted hastily in ending the test and therefore not really giving you a fair chance. You should not look on this as a failing in yourself or your brilliance. ~ GOTO tranfai2
END

IF ~~ THEN BEGIN tranfai2
  SAY ~FAILING! That is a word that no longer exists in my vocabulary when I allude to myself and you will be wise to lose it from yours when referring to Edwin Odesseiron in future conversations. If that is too syllabic for you, remember, I also answer to sir.~
  IF ~~ THEN EXTERN ~TUMALV~ 24
END

IF ~~ THEN BEGIN rayvon
  SAY ~All your bumbling about, I am not surprised we have been discovered. I, Edwin Odesseiron, the only one here *not* masquerading as a mage was the only one ever likely to pull this foolhardy stunt off. (*Now I suppose these imbeciles will look to me to get them out of this mess.*)~
  IF ~True()~ THEN EXTERN ~RAYVON~ 2
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN EXTERN ~HROTHJ~ rayvon2
END

IF ~~ THEN BEGIN invoker1
  SAY ~And do what, reduce my standing as eminent red wizard to nothing more than common exterminator of vermin?!~
  = ~You have the effrontery to suggest such a thing to me, be thankful that I don't deal in vermin control otherwise you wouldn't be standing here now!~
  IF ~~ THEN REPLY ~I understand your anger at me Edwin, but had there been another even remotely as competent as you, I would not have asked this mundane task of you. Please, there are valuable prizes to be won if you would just allow yourself to see past the nature of what is being asked.~ GOTO invoker2
  IF ~~ THEN REPLY ~I understand your distaste for such a menial task, but without your help there really is no way we can win these valuable prizes.~ GOTO invoker2
END

IF ~~ THEN BEGIN invoker2
  SAY ~As much as your insignificant group has prospered since coming under my wing, they still lack the intelligence needed to complete the most menial of tasks.~
  = ~I have no need for  inconsequential trinkets but who am I to deny them the chance of seeing real genius at work.~
  = ~(*One has to wonder how these clowns managed to blunder their way through from one day to the next before I ingratiated myself into their company.*)~
  IF ~~ THEN DO ~SetGlobal("VP_Edwin_InvQuest","GLOBAL",1)~ EXTERN ~TUTHEOD~ edwtest1
END

IF ~~ THEN BEGIN invfail
  SAY ~You moronic imbecile! How dare you presume to say that I was in over my depth!~
  = ~Any idiot could have seen that I was only just getting into my stride, that I was toying with them, showing them what it meant to cross the path of a real wizard.~
  = ~I was just about to finish the job when you had the audacity to intercede!~
  IF ~~ THEN REPLY ~Edwin, please if the mages learn that you are an extremely competent red wizard the game will be up and all our lives will be forfeit. Let's just leave him to take care of the problem himself.~ GOTO invfail2
  IF ~~ THEN REPLY ~You were probably doing too well Edwin and he couldn't let it be known that a student was more adept than himself. After all, he doesn't realise the true extent of the power that you wield. Let's forget about his trinkets before he starts asking awkward questions.~ GOTO invfail2
END

IF ~~ THEN BEGIN invfail2
  SAY ~All this trying to disguise my true magnificence is becoming very tiresome.~
  = ~These bumbling, ignorant mages may be too stupid to see what is in right under their noses, but do not presume <CHARNAME> that I will continue to demean my self in front of them, on your behalf in a bid to win some paltry prizes.~
  = ~(*These buffoons, just because they have no need to be other than they are in order to fool those here, they have no idea how difficult it is for one such as myself to have to disguise the aura of true genius.*)~
  IF ~~ THEN EXTERN ~TUTHEOD~ failtest
END

IF ~~ THEN BEGIN tafficuh
  SAY ~Why do gnomes persist in thinking they have a mind capable of storing magic? Does this not prove that the inferior brain of a gnome is not meant to be anything other than the brain of a gnome.~
  = ~(*Unless of course it is in the head of a creature of similar intellect.*)~
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
END

IF ~~ THEN BEGIN transmut
  SAY ~Just the sort of thing I would expect to hear from one without two brain cells to rub together! One gains satisfaction when one's genius is recognised, not when it goes unnoticed! However, I am guessing this is your way of spurring me into passing this mage's puerile test for you.~
  = ~I know how difficult words of more than one syllable can be for you but I do understand monosyllabic speech so the next time, you want something of me, do me the courtesy of plain speaking.~
  = ~(*Then again, I forget how others stand in awe and are overwhelmed when in my presence. Words can not come easy to them*)~
  IF ~~ THEN REPLY ~Is that a yes or a no Edwin?~ GOTO transmu1
END

IF ~~ THEN BEGIN transmu1
  SAY ~Do I have to spell every thing out to you? If I had meant no I would have said no!~
  IF ~~ THEN DO ~SetGlobal("VP_Edwin_TraQuest","GLOBAL",1)~ EXTERN ~TUMALV~ edwin
END

IF ~~ THEN BEGIN abjurer
  SAY ~If I pass... if I pass... You said IF I PASS! What do you mean by IF?~
  IF ~~ THEN REPLY ~Edwin forgive me, I meant to have said *when* you pass. A slip of the tongue on my part, no more. Please, no insult to yourself was intended, of course you will pass and I have no doubt with honours.~ GOTO abjurer1
  IF ~~ THEN REPLY ~Edwin please, not so loud, no-one here is doubting your ability. The mistake was mine, a slip of the tongue, which I am sure you will be gracious enough to forgive. Now let's show this mage what a real wizard can do, what do you say Edwin?~ GOTO abjurer1
END

IF ~~ THEN BEGIN abjurer1
  SAY ~Many a man has died for less than a slip of the tongue, remember that in future. I will however give this person a few minutes of my time, if only to show him the splendour of a real wizard in action. (*That is, providing my brilliance doesn't overcome him*).~
  IF ~~ THEN DO ~SetGlobal("VP_Edwin_AbjQuest","GLOBAL",1)~ EXTERN ~TUPHIN~ edwcast
END

IF ~~ THEN BEGIN abjurer2
  SAY ~(*About to unleash a spell of his own*) Let's see how good your protection spells are wizard...~
  IF ~~ THEN REPLY ~EDWIN, NO! Sorry, I didn't mean to raise my voice, but please think... he's not worth the risk of incurring the wrath of Halruaa's mages.~ GOTO abjurer3
  IF ~~ THEN REPLY ~Edwin, the tests were obviously fixed and I agree this mage deserves whatever it is you are about to throw at him, but please think for a moment... we really don't need to draw attention to ourselves in this way.~ GOTO abjurer3
  IF ~~ THEN REPLY ~Edwin wait... we all know that you are the better mage here and we don't need their trinkets to prove it.~ GOTO abjurer4
END

IF ~~ THEN BEGIN abjurer3
  SAY ~Then if I suffer this moronic imbecile to live solely to save your own insignificant life, remember you owe me, <CHARNAME>, you owe me and I WILL collect someday in the future. (*He drops his hands, the incantation is left unfinished*).~
  IF ~~ THEN EXTERN ~TUPHIN~ npcfail
END

IF ~~ THEN BEGIN abjurer4
  SAY ~Bah, you think I don't see the fear for your own insignificant life behind your words! It doesn't take tremendous amounts of intelligence to recognise superiority when you see it and this retarded imbecile should pay for his shortsightedness.~
  = ~However, if I suffer this moronic ignoramus to live solely to save yourself, remember you owe me, <CHARNAME>, you owe me and I WILL collect someday in the future. (*He drops his hands, the incantation is left unfinished*).~
  IF ~~ THEN EXTERN ~TUPHIN~ npcfail
END

IF ~~ THEN BEGIN vashtest
  SAY ~Semi literate sub moron, has the gall to believe that anything he might ask will be a challenge to me, but I suppose we had better get on with it. By the way, that means yes I am ready in case you have trouble understanding words of more than one syllable.~
  IF ~~ THEN DO ~SetGlobal("VP_Edwin_IllQuest","GLOBAL",1)~ EXTERN ~TUVASHON~ edwin
END

IF ~~ THEN BEGIN vashon
  SAY ~I consider that test to be an insult to my intelligence. I had heard this was an academy of some notoriety, bent on teaching the specialist mage, and yet you now expect your students to be proficient in the skills of common thievery.~
  = ~I always had my doubts about the standards of instruction here and this little charade proves my theory on just how low they are.~
  = ~(*It's no wonder the specialists of the future have only a fraction of the competence and intelligence of yours truly if this is where their predecessors learnt their art*).~
  IF ~~ THEN REPLY ~You are right as always Edwin and I should never have asked you to consider such a demeaning exam. My own selfishness in wanting the prizes blinded me to the insult that I was bestowing on you by even daring to think to ask such a thing of you. I hope you can forgive this indiscretion of mine.~ GOTO vashon3
  IF ~~ THEN REPLY ~Forgive me Edwin, it was selfish and thoughtless of me to ask such a demeaning task of you.~ GOTO vashon3
END

IF ~~ THEN BEGIN vashon3
  SAY ~Not everyone can be perfect and it is inevitable that you will make mistakes as you blunder through your life <CHARNAME>, you can not help yourself.~
  = ~Whereas, just because  I never need to seek forgiveness for myself, it doesn't mean that I can not be forgiving. Apology accepted... this time.~
  = ~(*I do love to see the sub moronic species grovel, it gives one a feeling of... superiority*).~
  IF ~~ THEN EXTERN ~TUVASHON~ npcfail
END

END