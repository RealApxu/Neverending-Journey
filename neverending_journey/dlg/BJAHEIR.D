APPEND ~BJAHEIR~

IF ~~ THEN BEGIN NEJ461
  SAY ~It is of Khalid I think Hrothgar. I have not seen him since we were taken and we have never been apart since our pairing. I cannot rid myself of the thoughts of him still suffering whilst I am free.~
  IF ~~ THEN EXTERN ~BHROTH~ 49
END

IF ~~ THEN BEGIN NEJ462
  SAY ~You do not understand Hrothgar, Khalid is a man with a gentle heart, he is not afraid to stand and fight but he would prefer that he did not have to. He took on the guardianship of <CHARNAME> when <PRO_HISHER> foster father died because I convinced him it was our duty to do so. He followed because he believed in me, Hrothgar and now he is lost, still in the clutches of that insane mage and I walk free!~
  IF ~~ THEN EXTERN ~BHROTH~ 50
END

IF ~~ THEN BEGIN NEJ463
  SAY ~Maybe not Hrothgar, but that does not lessen the responsibility that I feel and now, being here in this strange time, I fear I will never see or touch the face of the man I love again. I would hate that he thinks I have abandoned him.~
  IF ~~ THEN EXTERN ~BHROTH~ 51
END

IF ~~ THEN BEGIN NEJ464
  SAY ~I hear what it is you are saying Hrothgar and I thank you for what you are trying to do, but I will not rest easy until Khalid walks once more by my side.~
  IF ~~ THEN EXTERN ~BHROTH~ 52
END

IF ~~ THEN BEGIN NEJ465
  SAY ~Be careful how you answer him <CHARNAME>. Balance between past and present is a very slender thread and is easily frayed.~
  IF ~~ THEN REPLY ~And don't you think that our being here hasn't already done that Jaheira?~ GOTO NEJ466
  IF ~~ THEN REPLY ~I believe Hrothgar was speaking to me Jaheira, were you never taught that it is rude to butt into other peoples conversations!~ GOTO NEJ466
  IF ~~ THEN REPLY ~So we have two <CHARNAME>s in the group do we? Which one were you addressing Hrothgar?~ GOTO NEJ466
END

IF ~~ THEN BEGIN NEJ466
  SAY ~Just a gentle reminder <CHARNAME>, nothing more. I fear that our presence here has already put balance between past and future in a precarious position. We can not afford to take chances either by deed or by word.~
  IF ~~ THEN EXTERN ~BHROTH~ 55
END

IF ~Global("VP_BMinsc","LOCALS",2)~ THEN BEGIN NEJ467
  SAY ~Phew... Minsc, whatever is that smell?  It smells like something has died in your pocket.~
  IF ~~ THEN DO ~SetGlobal("VP_BMinsc","LOCALS",3)~ EXTERN ~BMINSC~ NEJ122
END

IF ~~ THEN BEGIN NEJ468
  SAY ~Well something is. I suggest you give Boo a prod and see if he still lives, hamsters have very short lives. Being a ranger you do know this Minsc?~
  IF ~~ THEN EXTERN ~BMINSC~ NEJ123
END

IF ~~ THEN BEGIN NEJ469
  SAY ~Perhaps you should give him a prod anyway, just to be sure.~
  IF ~~ THEN EXTERN ~BMINSC~ NEJ124
END

IF ~~ THEN BEGIN NEJ470
  SAY ~Food store!? You mean you allow that rodent to store food in your pocket?~
  IF ~~ THEN EXTERN ~BMINSC~ NEJ127
END

IF ~~ THEN BEGIN NEJ471
  SAY ~His insides? Oh, you mean his instincts, but surely he knows that as long as he has Minsc to feed him, he has no need to store his food?~
  IF ~~ THEN EXTERN ~BMINSC~ NEJ128
END

IF ~~ THEN BEGIN NEJ472
  SAY ~The word is *hibernate* Minsc, maybe you should tell this rodent of yours that whereas it may feel cold outside your pocket, he will always be warm and snug inside your pocket. There will be no need for him to hibernate. He might also like to know that hibernating creatures have no need of food whilst they sleep, only when they wake up again, so he can clear his smelly store out and give all our noses a rest.~
  IF ~~ THEN EXTERN ~BMINSC~ NEJ129
END

IF ~~ THEN BEGIN NEJ473
  SAY ~Then you best be prepared to walk a good distance from the rest of the group until he does decide.~
  IF ~~ THEN EXIT
END

IF ~Global("VP_BDar","LOCALS",2)~ THEN BEGIN NEJ474
  SAY ~Dar, I am tired of your sideways glances. If you wish to say something to me, say it and stop acting coy.~
  IF ~~ THEN DO ~SetGlobal("VP_BDar","LOCALS",3)~ EXTERN ~BDAR~ 58
END

IF ~~ THEN BEGIN NEJ475
  SAY ~Your glances do not offend me, but if I bother you in some way I would rather you told me instead of looking at me when you think I do not notice. I find it unnerving to be scrutinised so.~
  IF ~~ THEN EXTERN ~BDAR~ 59
END

IF ~~ THEN BEGIN NEJ476
  SAY ~I thank you for your compliment Dar, but tell me, why should I turn away from you, I sense no malice in your eye or in your heart?~
  IF ~~ THEN EXTERN ~BDAR~ 60
END

IF ~~ THEN BEGIN NEJ477
  SAY ~Why should my being a druid cause me to be offended by you? In case you had not noticed, I am of mixed race also, neither true elf nor true human.~
  IF ~~ THEN EXTERN ~BDAR~ 61
END

IF ~~ THEN BEGIN NEJ478
  SAY ~Nature does not plan a lot of things Dar. The instinct to mate and pass on ones genes is so strong in all her creatures that even nature cannot control all of her children. She understands this and never finds the offspring of these unions abhorrent or offensive to her sight. In her eyes, the child can never be blamed for the indiscretions of the parents.~
  IF ~~ THEN EXTERN ~BDAR~ 62
END

IF ~~ THEN BEGIN NEJ479
  SAY ~You have been forced to seek your way in the world alone, scorned and driven from any civilised contact, it is no wonder you doubt your place in the scheme of things. Know that there will always be those who judge by what they see, but there will also be those who look deeper into the heart as the mother teaches all her servants to do and they are the ones that you must look to for your learning.~
  IF ~~ THEN EXTERN ~BDAR~ 63
END

IF ~Global("VP_BPC","LOCALS",2)~ THEN BEGIN NEJ480
  SAY ~What are we doing here <CHARNAME>? We already know how these events are to end and we should not be here.~
  IF ~~ THEN REPLY ~I can't explain it Jaheira, but I have this inexplicable feeling that for now this is where I should be.~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ GOTO NEJ481
  IF ~~ THEN REPLY ~My life has been one of many twists, you yourself have been witness to this Jaheira, but it has never taken me anywhere without reason.~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ GOTO NEJ481
  IF ~~ THEN REPLY ~Hrothgar is a brave man Jaheira, but he can not do this alone, he needs my... our aid.~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ GOTO NEJ482
  IF ~~ THEN REPLY ~We are here now and I stand by my decision to to help Hrothgar regardless of how things turn out.~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ GOTO NEJ483
END

IF ~~ THEN BEGIN NEJ481
  SAY ~That may be so, but this mission is a waste of our time. We can not interfere with these events and as such we should have continued our own journey. We should have taken the portal at Kuldahar and left the past to the past. I fear I should not have been so hasty in agreeing to abandon Khalid, now with the portal lost I know not when or even if I will see him again.~
  IF ~~ THEN REPLY ~Has it not occurred to you that maybe... just maybe... I am here to alter that which happened? It is possible for a mistake to have been made in the past and I am here to right that mistake.~ GOTO NEJ484
  IF ~~ THEN REPLY ~So far I have had little choice in my direction and I believe it is the case here. I may not always like where fate leads me but if we were meant to have taken the portal, then she would have ensured that we had.~ GOTO NEJ485
  IF ~~ THEN REPLY ~We had no idea what lay beyond that portal Jaheira. It could just as easily have been another of Irenicus's making, hoping to snare us in another hell dimension somewhere. No, it is my belief that fate prevented us from taking that portal for a reason.~ GOTO NEJ485
  IF ~~ THEN REPLY ~Stop worrying about the past and the future. What will be will be and no amount of worrying on your part will change that.~ GOTO NEJ486
  IF ~~ THEN REPLY ~A decision was made Jaheira and I know I have made the right choice. Call it instinct, call it gut feeling, whatever, this is where we are meant to be.~ GOTO NEJ487
END

IF ~~ THEN BEGIN NEJ482
  SAY ~You have no grasp of what I am saying do you? Hrothgar's fate was sealed in the past and your aid must not alter the outcome of these events. Our future would have been much safer if we had taken the portal at Kuldahar, it was a mistake to come here.~
  IF ~~ THEN REPLY ~Has it not occurred to you that maybe... just maybe... I am here to alter that which happened? It is possible for a mistake to have been made in the past and I am here to right that mistake.~ GOTO NEJ484
  IF ~~ THEN REPLY ~So far I have had little choice in my direction and I believe it is the case here. I may not always like where fate leads me but if we were meant to have taken the portal, then she would have ensured that we had.~ GOTO NEJ485
  IF ~~ THEN REPLY ~We had no idea what lay beyond that portal Jaheira. It could just as easily have been another of Irenicus's making, hoping to snare us in another hell dimension somewhere. No, it is my belief that fate prevented us from taking that portal for a reason.~ GOTO NEJ485
  IF ~~ THEN REPLY ~Stop worrying about the past and the future. What will be will be and no amount of worrying on your part will change that.~ GOTO NEJ486
  IF ~~ THEN REPLY ~A decision was made Jaheira and I know I have made the right choice. Call it instinct, call it gut feeling, whatever, this is where we are meant to be.~ GOTO NEJ487
END

IF ~~ THEN BEGIN NEJ483
  SAY ~It is noble of you to want to aid Hrothgar, but what has been must be allowed to be. Have I not said so before? You can not... must not alter what fate has decreed. If by coming here you think to do this, then we should have taken the portal at Kuldahar, for the future will surely be in jeopardy if you succeed in this foolishness.~
  IF ~~ THEN REPLY ~Has it not occurred to you that maybe... just maybe... I am here to alter that which happened? It is possible for a mistake to have been made in the past and I am here to right that mistake.~ GOTO NEJ484
  IF ~~ THEN REPLY ~So far I have had little choice in my direction and I believe it is the case here. I may not always like where fate leads me but if we were meant to have taken the portal, then she would have ensured that we had.~ GOTO NEJ485
  IF ~~ THEN REPLY ~We had no idea what lay beyond that portal Jaheira. It could just as easily have been another of Irenicus's making, hoping to snare us in another hell dimension somewhere. No, it is my belief that fate prevented us from taking that portal for a reason.~ GOTO NEJ485
  IF ~~ THEN REPLY ~Stop worrying about the past and the future. What will be will be and no amount of worrying on your part will change that.~ GOTO NEJ486
  IF ~~ THEN REPLY ~A decision was made Jaheira and I know I have made the right choice. Call it instinct, call it gut feeling, whatever, this is where we are meant to be.~ GOTO NEJ487
END

IF ~~ THEN BEGIN NEJ484
  SAY ~Surely you don't believe that any more than I do <CHARNAME>? If you have convinced yourself that this is true and you intend acting on your belief, then I fear that the future we knew may not be the future that we will eventually return to. You should take the time to think long and hard on what we may come to lose by any rash and emotional actions you choose to take here.~
  IF ~~ THEN REPLY ~I cannot help what you feel or believe. I have put my trust in Hrothgar and his is the path we now follow. That is... until we find a way home.~ GOTO NEJ489
  IF ~~ THEN REPLY ~Hrothgar has assured me that my actions here will not affect my future, so I see no reason not to continue aiding him in his mission.~ GOTO NEJ489
  IF ~~ THEN REPLY ~Whatever, circumstances being what they are, we have very little choice now, as Hrothgar is our only means of leaving here safely.~ GOTO NEJ489
END

IF ~~ THEN BEGIN NEJ485
  SAY ~That is rubbish <CHARNAME>, all this talk about fate lending a hand! We make our own choices in this life. Sometimes we are forced by others to do their will, but when we are offered a choice, that is exactly what it is... a choice, and we have to take responsibility for our decision for it is ours alone.~
  IF ~~ THEN GOTO NEJ488
END

IF ~~ THEN BEGIN NEJ486
  SAY ~I worry with good reason <CHARNAME>. When balance in time is disturbed, whether by accident or by design then a price will have to be paid somewhere or by someone... possibly even by both. I fear that it will be the future that pays the price, along with all  its people who live there now if you interfere with events here.~
  IF ~~ THEN REPLY ~I cannot help what you feel or believe. I have put my trust in Hrothgar and his is the path we now follow. That is... until we find a way home.~ GOTO NEJ489
  IF ~~ THEN REPLY ~Hrothgar has assured me that my actions here will not affect my future, so I see no reason not to continue aiding him in his mission.~ GOTO NEJ489
  IF ~~ THEN REPLY ~Whatever, circumstances being what they are, we have very little choice now, as Hrothgar is our only means of leaving here safely.~ GOTO NEJ489
END

IF ~~ THEN BEGIN NEJ487
  SAY ~All of my instincts and my knowledge as a druid tells me that we should not be in this place. All things have their own time and place in the greater scheme of things and this is not ours! I can not help but fear that irrevocable harm will be done if we continue on our present path. I may not be the child of a god, and maybe your instincts are more honed than mine for this reason, but who is to say that we should trust your instincts over mine <CHARNAME>?~
  IF ~~ THEN REPLY ~I cannot help what you feel or believe. I have put my trust in Hrothgar and his is the path we now follow. That is... until we find a way home.~ GOTO NEJ489
  IF ~~ THEN REPLY ~Hrothgar has assured me that my actions here will not affect my future, so I see no reason not to continue aiding him in his mission.~ GOTO NEJ489
  IF ~~ THEN REPLY ~Whatever, circumstances being what they are, we have very little choice now, as Hrothgar is our only means of leaving here safely.~ GOTO NEJ489
END

IF ~~ THEN BEGIN NEJ488
  SAY ~You chose not to take the portal and we chose to follow you. You could have just as easily have made the decision to take the portal and we would probably still have chosen to follow you. You chose our path, not fate and now we have to live with the consequences of that choice.~
  IF ~~ THEN REPLY ~I cannot help what you feel or believe. I have put my trust in Hrothgar and his is the path we now follow. That is... until we find a way home.~ GOTO NEJ489
  IF ~~ THEN REPLY ~Hrothgar has assured me that my actions here will not affect my future, so I see no reason not to continue aiding him in his mission.~ GOTO NEJ489
  IF ~~ THEN REPLY ~Whatever, circumstances being what they are, we have very little choice now, as Hrothgar is our only means of leaving here safely.~ GOTO NEJ489
END

IF ~~ THEN BEGIN NEJ489
  SAY ~I don't have the same faith in the man as you <CHARNAME>. The manner in which he brought us to this place is such that we have no way of knowing the road back... a manner which incidently he quite deftly got out of explaining.~
  IF ~~ THEN GOTO NEJ490
END

IF ~~ THEN BEGIN NEJ490
  SAY ~We are now dependent on his staying alive in order to get us out of here, and you can guarantee that he knows this and he is more than likely relying on this to stop us questioning him too closely. Anything happens to Hrothgar and we could be wandering these cold wastelands, forever lost in time and searching for a way home. Trust him if you want, but I shall watch him closely.~
  IF ~~ THEN EXIT
END

END