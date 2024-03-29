BEGIN ~ALDAIR~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Friends, I am Aldair and you have come to seek the wisdom. I am the teacher of wisdom and I will teach all who heed my word.~
  IF ~~ THEN REPLY ~Yes my friend, I seek the wisdom, what can you tell me?~ GOTO 2
  IF ~~ THEN REPLY ~I seek the wisdom but I do not need you to teach me Aldair. I want only the book that you teach it from.~ GOTO 4
  IF ~~ THEN REPLY ~(*Not another insane druid, what is it with these nature guys! Too much fresh air, it must soften the brain*) Aldair, I have friends who wish to hear of the wisdom and have asked that I take the book to them so they might read it.~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~I can teach you whatever you want to learn, but first you must tell me what you wish to learn. Only when I know what it is you do not know can I proceed to teach you.~
  IF ~~ THEN REPLY ~I would like to teach myself Aldair. Will you not give me the book that I may learn these great words?~ GOTO 4
  IF ~~ THEN REPLY ~(*This is not going to work, may the gods protect from insane druids!*) Just give me the book Aldair and I will leave you to your ramblings.~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY ~If your friends wish to hear my word then they must come to me so I can speak it to them, they can not hear it by reading the book. Bring them to me and I will teach them.~
  IF ~~ THEN REPLY ~Alas, that is not possible, I must take your wisdom to them. I am sure they will return it to you once they have learnt.~ GOTO 4
  IF ~~ THEN REPLY ~Then let me read the words Aldair, that way I can teach them myself.~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~No, you cannot read the great book! It is forbidden to all that do not know the way to read what is written.~
  = ~If you wish to hear what the wisdom says then only I can read it to you for the wisdom is not whole.~
  = ~Any who are not permitted to look upon its words or do not know the way of the wisdom will be driven insane because they will not understand.~
  = ~I have been told to take it and keep it safe, it is the only way to maintain balance.~
  IF ~~ THEN REPLY ~I already know the wisdom Aldair. I am permitted to read the words.~ GOTO 5
  IF ~~ THEN REPLY ~(*That  explains a lot*) Yes, yes, I know all this. I would not ask to read it if I thought it would drive me insane, would I?~ GOTO 5
  IF ~~ THEN REPLY ~Give me the book and I will prove to you that I can read its words and retain my wits?~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~If you wish to read the book then you must prove to me that you speak the truth that you know the way of the wisdom.~
  = ~It is too dangerous for me to allow you to read the words if you are lying.~
  = ~You will answer me three questions. If you truly possess the knowledge and you answer all three correctly you shall be permitted to read the word. Are you ready?~
  IF ~~ THEN REPLY ~Ask your questions.~ GOTO 6
  IF ~~ THEN REPLY ~I suppose it will do no harm to humour you, ask away.~ GOTO 6
  IF ~~ THEN REPLY ~(*Yet another druid with a fondness for games*) I am, but regardless of the outcome of this little game I will have that book.~ GOTO 6
END

IF ~~ THEN BEGIN 6
 SAY ~Then this is my first question, listen carefully:

If you break me,
I do not stop working.
If you touch me,
I may be ensnared.
If you lose me,
Nothing will matter.
What am I?~
  IF ~~ THEN REPLY ~Hope.~ GOTO 7
  IF ~~ THEN REPLY ~My soul.~ GOTO 7
  IF ~~ THEN REPLY ~My Heart.~ GOTO 8
  IF ~~ THEN REPLY ~Breath.~ GOTO 7
  IF ~~ THEN REPLY ~Spirit.~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~You lie to me! If you have the knowledge then you would have known what it is that I speak of! I will speak no more with you.~
  IF ~~ THEN DO ~SetGlobal("VP_Dar_Quest","GLOBAL",87) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~A wise reply, now to the next. Once again listen carefully and then answer me.~
  = ~A wizard has four apprentices named Ardel, Brynn, Caryl and Demetri. One day, whilst playing with the wizards magic wand, one of them broke it.~
  = ~Ardel says Brynn broke it. Brynn says Caryl broke it. Caryl and Demetri say they do not know who broke it.~
  = ~Given that only the guilty apprentice is lying, who broke the wizard's wand?~
  IF ~~ THEN REPLY ~Ardel.~ GOTO 7
  IF ~~ THEN REPLY ~Brynn.~ GOTO 9
  IF ~~ THEN REPLY ~Caryl.~ GOTO 7
  IF ~~ THEN REPLY ~Demetri.~ GOTO 7
END

IF ~~ THEN BEGIN 9
  SAY ~(*Beginning to look agitated*) Again a wise reply, now to my final question. Once again, listen carefully and then answer me.~
  = ~I have a deck of cards, but some are missing from it. If I deal them equally between nine people, I have two cards left over.~
  = ~If I deal them between four people, I have three cards left over. If I deal them between seven people, I have five cards left over.~
  = ~Given that there would be fifty-two cards in my deck if it was complete, how many are missing from my deck?~
  IF ~~ THEN REPLY ~One.~ GOTO 7
  IF ~~ THEN REPLY ~Two.~ GOTO 7
  IF ~~ THEN REPLY ~Three.~ GOTO 7
  IF ~~ THEN REPLY ~Four.~ GOTO 7
  IF ~~ THEN REPLY ~Five.~ GOTO 10
  IF ~~ THEN REPLY ~Six.~ GOTO 7
END

IF ~~ THEN BEGIN 10
  SAY ~No I will not let the wisdom leave my hand! I am being told that you will use it to destroy the balance and at all cost balance must be maintained!~
  = ~I must listen to what is said to me and destroy you before you make it whole and bring insanity to the world.~
  IF ~~ THEN DO ~SetGlobal("VP_Dar_Quest","GLOBAL",13) Enemy()~ EXIT
END