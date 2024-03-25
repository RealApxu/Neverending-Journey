APPEND ~BMINSC~

IF ~Global("VP_BDar","LOCALS",2)~ THEN BEGIN NEJ99
  SAY ~Dar, my fine large fellow, tell Minsc why it is you do not speak much?~
  IF ~~ THEN DO ~SetGlobal("VP_BDar","LOCALS",3)~ EXTERN ~BDAR~ 51
END

IF ~~ THEN BEGIN NEJ100
  SAY ~You have been lonely for a good long time, Minsc knows what lonely is. Before Dynaheir, many people laughed at Minsc, said he had only half a brain, but when Minsc travelled with Dynaheir, she would tell them that it was better to have half a brain than no brain at all.~
  IF ~~ THEN EXTERN ~BDAR~ 52
END

IF ~~ THEN BEGIN NEJ101
  SAY ~Ah my friend! That cannot be. In this time Dynaheir has not yet been born but if Hrothgar was to travel to Minsc's time, Dynaheir would be taken from him again, to be  foully murdered by the evil wizard Irenicus!! Then it will be for Minsc and Boo to avenge her, evil can not withstand the righteous sword of Minsc!~
  IF ~~ THEN EXTERN ~BDAR~ 53
END

IF ~~ THEN BEGIN NEJ102
  SAY ~Minsc does not need you to be sorry for him. Dynaheir showed Minsc that real friends accept all that is right and wrong with a person, not the sort of wrong that is evil, the other sort of wrong. There is no evil wrong in Minsc.~
  IF ~~ THEN EXTERN ~BDAR~ 54
END

IF ~~ THEN BEGIN NEJ103
  SAY ~(*Beaming a smile at Dar*) You and me and Boo are friends now? Perhaps you would like to shake Boo's paw now and meet him like a proper friend?~
  IF ~~ THEN GOTO NEJ104
END

IF ~~ THEN BEGIN NEJ104
  SAY ~Here Boo, this is our new friend Dar, you will like him, he understands Minsc.~
  IF ~~ THEN EXTERN ~BDAR~ 55
END

IF ~~ THEN BEGIN NEJ105
  SAY ~Boo always has to go away and think about liking a person once he has had a good look at them. Now we wait for Boo to ask to look at you again. Right Boo?~
  IF ~~ THEN EXTERN ~BDAR~ 56
END

IF ~~ THEN BEGIN NEJ106
  SAY ~No it would not, but you could not have had a Boo, there is only the one Boo in all the world, and because giant space hamsters do not like being seen by people.~
  IF ~~ THEN EXTERN ~BDAR~ 57
END

IF ~~ THEN BEGIN NEJ107
  SAY ~Minsc knows this because Boo is telling him all the time.~
  IF ~~ THEN EXIT
END

IF ~Global("VP_BPC","LOCALS",2)~ THEN BEGIN NEJ108
  SAY ~<CHARNAME>, I do not like this place, it makes Minsc feel wrong and Boo all squirrly.~
  IF ~~ THEN REPLY ~It does feel strange Minsc, but then all new places do at first.~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ GOTO NEJ109
  IF ~~ THEN REPLY ~I start to worry when you say Boo is feeling squirrly and Minsc is feeling strange. What has Boo to say about his sqirrliness?~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ GOTO NEJ109
  IF ~~ THEN REPLY ~I know what you mean Minsc, the air does have a strange feel about it.~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ GOTO NEJ109
  IF ~~ THEN REPLY ~You have been in strange places before Minsc, you will get over it.~ DO ~SetGlobal("VP_BPC","LOCALS",3)~ GOTO NEJ109
END

IF ~~ THEN BEGIN NEJ109
  SAY ~No, you do not understand. Minsc is not feeling strange, he is feeling wrong. This is not his place and Boo is squirrly because he says he should not be here either.~
  IF ~~ THEN REPLY ~Your instincts are good Minsc, they obviously compensate for your... ah... deficiencies else where.~ GOTO NEJ110
  IF ~~ THEN REPLY ~Do not worry my friend, the strangeness will pass.~ GOTO NEJ114
  IF ~~ THEN REPLY ~We are all on edge Minsc. It is this damned place and not knowing when or whether we will ever find our way home.~ GOTO NEJ114
END

IF ~~ THEN BEGIN NEJ110
  SAY ~Yes, hamsters also have very good instincts. Boo is often trying to build a nest in Minsc's pocket, one day we will have hamsters for us all... when Boo meets a lady miniature giant space hamster that is... right Boo? So, Minsc is anxious to know what <CHARNAME>'s instincts say about all this feeling wrong?~
  IF ~~ THEN REPLY ~It is not my instincts that tell me what is wrong, it is what I know Minsc, and what I know is that we have been sent back to a time 100 years in the past.~ GOTO NEJ111
  IF ~~ THEN REPLY ~I am not sure how much you will be able to understand Minsc, heck I do not even understand it myself, but we have been sent back 100 years into the past.~ GOTO NEJ111
END

IF ~~ THEN BEGIN NEJ111
  SAY ~No wonder Minsc feels all wrong! He was not born 100 years ago, how can he be before he was born?~
  IF ~~ THEN REPLY ~Do not worry your head about the how. It was something to do with the portal we found in Irenicus's dungeon. That is what brought us here.~ GOTO NEJ112
  IF ~~ THEN REPLY ~Please Minsc, there is no need to get agitated, the portal brought us here for a reason, We just do not yet know that reason.~ GOTO NEJ112
  IF ~~ THEN REPLY ~None of us understand it Minsc, we just have to except where we are for now.~ GOTO NEJ112
END

IF ~~ THEN BEGIN NEJ112
  SAY ~If you are right, then being here means Dynaheir is not dead because Dynaheir also has not been born. Oooh, this could be a happy time for Minsc, do you hear that Boo, Dynaheir is not dead because she does not live yet?~
  IF ~~ THEN REPLY ~There is I am sure some logic in there somewhere but I am not even going to attempt to unravel it.~ GOTO NEJ113
  IF ~~ THEN REPLY ~Whatever makes you happy Minsc.~ GOTO NEJ113
  IF ~~ THEN REPLY ~I am not even going to think about that one, just as long as you are happy and Boo is no longer squirrly.~ GOTO NEJ113
END

IF ~~ THEN BEGIN NEJ113
  SAY ~Now that Minsc does not have to avenge Dynaheir, he can avenge all who have gone unavenged. Evil everywhere, listen to Minsc and prepare to meet the wrath of Minsc and the edge of his righteous sword!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ114
  SAY ~No <CHARNAME>, this is not the sort of wrongness that will pass. All Minsc's insides and his outsides feel like they are trying to run away, like they do not belong and want to get to where they do belong.~
  IF ~~ THEN REPLY ~Now that is not a feeling I would not wish to experience! You have amazing instincts Minsc, you are feeling this way because none of us belong here.~ GOTO NEJ110
  IF ~~ THEN REPLY ~Your insides as you call them are your instincts Minsc and they are right, we do not belong here.~ GOTO NEJ110
  IF ~~ THEN REPLY ~Your instincts are good Minsc, they obviously compensate for your...ah...deficiencies else where.~ GOTO NEJ110
END

IF ~Global("VP_BHrothgar","LOCALS",2)~ THEN BEGIN NEJ115
  SAY ~Hrothgar, Minsc is asking you, why did you bring us here and not ask first?~
  IF ~~ THEN DO ~SetGlobal("VP_BHrothgar","LOCALS",3)~ EXTERN ~BHROTH~ 62
END

IF ~~ THEN BEGIN NEJ116
  SAY ~Because, when Minsc came falling through the portal to your Easthaven, it was all confusing at first. Yes, but now Minsc has his head straight again and knows you were looking for true adventurers to aid your fight against this big evil, so you made your portal to bring Minsc and his friends here. Right?~
  IF ~~ THEN EXTERN ~BHROTH~ 63
END

IF ~~ THEN BEGIN NEJ117
  SAY ~Ah... I have thought of that Hrothgar and I think your portal takes people from another time, not from another place. That took Minsc a while to see, but now he sees.~
  IF ~~ THEN EXTERN ~BHROTH~ 64
END

IF ~~ THEN BEGIN NEJ118
  SAY ~Then who made the portal to come here? The wizard who kept Minsc caged, does he travel to and fro to here, eh, Hrothgar does he? Yes, that is it, Minsc was not supposed to be here, it is the wizard's secret! You are in league with evil Hrothgar of Easthaven! What say you?~
  IF ~~ THEN EXTERN ~BHROTH~ 65
END

IF ~~ THEN BEGIN NEJ119
  SAY ~Then if not for us to come here and not for the wizard, then... for another person?~
  IF ~~ THEN EXTERN ~BHROTH~ 66
END

IF ~~ THEN BEGIN NEJ120
  SAY ~Now Minsc is confused again and must go away and think some more. I will ask Boo to help me think, he is smarter than anyone.~
  IF ~~ THEN EXTERN ~BHROTH~ 67
END

IF ~~ THEN BEGIN NEJ121
  SAY ~Do not worry Hrothgar, soon Minsc will know it all, when Boo tells him that is.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NEJ122
  SAY ~Died... in Minsc's pocket!? The only thing in Minsc's pocket is Boo and Boo cannot be making such a bad smell, he is too young.~
  IF ~~ THEN EXTERN ~BJAHEIR~ NEJ468
END

IF ~~ THEN BEGIN NEJ123
  SAY ~Of course Minsc knows! He knows about all little furry creatures and the not so big less furry ones, but Boo is not just any hamster, he is a space hamster and space hamsters live a good long life!~
  IF ~~ THEN EXTERN ~BJAHEIR~ NEJ469
END

IF ~~ THEN BEGIN NEJ124
  SAY ~Prod Boo!! Minsc will do no such thing! Would Jaheira like it if Minsc gave her a prod when was not expecting to be prodded? No she would not and neither would Boo. I will simply ask Boo if he has died.~
  IF ~~ THEN GOTO NEJ125
END

IF ~~ THEN BEGIN NEJ125
  SAY ~(*To Boo*) Tell me Boo, are you dead and making this awful smell that Jaheira is screwing her nose up at? (*Boo squeaks.*)~
  IF ~~ THEN GOTO NEJ126
END

IF ~~ THEN BEGIN NEJ126
  SAY ~Boo says he is fine thank you Jaheira. He says it's his food store that is making the bad smell, not him.~
  IF ~~ THEN EXTERN ~BJAHEIR~ NEJ470
END

IF ~~ THEN BEGIN NEJ127
  SAY ~Boo does not normally have to store his food, but he says it is so cold in this place, that his insides are telling him he must store a little for when there may not be any.~
  IF ~~ THEN EXTERN ~BJAHEIR~ NEJ471
END

IF ~~ THEN BEGIN NEJ128
  SAY ~Yes but if it gets really cold, Boo will go into hib... hibe... hibe... go to sleep until it gets warm again. So he stores a little of the cheese Minsc gives to him for this later time and that is what is making all this bad smell.~
  IF ~~ THEN EXTERN ~BJAHEIR~ NEJ472
END

IF ~~ THEN BEGIN NEJ129
  SAY ~That will be for Boo to decide, it is his food store, not Minsc's and certainly not Jaheira's!~
  IF ~~ THEN EXTERN ~BJAHEIR~ NEJ473
END

IF ~~ THEN BEGIN NEJ130
  SAY ~Minsc can feel Boo's whiskers twitching as he thinks of the words Leina will sing when she sings of the deeds of Minsc and Boo kicking all the butts of evil.~
  IF ~True()~ THEN EXTERN ~BLEINA~ 32
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN EXTERN ~BTAFFIC~ 0
END

END