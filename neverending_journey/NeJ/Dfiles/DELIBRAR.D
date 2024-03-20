BEGIN ~DELIBRAR~ 87841 // non-zero flags may indicate non-pausing dialogue

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Greetings, stranger.  I am the librarian of this retreat.  I am called Geelo.  Can I be of assistance?~ 
  IF ~~ THEN REPLY ~Yes.  I was wondering if I could look through your books.~  GOTO 1
  IF ~~ THEN REPLY ~Do you know anything about the strange happenings in Kuldahar?~  GOTO 3
  IF ~~ THEN REPLY ~Do you know anything about the Heartstone Gem?~  GOTO 4
  IF ~~ THEN REPLY ~No, thanks.  Farewell, Geelo.~  EXIT
END

IF ~~ THEN BEGIN 1 // from: 5.2 4.1 3.0 0.0
  SAY ~Certainly.  You may browse through any of the books here.  However, the library through the door to the north is restricted to members of our community.  Is there anything else I can help you with?~ 
  IF ~~ THEN REPLY ~Do you have any magical texts?~  GOTO 2
  IF ~~ THEN REPLY ~Have you heard anything about the strange occurrences near Kuldahar?~  GOTO 3
  IF ~~ THEN REPLY ~I'm looking for an item called the Heartstone Gem.  It's an old relic of the church of Silvanus.  Do you know anything about it?~  GOTO 4
  IF ~!Alignment(Player1,16)
CheckStatGT(Player1,12,INT)
!GlobalGT("Geelo_Trick","GLOBAL",0)~ THEN REPLY ~No, but I think Albion said that he wanted to talk to you about something.  I might have misunderstood him, but I think that's what he said.~  DO ~SetGlobal("Geelo_Trick","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY ~Not right now.  Farewell, Geelo.~  EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY ~Yes, I do have a few scrolls that I might be willing to part with.~ 
  IF ~~ THEN REPLY ~Please show me what you have.~  DO ~StartStore("Dehlibra",Player1)~ EXIT
  IF ~~ THEN REPLY ~Have you heard anything about the abductions in Kuldahar?~  GOTO 3
  IF ~~ THEN REPLY ~Do you know anything about the Heartstone Gem?~  GOTO 4
  IF ~~ THEN REPLY ~Farewell, Geelo.~  EXIT
END

IF ~~ THEN BEGIN 3 // from: 5.0 4.0 2.1 1.1 0.1
  SAY ~We don't get out of the sanctuary very often, so we don't know much about what goes on outside of Dragon's Eye.~ 
  IF ~~ THEN REPLY ~I was wondering if I could look through your library.~  GOTO 1
  IF ~~ THEN REPLY ~The abductions might be linked to the theft of an artifact from Kuldahar called the Heartstone Gem.  Do you know of it?~  GOTO 4
  IF ~~ THEN REPLY ~Farewell, Geelo.~  EXIT
END

IF ~~ THEN BEGIN 4 // from: 5.1 3.1 2.2 1.2 0.2
  SAY ~I know something about it.  I know that it is an artifact of Silvanus and that it was taken from Kuldahar long ago.  Other than that, I know nothing.  Can I help you with anything else?~ 
  IF ~~ THEN REPLY ~People have been disappearing from Kuldahar.  Do you know anything about it?~  GOTO 3
  IF ~~ THEN REPLY ~May I look at the books in your library?~  GOTO 1
  IF ~~ THEN REPLY ~Farewell, Geelo.~  EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 5 // from:
  SAY ~Welcome back, traveler.  Can I be of assistance?~ 
  IF ~~ THEN REPLY ~People have been disappearing from Kuldahar.  Do you know anything about it?~  GOTO 3
  IF ~~ THEN REPLY ~I am looking for a relic called the Heartstone Gem.  Do you know of it?~  GOTO 4
  IF ~~ THEN REPLY ~May I look at the books in your library?~  GOTO 1
  IF ~!Alignment(Player1,16)
CheckStatGT(Player1,12,INT)
!GlobalGT("Geelo_Trick","GLOBAL",0)~ THEN REPLY ~No, but I think Albion said that he wanted to talk to you about something.  I might have misunderstood him, but I think that's what he said.~  DO ~SetGlobal("Geelo_Trick","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY ~Farewell, Geelo.~  EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.3 1.3
  SAY ~Oh!  Hmm... well then, I should see what he needs.~ 
  IF ~~ THEN REPLY ~Farewell.~  EXIT
END