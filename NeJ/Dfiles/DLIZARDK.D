BEGIN ~DLIZARDK~

IF ~NumberOfTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY ~Peoplesss!  What are you doing?  Cave belong to Lizard King Lissspen.  Me.~
  IF ~~ THEN REPLY ~It belongs to the Lizard King, eh?  How did you come to own it?~ DO ~SetGlobal("Throne_Room_Attack","TT4001",1)~ GOTO 1
  IF ~~ THEN REPLY ~This cave is going to belong to Dead Lizard King unless you tell me what your people are doing here.~ DO ~SetGlobal("Throne_Room_Attack","TT4001",1)~ GOTO 2
  IF ~~ THEN REPLY ~Did you take the villagers away from the valley?~ DO ~SetGlobal("Throne_Room_Attack","TT4001",1)~ GOTO 3
  IF ~~ THEN REPLY ~Where did you learn to speak Common, you ignorant savage?  I've seen idiotic goblins with better speech than you.~ DO ~SetGlobal("Throne_Room_Attack","TT4001",1)~ GOTO 4
  IF ~~ THEN REPLY ~Whoops.  I didn't realize this was your cave.  I'll be leaving now.  Farewell.~ DO ~SetGlobal("Throne_Room_Attack","TT4001",1)~ JOURNAL ~Dragon's Eye.

We met the "Lizard King" of Dragon's Eye.  He informed us that the upper caves of the volcano belonged to him.  We tried to leave, but he quickly attacked us, claiming that his people need food.~ GOTO 8
END

IF ~~ THEN BEGIN 1
  SAY ~Yxunomei bring us here.  She call us.~
  IF ~~ THEN REPLY ~Who is she?  Is she your queen?  What do you mean she "calls you"?~ JOURNAL ~Dragon's Eye.

We met the "Lizard King" of Dragon's Eye.  He informed us that the upper caves of the volcano belonged to him.  He also indicated that he was brought to the caves by someone named Yxunomei.  Apparently, the lizard men do the bidding of Yxunomei to feed his people.  They abduct the villagers for food and for Yxunomei.~ GOTO 5
  IF ~~ THEN REPLY ~I think I hear her calling me, too.  Farewell.~ JOURNAL ~Dragon's Eye.

We met the "Lizard King" of Dragon's Eye.  He informed us that the upper caves of the volcano belonged to him.  He also indicated that he was brought to the caves by someone named Yxunomei.  We tried to escape the area by telling the Lizard King we were going to see Yxunomei.  He told us he couldn't let us go because his people were starving.~ GOTO 8
END

IF ~~ THEN BEGIN 2
  SAY ~Proud peoples should no be ssso proud in presenccce of Lizard King.  Lizard King are brave warrior many woundsss.  Many human heartsss eaten after battle.  Continue proud talk if wanting to have heart eaten.~
  IF ~~ THEN REPLY ~I'd like to see you try, you scaly abomination.~ JOURNAL ~Dragon's Eye.

We met the "Lizard King" of Dragon's Eye.  He informed us that the upper caves of the volcano belonged to him.  We threatened him to make him tell us what was going on.  He threatened us back, so we called his bluff.  He wasn't bluffing.~ GOTO 6
  IF ~~ THEN REPLY ~I apologize, Lizard King.  Please grant me some of your great wisdom.~ JOURNAL ~Dragon's Eye.

We met the "Lizard King" of Dragon's Eye.  He informed us that the upper caves of the volcano belonged to him.  We threatened him to make him tell us what was going on.  He threatened us back, so we decided to back down.  He attacked us anyway.~ GOTO 7
  IF ~~ THEN REPLY ~No, uh... no heart eating today, thank you.  I have to be getting back to civilization now.  Farewell.~ JOURNAL ~Dragon's Eye.

We met the "Lizard King" of Dragon's Eye.  He informed us that the upper caves of the volcano belonged to him.  We threatened him to make him tell us what was going on.  He threatened us back, so we decided to back down.  He attacked us anyway.~ GOTO 8
END

IF ~~ THEN BEGIN 3
  SAY ~We take some for Yxunomei.  Others taken for food.~
  IF ~~ THEN REPLY ~The village?  You're eating the villagers?!  What kind of monsters are you?~ JOURNAL ~Dragon's Eye.

We met the "Lizard King" of Dragon's Eye.  He informed us that the upper caves of the volcano belonged to him.  We asked him why he took the villagers from the valley.  He told us that he took some of them for "Yxunomei," whoever that is.  According to him, the rest were taken for food.  He tried to make a snack out of us shortly after.~ GOTO 11
  IF ~~ THEN REPLY ~Well, that makes sense to me.  Human flesh *is* pretty tasty, after all.~ DO ~SetGlobal("Tasty_Flesh","GLOBAL",1)~ JOURNAL ~Dragon's Eye.

We met the "Lizard King" of Dragon's Eye.  He informed us that the upper caves of the volcano belonged to him.  We asked him why he took the villagers from the valley.  He told us that he took some of them for "Yxunomei," whoever that is.  According to him, the rest were taken for food.  He tried to make a snack out of us shortly after.~ GOTO 10
  IF ~~ THEN REPLY ~Who is she?  Is she your queen?~ JOURNAL ~Dragon's Eye.

We met the "Lizard King" of Dragon's Eye.  He informed us that the upper caves of the volcano belonged to him.  He also indicated that he was brought to the caves by someone named Yxunomei.  Apparently, the lizard men do the bidding of Yxunomei to feed his people.  They abduct the villagers for food and for Yxunomei.~ GOTO 5
  IF ~~ THEN REPLY ~Hmm.  Interesting.  Well, have fun with those villagers.  I need to be going now.  Farewell.~ JOURNAL ~Dragon's Eye.

We met the "Lizard King" of Dragon's Eye.  He informed us that the upper caves of the volcano belonged to him.  We asked him why he took the villagers from the valley.  He told us that he took some of them for "Yxunomei," whoever that is.  According to him, the rest were taken for food.  He tried to make a snack out of us shortly after.~ GOTO 8
END

IF ~~ THEN BEGIN 4
  SAY ~Lizard King are sssmart as you, idiot.  Common not the wordsss of my people.  Like to sssee you try ssspeaking lizard tongue.~
  IF ~~ THEN REPLY ~I apologize, Lizard King.  Please grant me some of your great wisdom.~ JOURNAL ~Dragon's Eye.

We met the "Lizard King" of Dragon's Eye.  He informed us that the upper caves of the volcano belonged to him.  We told him that his Common was horrible.  Apparently, he didn't like that very much.~ GOTO 7
  IF ~~ THEN REPLY ~You're pretty touchy, aren't you?  I was just going anyway. Farewell.~ JOURNAL ~Dragon's Eye.

We met the "Lizard King" of Dragon's Eye.  He informed us that the upper caves of the volcano belonged to him.  We told him that his Common was horrible.  Apparently, he didn't like that very much.~ GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY ~Yxunomei not our queen.  She queen of the sssnakesss.  Lizard King do Yxunomei'sss tasksss to get food for hisss people.  Village providesss usss much food.~
  IF ~~ THEN REPLY ~The village?  You're eating the villagers?!~ GOTO 9
  IF ~~ THEN REPLY ~Well, that makes sense to me.  Human flesh *is* pretty tasty, after all.~ DO ~SetGlobal("Tasty_Flesh","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY ~Hmm.  Interesting.  Well, have fun with those villagers.  I need to be going now.  Farewell.~ GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY ~Yesss, yesss.  Abominationsss.  If you only knew my tasssty friends.  Lizard King grow tired of playing with food now.  Your time hasss come.~
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Giving praise to Lizard King not make me want eating you any lesss.  Do not ssstruggle.~
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~Lizard King not let you leave.  People ssstarving, need food.  You understand, yesss?  Hold ssstill...~
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~Lizard people ssstarving.  Lizard King mussst make thingsss right and ssserve Yxunomei to help hisss people.  You interfere.  Cannot allow thisss.  ~
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~Ha, ha.  Humansss funny, try trick Lizard King.  I eat you anyway.  Not ssso funny now, is it?  Sssorry, funny perssson.~
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY ~We kind of monsters eat people because you tasty.  Hold still...~
  IF ~~ THEN DO ~Enemy()
~ EXIT
END