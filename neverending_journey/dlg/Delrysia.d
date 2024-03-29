BEGIN ~Delrysia~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Please, I beg you, do not kill me! I am not what you see.~
  IF ~~ THEN REPLY ~Speak quickly foul creature before I put an end to your undead life!~ GOTO 1
  IF ~~ THEN REPLY ~If not what I see, then speak and tell me, what are you?~ GOTO 1
  IF ~~ THEN REPLY ~A ghoul that speaks so fluently? What trick is this?~ GOTO 2
  IF ~~ THEN REPLY ~More deceit! Enough! I will not listen to any more!~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY ~I am Delrysia, once a student of Halruaa. What you see now is the result of an experiment that went tragically wrong. Please, I beg you again, please help me return to what I once was!~
  IF ~~ THEN REPLY ~Why should I help you, Delrysia? Is it not your own fault that you are as you are? Before you answer, I have already spoken with Bartlemy.~ GOTO 3
  IF ~~ THEN REPLY ~You caused the death of three of your friends and left Bartlemy to shoulder the blame. Give me one reason why I should help you, Delrysia?~ GOTO 3
  IF ~~ THEN REPLY ~You are a coward, Delrysia! You left three dead and another to face the consequences of your actions. You deserve your wretched existence.~ GOTO 3
  IF ~~ THEN REPLY ~Give me Bartlemy's ring and I will end this wretched existence for you permanently!~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~No, please, there is no deception on my part! I am Delrsyia. What you see now is the result of an experiment that went tragically wrong. Please, I beg you again, please help me to return to what I once was!~
  IF ~~ THEN REPLY ~Why should I help you, Delrysia? Is it not your own fault that you are as you are? Before you answer, I have already spoken with Bartlemy.~ GOTO 3
  IF ~~ THEN REPLY ~You caused the death of three of your friends and left Bartlemy to shoulder the blame. Give me one reason why I should help you, Delrysia?~ GOTO 3
  IF ~~ THEN REPLY ~You are a coward, Delrysia! You left three dead and another to face the consequences of your actions. You deserve your wretched existence.~ GOTO 3
  IF ~~ THEN REPLY ~Give me Bartlemy's ring and I will end this wretched existence for you permanently!~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~You have spoken with Bartlemy... then know he will say anything to get his hands on this ring! I am, or was, studying to specialise as a water elementalist. It was his necromantic idea that caused the explosion, making me what I am today!~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~His banishment is nothing compared to this undead life that I am forced to live. We told him it was dangerous to deviate from the set formulae, but he insisted anyway, three of my friends payed for his conceit with their lives that day.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~I know he has the means to undo what he has done, a spell, a potion of sorts, he was always bragging of his achievements. I will bargain my release for the ring I know he desperately wants. It is useless any way unless he can find a mage stupid enough to finish our work on it!~
  IF ~!Dead("Bartlemy")~ THEN REPLY ~You are saying that he is the necromancer when he would have me believe otherwise?~ GOTO 11
  IF ~!Dead("Bartlemy")~ THEN REPLY ~Why should I believe your story anymore than I believe his?~ GOTO 11
  IF ~!Dead("Bartlemy")~ THEN REPLY ~What is stopping me from killing you and taking the ring for myself?~ GOTO 11
  IF ~Dead("Bartlemy")~ THEN REPLY ~It is too late. Bartlemy is dead, he cannot help you now.~ GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~Dead? Then all is lost for me. Did you search his body? Maybe he was carrying a potion or a scroll, I am certain he knew of my plight and would have been carrying such a thing to bargain with if the chance ever arose?~
  IF ~PartyHasItem("TuPotnD1")~ THEN REPLY ~I did find a potion on Bartlemy's body but I have no idea if it is the one that you need. You are welcome to try it if you wish, in exchange for the ring that is.~ GOTO 8
  IF ~PartyHasItem("TuPotnD1")~ THEN REPLY ~Here take this, it was all I found on Bartlemy's body. The ring please?!~ GOTO 8
  IF ~~ THEN REPLY ~No I did not find such an item. Bartlemy lied about the portal and I think you lie also!~ UNSOLVED_JOURNAL ~A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy's necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. One of the two was lying, that was clear, but I had been given the run around long enough. I decided to end my involvement with them once and for all and get on with my own concerns.~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~(*She becomes angry*)... I don't believe you, Bartlemy knew of my plight, he also knew that there was a chance that I would take the ring with me when I ran. He would have made sure he had something to bargain with before embarking on his search... you shall not have the ring, nor shall anyone in this cursed academy.~
  IF ~~ THEN DO ~SetGlobal("VP_Meeting_Delrysia","GLOBAL",2) DestroyItem("DeRing") ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT08")~ EXIT // Delrysia turns hostile and attacks
END

IF ~~ THEN BEGIN 8
  SAY ~I thank you for what you have done for me. You have the ring, now do with it as you please. It has cost me three friends and one I once called friend, I am well rid of it.~
  IF ~~ THEN UNSOLVED_JOURNAL ~A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy's necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. I gave Bartlemy's potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy's ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY ~I will warn you that only an elementalist mage should be entrusted to complete the ring. The original rings were forged by four, one from each of the elemental schools and rumour says they were also siblings. Whether that is a necessary condition in the forging I cannot say as it is only rumour.~
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY ~This ring was complete except for my part, as I said previously, I was studying to specialise as a water elementalist and should have immediately followed Sheveira, she was our fire elementalist, but Bartlemy insisted we add the necromantic component before I acted. I urge you do not to attempt to restore it yourself. Farewell and thank you again my friend.~
  IF ~~ THEN DO ~SetGlobal("VP_Meeting_Delrysia","GLOBAL",3) SetGlobal("VP_Restore_Ring","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT06")~ EXIT // Delrysia leaves granting the ring
END

IF ~~ THEN BEGIN 11
  SAY ~Believe what you wish. I have no use for the ring, if you free me the ring will be yours to give to Bartlemy or to keep for yourself, this I swear to you. If you decide to kill me, I will welcome the release, but be warned I do not carry it with me.~
  IF ~~ THEN REPLY ~I am getting very tired of these games! I will speak with Bartlemy once more, not that I trust either of you, but I will have the truth one way or another! Be here with the ring when I return.~ UNSOLVED_JOURNAL ~A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy's necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state.~ GOTO 12
  IF ~~ THEN REPLY ~I will speak with Bartlemy again, Delrysia, not because I believe you, more because I pity you. No matter what you brought upon yourself, I cannot believe this to be a fitting punishment. I will return soon.~ UNSOLVED_JOURNAL ~A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy's necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state.~ GOTO 12
  IF ~~ THEN REPLY ~Enough! I will waste no more time on either of you!~ UNSOLVED_JOURNAL ~A Ring Of Might.

I was not prepared for what I was to meet when I finally encountered Delrysia, for she was now a wretched undead creature, no longer recognisable as human. All of which she blamed on Bartlemy's necromantic component. She agreed to barter the ring of might if Bartlemy would free her from her undead state. One of the two was lying, that was clear, but I had been given the run around long enough. I decided to end my involvement with them once and for all and get on with my own concerns.~ GOTO 23 // Delrysia turns hostile and attacks
END // => Bartlemy 22 => Lavallin 24

IF ~~ THEN BEGIN 12
  SAY ~I will be here, and remember, Bartlemy lies and will say anything to coerce you into retrieving this ring.~
  IF ~~ THEN DO ~SetGlobal("VP_Meeting_Delrysia","GLOBAL",4)~ EXIT // Delrysia is waiting for the potion
END // => Bartlemy 18 => Lavallin 21

IF ~GlobalGT("VP_Lavallins_Plot","GLOBAL",10)~ THEN BEGIN 13
  SAY ~You have spoken to Bartlemy? Has he agreed to help me?~
  IF ~PartyHasItem("TuPotnD1") Global("VP_Lavallins_Plot","GLOBAL",11)~ THEN REPLY ~I have a potion that Bartlemy was carrying. He spoke of having the means to free you but would not surrender it willingly. I had no choice other than to kill him for it. The ring for the potion Delrysia?~ GOTO 14
  IF ~PartyHasItem("TuPotnD1") Global("VP_Lavallins_Plot","GLOBAL",12)~ THEN REPLY ~I have a potion that Bartlemy has given to me. The ring for the potion Delrysia?~ GOTO 14
  IF ~Global("VP_Lavallins_Plot","GLOBAL",11)~ THEN REPLY ~I have a potion which I took from Bartlemy's body. More to the point, do you have the ring?~ GOTO 19
  IF ~Global("VP_Lavallins_Plot","GLOBAL",12)~ THEN REPLY ~Bartlemy has given me a potion but you must agree to help him restore the ring before I give it to you?~ GOTO 20
  IF ~Global("VP_Lavallins_Plot","GLOBAL",11)~ THEN REPLY ~I have a potion which I took from Bartlemy's body, I will give it to you only if you agree to help me restore the ring?~ GOTO 20
END

IF ~~ THEN BEGIN 14
  SAY ~(*You hand her the potion and she gives you a ring in return*)... I thank you for what you have done for me. You have the ring, now do with it as you please. It has cost me three friends and one I once called friend, I am well rid of it.~
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~I will warn you that only an elementalist mage should be entrusted to complete the ring. The original rings were forged by four, one from each of the elemental schools and rumour says they were also siblings.~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~Whether that is a necessary condition in the forging I cannot say as it is only rumour, but this ring was complete except for my part.~
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY ~As I said previously, I was studying to specialise as a water elementalist and should have immediately followed Merdock, he was our fire elementalist, but Bartlemy insisted we add the necromantic component before I acted.~
  IF ~~ THEN JOURNAL ~A Ring Of Might.

I gave Bartlemy's potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy's ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY ~I urge you do not to attempt to restore it yourself. Farewell, and thank you again, my friend... (*She gulps down the potion and instantly returns to her human form*)...~
  IF ~~ THEN DO ~SetGlobal("VP_Restore_Ring","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT06")~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY ~That I will not say until the potion is in my hand. I no more trust you than you do I!~
  IF ~~ THEN REPLY ~You are in no position to try and bargain with me, Delrysia! The ring... please!~ GOTO 21
  IF ~Global("VP_Lavallins_Plot","GLOBAL",11)~ THEN REPLY ~Bartlemy tried to coerce me and look where that got him, Delrysia! The ring!!~ GOTO 21
  IF ~~ THEN REPLY ~Your life, or should that be unlife, is in my hands, Delrysia. Dare you argue with me!?~ GOTO 21
END

IF ~~ THEN BEGIN 20
  SAY ~That I will never do, there has been enough death over this cursed ring! I would rather remain as I am or die by your hand than risk another life. The choice is yours.~
  IF ~~ THEN REPLY ~You are in no position to try and bargain with me, Delrysia! The ring... please!~ GOTO 21
  IF ~Global("VP_Lavallins_Plot","GLOBAL",11)~ THEN REPLY ~Bartlemy tried to coerce me and look where that got him, Delrysia! The ring!!~ GOTO 21
  IF ~~ THEN REPLY ~Your life, or should that be unlife, is in my hands, Delrysia. Dare you argue with me!?~ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY ~If you have no intentions in giving me the potion then, as I have already said, death by your hand will be a welcome release, but are you so sure that the ring is on my person? It would be a shame to leave empty handed after you have gone to so much trouble to secure it.~
  IF ~PartyHasItem("TuPotnD1")~ THEN REPLY ~Damn you woman! Take the potion it is of no use to me!~ JOURNAL ~A Ring Of Might.

I gave Bartlemy's potion to Delrysia in the hope that it would restore her. It was a great relief to see that it worked, I had feared that the necromancer may have concocted a potion to harm her rather than cure her. In return she has given me what can only be Bartlemy's ring of might and a warning that only an elementalist mage should be entrusted to attempt to finish that which they had started.~ GOTO 22
  IF ~~ THEN REPLY ~I think you are desperate enough not to return here without it. Shall we find out?~ GOTO 24
END

IF ~~ THEN BEGIN 22
  SAY ~I thank you for your aid. The ring is yours to do with as you please. I give you one piece of advice do not try to restore the ring yourself.~
  IF ~~ THEN DO ~SetGlobal("VP_Restore_Ring","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT06")~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY ~If you have no intentions to help me, death by your hand will be a welcome release.~
  IF ~~ THEN DO ~SetGlobal("VP_Meeting_Delrysia","GLOBAL",2) DestroyItem("DeRing") ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT08")~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY ~As you wish.~
  IF ~~ THEN DO ~SetGlobal("VP_Restore_Ring","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT08")~ EXIT
END