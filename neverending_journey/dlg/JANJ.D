APPEND ~JANJ~

IF ~~ THEN BEGIN NEJ185
  SAY ~Mmm, Ulcaster you say, a fallen down magic school. Puts me in mind when great uncle Ganndy got himself mistaken for a magic teacher.~
  IF ~~ THEN GOTO NEJ186
END

IF ~~ THEN BEGIN NEJ186
  SAY ~The only spells great uncle Ganndy knew was how to grow bigger and better turnips. He taught some of the students so well that they began pulling turnips out of the air. All got a bit out of hand when there were more turnips than students.~
  IF ~~ THEN GOTO NEJ187
END

IF ~~ THEN BEGIN NEJ187
  SAY ~Then great uncle Ganndy had to teach them how to make turnip soup, turnip pie and turnip stew to get rid of them all, but everyone agreed that they had never seen such fine turnips before or eaten such fine turnip fare either.~
  IF ~~ THEN GOTO NEJ188
END

IF ~~ THEN BEGIN NEJ188
  SAY ~Poor great uncle was never allowed to set foot in a classroom again. Shame, by all accounts, they were really good turnips.~
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
END

IF ~~ THEN BEGIN NEJ189
  SAY ~This will be a first for the Jansen family, that is the first member of the family to travel back in time and come back again. Of course uncle Wellesy does not count.~
  IF ~~ THEN GOTO NEJ190
END

IF ~~ THEN BEGIN NEJ190
  SAY ~He built a time machine to go back when the turnip harvest was poor, thinking to fill the machine full of turnips and make a killing on the turnip market.~
  IF ~~ THEN GOTO NEJ191
END

IF ~~ THEN BEGIN NEJ191
  SAY ~The only thing was poor uncle Wellesy never did have any sense of time and is still flitting around somewhere with a time machine full of turnips looking for the here and now.~
  IF ~~ THEN GOTO NEJ192
END

IF ~~ THEN BEGIN NEJ192
  SAY ~Us Jansen's sometimes get a glimpse of him as he flickers in and out and we always try to catch a hold of him but he always seems to go again before we can get a firm enough grip to pull him out. Maybe he will flicker in at Halruaa and Tilorn can bring him back with us.~
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
END

IF ~~ THEN BEGIN NEJ193
  SAY ~A certificate of honour from Halruaa, now there's something else she can bring out along with all the gnomeling photographs she insists on showing guests. I'll do it.~
  IF ~~ THEN DO ~SetGlobal("VP_Jan_EnchQuest","GLOBAL",1)~ EXTERN ~XANH~ 23
END

IF ~~ THEN BEGIN NEJ194
  SAY ~Oh well... I still have my other skills to make ma Jansen proud. Perhaps she can show guests all my acquired adventuring trophies and tell the wondrous stories behind them.~
  IF ~~ THEN GOTO NEJ195
END

IF ~~ THEN BEGIN NEJ195
  SAY ~Don't tell me Jan, I know this one, the prince brought the shoe to her house the next day and they were married and lived happily ever after.~
  IF ~~ THEN REPLY ~~ GOTO NEJ196
END

IF ~~ THEN BEGIN NEJ196
  SAY ~That must be another Cindy. My cousin twice removed, got right crotchety with me when I couldn't find the blasted thing, and to make matters worse, the idiot prince had to go and bring it back the next morning letting the cat right out of the bag. Threw the shoe right at me she did as if it were all my fault.~
  IF ~~ THEN EXTERN ~XANH~ 37
END

IF ~~ THEN BEGIN NEJ197
  SAY ~Now that would be worth taking a hundred exams to see. What with him spouting all those *thees* and *thous*, he always thought it made him grander than any of us Jansen's.~
  IF ~~ THEN DO ~SetGlobal("VP_Jan_ConQuest","GLOBAL",1)~ EXTERN ~TUMORD~ 15
END

IF ~~ THEN BEGIN NEJ198
  SAY ~I could have sworn I saw a griffin out of the corner of my eye... must have been what distracted me.~
  IF ~~ THEN REPLY ~Do we need an intelligence check or something here? All you had to do was to read a couple of scrolls... you can read can't you?~ GOTO NEJ199
  IF ~!Class(Player1,MAGE_ALL)~ THEN REPLY ~I don't understand a lot about magic but surely it has to be easier to read scrolls then trying to remember spells that have been memorised?~ GOTO NEJ199
END

IF ~~ THEN BEGIN NEJ199
  SAY ~Griffins are notorious for appearing when they sense magic is in the air, they don't seem to care whether its read from a scroll or pulled from the mind as long as they can interrupt the casting. It's been this way since way back when... well since griffins.~
  IF ~~ THEN DO ~ActionOverride("TuMord",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN NEJ200
  SAY ~Body snatching is it? This might be a good time for me to tell you of a couple of my cousins twice removed when they set out to... but then again maybe not. They came to a very sticky end and I don't mean it was strawberry jam that they were covered in when they were found!~
  IF ~True()~ THEN EXIT
  IF ~InParty("Korgan") !Dead("Korgan")~ THEN EXTERN ~KORGANJ~ NEJ224
END

IF ~~ THEN BEGIN NEJ201
  SAY ~Looks like something granny Jansen used to keep the cows out of her turnip patch.~
  IF ~True()~ THEN EXTERN ~HROTHJ~ 335
  IF ~InParty("Taffic") !Dead("Taffic")~ THEN EXTERN ~TAFFICJ~ leveler1
  IF ~InParty("Melora") !Dead("Melora")~ THEN EXTERN ~MELORAJ~ 25
END

IF ~~ THEN BEGIN tranfail
  SAY ~Beware, your kneecaps are... uh, where did he go?~
  IF ~~ THEN REPLY ~You can stop yelling gnome, you'll not be blasting anyone's kneecaps today. The test is done and you failed to make the grade.~ GOTO tranfai2
  IF ~~ THEN REPLY ~Looks as though that one gets to keep his kneecaps this time Jan.~ GOTO tranfai2
END

IF ~~ THEN BEGIN tranfai2
  SAY ~Now that is a shame, just when I had them both lined up and ready to blast. After all, everyone knows that a successful kneecapping makes for a happy Jansen and if a Jansen's  happy then the sun will always shine on all around him ... unless of course it rains that is.~
  IF ~~ THEN EXTERN ~TUMALV~ 24
END

IF ~~ THEN BEGIN invoker
  SAY ~Jan Jansen, always at your service.~
  IF ~~ THEN DO ~SetGlobal("VP_Jan_InvQuest","GLOBAL",1)~ EXTERN ~TUTHEOD~ jantest1
END

IF ~~ THEN BEGIN invoker2
  SAY ~Jan Jansen, always at your service.~
  IF ~~ THEN DO ~SetGlobal("VP_Jan_InvQuest","GLOBAL",1)~ EXTERN ~TUTHEOD~ jantest2
END

IF ~~ THEN BEGIN invfail
  SAY ~That mage has got himself a problem bigger than my old grandpa when the town of Hamelin, which incidently my old grandpa was the mayor of, became overrun by rats.~
  IF ~~ THEN REPLY ~I don't have the time for another of your ridiculous stories Jan. A couple of spells to get rid of some vermin, I didn't think I was asking too much of even one of your stature.~ GOTO invfail2
  IF ~~ THEN REPLY ~I don't even want to know how that one ends.~GOTO invfail3
END

IF ~~ THEN BEGIN invfail2
  SAY ~I'll thank you to remember that gnomes are known for their super intelligence. If it had been  a case of a couple of spells to get rid of the beasties then Jan Jansen would have been  the gnome to do it, but it would have taken the whole Jansen family to deal with that mage's beasties and we are a lot of gnomes~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN invfail3
  SAY ~Oh, but they all lived happily ever after. The town found itself a bard who led all the rats into the river with his merry tunes. Even  the wee ones skipped and played all day in the mountains. So happy were they that they never had cause to ever come home and give their parents grief, as wee ones often do.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN tafficuh
  SAY ~From Taffic to Umberhulk... now can I recall such an event ever happening in the Jansen family before.~
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
END

IF ~~ THEN BEGIN transmut
  SAY ~Now there's a thought! I'll be able to read of Jan Jansen's success in the past whilst living in the present, or at least it will be the present if Hrothgar here ever gets us home again.~
  IF ~~ THEN DO ~SetGlobal("VP_Jan_TraQuest","GLOBAL",1)~ EXTERN ~TUMALV~ janjan
END

IF ~~ THEN BEGIN abjurer
  SAY ~That reminds me of the last time cousin Willy fell off his chair and knocked himself out. Of course that was during an earthquake and when he woke up he wrote something called The Tempest. We Jansen's had to agree, one of his best pieces of work to date.~
  IF ~~ THEN REPLY ~Very interesting Jan, but are ready to pass this exam?~ GOTO abjurer1
END

IF ~~ THEN BEGIN abjurer1
  SAY ~Oh, I can do that.~
  IF ~~ THEN DO ~SetGlobal("VP_Jan_AbjQuest","GLOBAL",1)~ EXTERN ~TUPHIN~ jancast
END

IF ~~ THEN BEGIN abjurer2
  SAY ~There must have been a griffin about.~
  IF ~~ THEN REPLY ~Well, Jan, when this gets back to your cousin Willy, he is certainly going to fall of his chair... laughing.~ GOTO abjurer3
  IF ~~ THEN REPLY ~They do appear at the most inconvenient moments don't they, Jan?~ GOTO abjurer4
END

IF ~~ THEN BEGIN abjurer3
  SAY ~Then best we don't tell him or he might never write again or worse, he might expect Jan here to write for him... come to think of it, that may not be such a bad thing.~
  IF ~~ THEN EXTERN ~TUPHIN~ npcfail
END

IF ~~ THEN BEGIN abjurer4
  SAY ~(*Scratching his head*) Mmm, *a griffin in a magic academy*... must tell great aunt Jaykay about that one, I am sure she will make a great story out it.~
  IF ~~ THEN EXTERN ~TUPHIN~ npcfail
END

IF ~~ THEN BEGIN vashtest
  SAY ~I'll have you know that the name Jan Jansen is already a legend, just waiting to pass into history as the greatest gnomish inventor ever. But thinking about it... if I pass this test it will already be written in history as the greatest gnomish illusionist to come out of Halruaa academy.~
  = ~What a story that will be to tell Ma Jansen and the wee ones.~
  IF ~~ THEN DO ~SetGlobal("VP_Jan_IllQuest","GLOBAL",1)~ EXTERN ~TUVASHON~ janjan
END

IF ~~ THEN BEGIN vashon
  SAY ~Oh, where did I go wrong? Now what's Jan going to tell Ma and the wee ones?~
  IF ~~ THEN REPLY ~I can without doubt guarantee that it will another of your tall tales gnome, full of your usual exaggerations.~ GOTO vashon3
  IF ~~ THEN REPLY ~I am sure you will think of something Jan, you always do.~ GOTO vashon3
END

IF ~~ THEN BEGIN vashon3
  SAY ~Ah, but there is always a smidgen of truth in a Jansen's yarn. Only true stories as they happen to a Jansen are worthy of a telling, or so Jan was taught at the knee of his own dear Ma.~
  IF ~~ THEN EXTERN ~TUVASHON~ npcfail
END

END