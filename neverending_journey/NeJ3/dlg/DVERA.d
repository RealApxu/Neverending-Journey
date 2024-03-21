BEGIN ~DVERA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~By every God and his mother...  you�re the last thing I expected to see step around the corner.  Who are you?~
  IF ~~ THEN REPLY ~I am a friend.~ GOTO 2
  IF ~~ THEN REPLY ~I might ask you the same thing.~ GOTO 20
  IF ~~ THEN REPLY ~Farewell for now.~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY ~I see you�ve returned.  Why?~
  IF ~Global("Know_Vera","GLOBAL",0)~ THEN REPLY ~I would like to ask you some questions.~ GOTO 6
  IF ~Global("Know_Vera","GLOBAL",1) Global("Help_Vera","GLOBAL",0)~ THEN REPLY ~I wanted to ask you some questions again.~ GOTO 7
  IF ~Global("Tell_Tale","GLOBAL",4) Global("Help_Vera","GLOBAL",0)~ THEN REPLY ~I spoke with a man named Gareth.  He wove quite a tale about a woman named Vera. Would that be you?~ GOTO 9
  IF ~Global("Help_Vera","GLOBAL",1)~ THEN REPLY ~When we last spoke you asked me to help the slaves escape.~ GOTO 21
  IF ~~ THEN REPLY ~No reason. Farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Really?  Mind telling me how you got past the salamanders?~
  IF ~~ THEN REPLY ~Their leader thinks that I am a spy sent to check on him.  I did nothing to convince him otherwise.~ GOTO 3
  IF ~Global("Kerish_Dead","GLOBAL",1)~ THEN REPLY ~I have slain their leader and most, if not all, of the salamanders as well.~ GOTO 4
  IF ~GlobalGT("Kill_Vera","GLOBAL",0)~ THEN REPLY ~They believe me to be working for them.~ GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY ~I see...  Well, if I were you, I would continue with that deception.  It could save your life here.~
  IF ~~ THEN REPLY ~Perhaps.  May I ask you some questions?~ GOTO 6
  IF ~~ THEN REPLY ~Farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~I see...  That is a feat to be proud of.  I salute you.~
  IF ~~ THEN REPLY ~Thank you. May I ask you some questions?~ GOTO 6
  IF ~~ THEN REPLY ~Farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~I see...  Well, I hope that is just a ruse.  I would hate to think that you actually do serve such creatures.~
  IF ~~ THEN REPLY ~Yes it is. May I ask you some questions?~ GOTO 6
  IF ~~ THEN REPLY ~Farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~I don�t know...  I would like to trust you, but I�m not sure that I can...~
  IF ~~ THEN REPLY ~You need to place your trust in someone.  Why not try me?~ DO ~SetGlobal("Know_Vera","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY ~Then I will say farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Very well... Ask what you will.~
  IF ~~ THEN REPLY ~Who are you?~ GOTO 8
  IF ~~ THEN REPLY ~What are you doing here?~ JOURNAL ~Wyrm�s Tooth.

We found a woman named Vera hiding in the museum. She will not tell us why she is in hiding. She asked us not to mention having found her.~ GOTO 15
  IF ~~ THEN REPLY ~Can you tell me anything about this place?~ GOTO 17
  IF ~~ THEN REPLY ~I noticed there are dead bodies strewn about.  Can you tell me what happened?~ JOURNAL ~We asked Vera why there were dead bodies strewn about the museum. She told us that the salamanders kept slaves and that the slaves had revolted. The bodies were those of slaves that were killed in the revolt.~ GOTO 18
  IF ~GlobalGT("Hear_Noise","GLOBAL",0)~ THEN REPLY ~A salamander down the hall says he hears noises from here on occasion. I think he may be hearing you.~ JOURNAL ~Wyrm�s Tooth.

We warned Vera that one of the salamanders has heard her moving about. She thanked us for the warning and says she will take precautions to not be heard again.~ GOTO 19
  IF ~~ THEN REPLY ~I must be leaving now.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~My name is Vera Elles.~
  IF ~Global("Tell_Tale","GLOBAL",4)~ THEN REPLY ~I spoke with a man named Gareth. He wove quite a tale about a woman named Vera. Would that be you?~ JOURNAL ~Wyrm�s Tooth.

We found Vera, the slave leader, hiding in the museum.~ GOTO 9
  IF ~~ THEN REPLY ~I see.  Let me ask you something else.~ GOTO 7
END

IF ~~ THEN BEGIN 9
  SAY ~Yes, I know Gareth.  You say you have spoken with him?  So he and the others escaped?~
  IF ~GlobalGT("Kill_Vera","GLOBAL",0)~ THEN REPLY ~Then you are the leader of the slave revolt? ~ GOTO 10
  IF ~Global("Slaves_Free_1","GLOBAL",1)~ THEN REPLY ~Yes. They have escaped back to the surface.~ GOTO 12
  IF ~Global("Get_Key","GLOBAL",1)~ THEN REPLY ~They are safe for now, but cannot get back to the surface. They have asked for my help.~ GOTO 14
  IF ~Global("Get_Key","GLOBAL",2)~ THEN REPLY ~They are safe for now, but cannot get back to the surface. They have asked for my help.~ GOTO 14
  IF ~Global("Get_Key","GLOBAL",3)~ THEN REPLY ~They are safe for now, but cannot get back to the surface. They have asked for my help.~ GOTO 14
END

IF ~~ THEN BEGIN 10
  SAY ~Yes, that�s me.  I had to do something to help those poor people.~
  IF ~Global("Kill_Vera","GLOBAL",3)~ THEN REPLY ~Then you are the one I seek.  Kerish has sent me to kill you.  Prepare to die!~ DO ~EraseJournalEntry(%Wyrm�s Tooth.

We found a woman named Vera hiding in the museum. She will not tell us why she is in hiding. She asked us not to mention having found her.%) EraseJournalEntry(%Wyrm�s Tooth.

We warned Vera that one of the salamanders has heard her moving about. She thanked us for the warning and says she will take precautions to not be heard again.%) EraseJournalEntry(%Wyrm�s Tooth.

We found Vera, the slave leader, hiding in the museum.%) EraseJournalEntry(%Wyrm�s Tooth.

We found Vera, the slave leader, hiding in the museum. We informed her that the frost salamander leader wanted her dead. She thanked us for the information and said she would take precautions.%) EraseJournalEntry(%Wyrm�s Tooth.

Vera, the slave leader, pretty much told us to go help Gareth and the other slaves. She then dismissed us.%) Enemy()~ SOLVED_JOURNAL ~Wyrm�s Tooth.

We found Vera, the slave leader, hiding in the museum. We informed her that we had been sent by the frost salamander leader to kill her. Naturally, a battle ensued.~ EXIT
  IF ~~ THEN REPLY ~You should know that the salamanders want you dead, Vera.~ JOURNAL ~Wyrm�s Tooth.

We found Vera, the slave leader, hiding in the museum. We informed her that the frost salamander leader wanted her dead. She thanked us for the information and said she would take precautions.~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~Hmm.  Well thank you for the warning, I�ll be more careful.  Tell me though. Did the others escape?~
  IF ~Global("Slaves_Free_1","GLOBAL",1)~ THEN REPLY ~Yes. They have escaped back to the surface.~ GOTO 12
  IF ~Global("Get_Key","GLOBAL",1)~ THEN REPLY ~They are safe for now, but cannot get back to the surface. They have asked for my help.~ GOTO 14
  IF ~Global("Get_Key","GLOBAL",2)~ THEN REPLY ~They are safe for now, but cannot get back to the surface. They have asked for my help.~ GOTO 14
  IF ~Global("Get_Key","GLOBAL",3)~ THEN REPLY ~They are safe for now, but cannot get back to the surface. They have asked for my help.~ GOTO 14
END

IF ~~ THEN BEGIN 12
  SAY ~Then my work here is done.  I can leave this hell in good conscience...  Thank you and farewell.~
  IF ~~ THEN REPLY ~Wait. How do you intend to leave?~ GOTO 13
  IF ~Global("Vera_Leave","GLOBAL",0)~ THEN REPLY ~Farewell, Vera.~ DO ~EraseJournalEntry(%Wyrm�s Tooth.

We found a woman named Vera hiding in the museum. She will not tell us why she is in hiding. She asked us not to mention having found her.%) EraseJournalEntry(%Wyrm�s Tooth.

We warned Vera that one of the salamanders has heard her moving about. She thanked us for the warning and says she will take precautions to not be heard again.%) EraseJournalEntry(%Wyrm�s Tooth.

We found Vera, the slave leader, hiding in the museum.%) EraseJournalEntry(%Wyrm�s Tooth.

We found Vera, the slave leader, hiding in the museum. We informed her that the frost salamander leader wanted her dead. She thanked us for the information and said she would take precautions.%) EraseJournalEntry(%Wyrm�s Tooth.

Vera, the slave leader, pretty much told us to go help Gareth and the other slaves. She then dismissed us.%) AddexperienceParty(18500) SetGlobal("Vera_Leave","GLOBAL",1)~ SOLVED_JOURNAL ~Wyrm�s Tooth.

We told Vera that the slaves were free and had escaped to the surface. She was relieved to hear the news and has escaped the museum as well. Apparently she would not leave until she knew the others were free.~ EXIT
  IF ~Global("Vera_Leave","GLOBAL",1)~ THEN REPLY ~Farewell, Vera.~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~Well...  I�m a thief and a good one.  I can sneak out of here when the time is right...  I just couldn�t do it until I knew those poor people were safe.~
  IF ~Global("Vera_Leave","GLOBAL",0)~ THEN REPLY ~I see.  Farewell, Vera.~ DO ~EraseJournalEntry(%Wyrm�s Tooth.

We found a woman named Vera hiding in the museum. She will not tell us why she is in hiding. She asked us not to mention having found her.%) EraseJournalEntry(%Wyrm�s Tooth.

We warned Vera that one of the salamanders has heard her moving about. She thanked us for the warning and says she will take precautions to not be heard again.%) EraseJournalEntry(%Wyrm�s Tooth.

We found Vera, the slave leader, hiding in the museum.%) EraseJournalEntry(%Wyrm�s Tooth.

We found Vera, the slave leader, hiding in the museum. We informed her that the frost salamander leader wanted her dead. She thanked us for the information and said she would take precautions.%) EraseJournalEntry(%Wyrm�s Tooth.

Vera, the slave leader, pretty much told us to go help Gareth and the other slaves. She then dismissed us.%) AddexperienceParty(18500) SetGlobal("Vera_Leave","GLOBAL",1)~ SOLVED_JOURNAL ~Wyrm�s Tooth.

We told Vera that the slaves were free and had escaped to the surface. She was relieved to hear the news and has escaped the museum as well. Apparently she would not leave until she knew the others were free.~ EXIT
  IF ~Global("Vera_Leave","GLOBAL",1)~ THEN REPLY ~I see.  Farewell, Vera.~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY ~Then by all means please help them.  I cannot rest until I know they are safe...  Please go now.~
  IF ~~ THEN REPLY ~Farewell, Vera.~ DO ~SetGlobal("Help_Vera","GLOBAL",1)~ UNSOLVED_JOURNAL ~Wyrm�s Tooth.

Vera, the slave leader, pretty much told us to go help Gareth and the other slaves. She then dismissed us.~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY ~Well...  I guess it�s rather obvious that I�m hiding from the salamanders.  I�ll thank you to not mention having seen me.~
  IF ~~ THEN REPLY ~Why?  What did you do?~ GOTO 16
  IF ~~ THEN REPLY ~Let me ask you something else.~ GOTO 7
  IF ~~ THEN REPLY ~Farewell, Vera.~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY ~That�s nothing that should concern you and it�s not a matter that I�ll discuss with strangers.  I have nothing more to say on the subject.~
  IF ~~ THEN REPLY ~Let me ask you something else.~ GOTO 7
  IF ~~ THEN REPLY ~Farewell, Vera.~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY ~All I can tell you is what you can see for yourself.  It�s some sort of aquatic museum.  It makes no sense to me...~
  IF ~~ THEN REPLY ~Let me ask you something else.~ GOTO 7
  IF ~~ THEN REPLY ~Farewell, Vera.~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY ~The salamanders keep slaves.  The slaves revolted, and I guess some of them were killed...~
  IF ~~ THEN REPLY ~Were you a part of the revolt, Vera?~ GOTO 16
  IF ~~ THEN REPLY ~Let me ask you something else.~ GOTO 7
  IF ~~ THEN REPLY ~Farewell, Vera.~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY ~Yes...  He�s looked around the corner a few times.  I�ve managed to hide from him so far.  I�ll try to be quieter. Thank you for the warning.~
  IF ~~ THEN REPLY ~You must be good at hiding.  Are you a thief?~ GOTO 16
  IF ~~ THEN REPLY ~Let me ask you something else.~ GOTO 7
  IF ~~ THEN REPLY ~Farewell for now.~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY ~Ask what you like.  I�m not saying anything until I know who you are...~
  IF ~~ THEN REPLY ~I am a friend.~ GOTO 2
  IF ~~ THEN REPLY ~Very well, farewell.~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY ~Yes.  Have you been able to free them?~
  IF ~Global("Slaves_Free_1","GLOBAL",0)~ THEN REPLY ~No, not at this time.  Farewell for now.~ EXIT
  IF ~Global("Slaves_Free_1","GLOBAL",1)~ THEN REPLY ~Yes. They have escaped back to the surface.~ GOTO 12
END
