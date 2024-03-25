APPEND ~AERIEJ~

IF ~~ THEN BEGIN NEJ222
  SAY ~To see yet more of this land and not from a cage, it is so...so... so exciting!~
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
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ NEJ188
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ185
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ NEJ310
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~VICONIJ~ NEJ186
  IF ~InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ NEJ117
END

IF ~~ THEN BEGIN NEJ223
  SAY ~(*Looking soulfully at Tilorn*) You are sending us into the past, to a time before my birth, before my...my... my incarceration?~
  IF ~~ THEN GOTO NEJ224
END

IF ~~ THEN BEGIN NEJ224
  SAY ~(*She looks away quickly but not before you notice tears well up in her eyes. You know what is in her thoughts, but you also know that words would not ease her pain so you keep silent.*)~
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
  IF ~InParty("Edwin") !Dead("Edwin")~ THEN EXTERN ~EDWINJ~ NEJ189
  IF ~InParty("Jan") !Dead("Jan")~ THEN EXTERN ~JANJ~ NEJ189
  IF ~InParty("Anomen") !Dead("Anomen")~ THEN EXTERN ~ANOMENJ~ NEJ311
  IF ~InParty("Viconia") !Dead("Viconia")~ THEN EXTERN ~VICONIJ~ NEJ187
  IF ~InParty("Sime") !Dead("Sime")~ THEN EXTERN ~SIMEJ~ NEJ118
END

IF ~~ THEN BEGIN NEJ225
  SAY ~Me? Oh... I hope I don't let you down.~
  IF ~~ THEN DO ~SetGlobal("VP_Aerie_EnchQuest","GLOBAL",1)~ EXTERN ~XANH~ 23
END

IF ~~ THEN BEGIN NEJ226
  SAY ~I'll have you know that Uncle Quayle was a very good teacher. I just wasn't ready this time that was all.~
  IF ~~ THEN EXTERN ~XANH~ 37
END

IF ~~ THEN BEGIN NEJ227
  SAY ~Me? Oh... I hope I don't let you down.~
  IF ~~ THEN DO ~SetGlobal("VP_Aerie_AbjQuest","GLOBAL",1)~ EXTERN ~TUPHIN~ 7
END

IF ~~ THEN BEGIN NEJ228
  SAY ~Me? Oh... I hope I don't let you down.~
  IF ~~ THEN DO ~SetGlobal("VP_Aerie_InvQuest","GLOBAL",1)~ EXTERN ~TUTHEOD~ 28
END

IF ~~ THEN BEGIN NEJ229
  SAY ~Me? Oh... I hope I don't let you down.~
  IF ~~ THEN DO ~SetGlobal("VP_Aerie_InvQuest","GLOBAL",1)~ EXTERN ~TUTHEOD~ 31
END

IF ~~ THEN BEGIN NEJ230
  SAY ~Me? Oh... I hope I don't let you down.~
  IF ~~ THEN DO ~SetGlobal("VP_Aerie_IllQuest","GLOBAL",1)~ EXTERN ~TUVASHON~ 19
END

IF ~~ THEN BEGIN NEJ231
  SAY ~I believe I can, or at least, I will try my very best.~
  IF ~~ THEN DO ~SetGlobal("VP_Aerie_ConQuest","GLOBAL",1)~ EXTERN ~TUMORD~ 15
END

IF ~~ THEN BEGIN NEJ232
  SAY ~I was so sure that if I tried my hardest I would succeed. I am sorry.~
  IF ~~ THEN REPLY ~Do we need an intelligence check or something here? All you had to do was to read a couple of scrolls... you can read can't you?~ GOTO NEJ233
  IF ~!Class(Player1,MAGE_ALL)~ THEN REPLY ~I don't understand a lot about magic but surely it has to be easier to read scrolls then trying to remember spells that have been memorised?~ GOTO NEJ233
END

IF ~~ THEN BEGIN NEJ233
  SAY ~I must have I read the words wrong, or maybe I missed a word. I really don't know what I did wrong, I am sorry.~
  IF ~~ THEN DO ~ActionOverride("TuMord",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN NEJ234
  SAY ~I can't promise to succeed but I will try.~
  IF ~~ THEN DO ~SetGlobal("VP_Aerie_TraQuest","GLOBAL",1)~ EXTERN ~TUMALV~ 19
END

IF ~~ THEN BEGIN NEJ235
  SAY ~Ugh! Please don't do this <CHARNAME>. I... I think I am going to be sick just thinking about what this mage has in mind.~
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
END

IF ~~ THEN BEGIN abjurer2
  SAY ~I... I  have let you down, I'm sorry, <CHARNAME>.~
  IF ~~ THEN REPLY ~You call yourself a mage? Thanks to your incompetence, girl, we have lost some valuable prizes.~ GOTO abjurer3
  IF ~~ THEN REPLY ~It happens, we win some we lose some, I am sure you gave it your best shot.~ GOTO abjurer4
END

IF ~~ THEN BEGIN abjurer3
  SAY ~What a beastly thing to say, <CHARNAME>. I did my best.~
  IF ~~ THEN EXTERN ~TUPHIN~ npcfail
END

IF ~~ THEN BEGIN abjurer4
  SAY ~I am so glad you understand, <CHARNAME>.~
  IF ~~ THEN EXTERN ~TUPHIN~ npcfail
END

IF ~~ THEN BEGIN tranfail
  SAY ~I ... I  have let you down, I'm sorry <CHARNAME>.~
  IF ~~ THEN REPLY ~You failed, a simple kill the monster and open the chest task! It isn't as if you haven't done it before.~ GOTO tranfai2
  IF ~~ THEN REPLY ~It's not that important. What is important is that Malvolio got you out safely.~ GOTO tranfai3
END

IF ~~ THEN BEGIN tranfai2
  SAY ~Not alone I haven't, ever! You can be so beastly sometimes <CHARNAME>!~
  IF ~~ THEN EXTERN ~TUMALV~ 24
END

IF ~~ THEN BEGIN tranfai3
  SAY ~I failed to win your prizes for you and yet you are still nice to me. You remind me a little of Uncle Quayle (*sighs*), I still miss him sometimes <CHARNAME>.~
  IF ~~ THEN EXTERN ~TUMALV~ 24
END

IF ~~ THEN BEGIN invfail
  SAY ~I ... I  have let you down, I'm sorry  <CHARNAME>.~
  IF ~~ THEN REPLY ~That was abysmal! With all the spells you have at your disposal, I can not believe that you couldn't take care of a few pesky pests!~ GOTO invfail2
  IF ~~ THEN REPLY ~It happens. I was probably expecting too much letting you go into a situation you hadn't been given time to prepare for.~GOTO invfail3
END

IF ~~ THEN BEGIN invfail2
  SAY ~There were more than a few pests <CHARNAME>! They were horrible, crawling everywhere and I couldn't cast my spells quick enough before they were all around me, but I did try, I really tried!~
  IF ~~ THEN EXTERN ~TUTHEOD~ failtest
END

IF ~~ THEN BEGIN invfail3
  SAY ~Even if I had prepared, I don't think I could have stood being alone with so many nasty beasties crawling all around me <CHARNAME>, but I would still have tried my best.~
  IF ~~ THEN EXTERN ~TUTHEOD~ failtest
END

IF ~~ THEN BEGIN vashon
  SAY ~It was too much for me by myself, I am sorry, <CHARNAME>.~
  IF ~~ THEN REPLY ~If I had a gold piece for each time I heard sorry for an excuse, I would be rich beyond your imaginings. Sorry is never an excuse for failure.~ GOTO vashon3
  IF ~~ THEN REPLY ~No matter, you couldn't have second guessed Vashon's test, no one could... not even if you'd been a diviner.~ GOTO vashon4
END

IF ~~ THEN BEGIN vashon3
  SAY ~At least I am not too proud to admit my failings, <CHARNAME>. As to whether you accept my apology or not, that is up to you.~
  IF ~~ THEN EXTERN ~TUVASHON~ npcfail
END

IF ~~ THEN BEGIN vashon4
  SAY ~I still failed and if I am to be as good a mage as uncle Quayle has tried to teach me to be, I must learn to think more for myself.~
  IF ~~ THEN EXTERN ~TUVASHON~ npcfail
END

IF ~~ THEN BEGIN tafficuh
  SAY ~Oh my!(*Putting a hand on the Umberhulk's shoulder*) I know what you must be feeling Taffic. I was also trapped in a monstrous body for a while until <CHARNAME> released me. I am sure there is a way to do the same for you.~
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
END

END