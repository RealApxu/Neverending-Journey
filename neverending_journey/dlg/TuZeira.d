BEGIN ~TuZeira~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Welcome to Halruaa. Are you new students?~
  IF ~~ THEN REPLY ~Er... yes.~ UNSOLVED_JOURNAL ~The Second Key Quest.

At last... confirmation of that which I seek. I have spoken with a mage by the name of Zeira. She has confirmed that Halruaa is indeed about to make a move on Ulcaster in order to prevent the rising trend towards the generalist mage undermining the teachings of the specialist. It appears that specialist mages from across the realms have passed through Hulruaa on their way to Ulcaster to lend their support to this campaign. I must intensify the search for if I can not prevent this then the fate of Ulcaster and his academy is surely sealed.~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~Excellent! You have chosen wisely in deciding to come to Halruaa. Specialisation is about to become the future of magic. Let me introduce myself, I am Zeira, a tutor in the school of abjuration here, and you are?~
  IF ~~ THEN REPLY ~I am <CHARNAME>. What do you mean by the future of magic, Zeira?~ GOTO 2
  IF ~~ THEN REPLY ~Hello, Zeira. I am <CHARNAME>. You say *about to become* the future. Can you explain what you mean by that statement?~ GOTO 2
  IF ~~ THEN REPLY ~Well met, Zeira. I am <CHARNAME>. Tell me, does this *about to become* have anything to do with the secrecy surrounding Halruaa at the moment?~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~We at Halruaa teach mages to specialise because we believe that in this way the power of the mage is greatly increased. The extra time required to specialise is time well spent as surely it is better to be adept in one school than master of none. The rising trend of the generalist mage threatens to undermine all that we strive to teach here. We cannot allow this to happen.~
  IF ~~ THEN REPLY ~Are you saying that Halruaa is about to take a stand for specialisation?~ GOTO 4
  IF ~~ THEN REPLY ~I am guessing, by what you have said, that Halruaa's mages are planning to stem the rise of generalisation?~ GOTO 4
  IF ~~ THEN REPLY ~Surely there is a place for the specialist and the generalist mage? There must be more to it than that?~ GOTO 4
  IF ~~ THEN REPLY ~At last, someone who is prepared to speak honestly to me. Tell me, Zeira, who is behind all this planning?~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY ~Secrecy is always a necessary part of any campaign. We at Halruaa do not want to cause alarm to our junior students, but at the same time we cannot allow this rising trend towards the generalist mage to undermine our teaching of the specialist.~
  IF ~~ THEN REPLY ~Are you saying that Halruaa is about to take a stand for specialisation?~ GOTO 4
  IF ~~ THEN REPLY ~I am guessing, by what you have said, that Halruaa's mages are planning to stem the rise of generalisation?~ GOTO 4
  IF ~~ THEN REPLY ~Surely there is a place for the specialist and the generalist mage? There must be more to it than that?~ GOTO 4
  IF ~~ THEN REPLY ~At last, someone who is prepared to speak honestly to me. Tell me, Zeira, who is behind all this planning?~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~It is not for me to give details about the affairs of Halruaa. Nor are any of the decisions that have been made open for further discussion. I tell you this because there can be no turning back, not now.~
  IF ~~ THEN REPLY ~Do you agree with what Halruaa's mages have taken it on themselves to do?~ GOTO 5
  IF ~~ THEN REPLY ~What makes you so sure that there can be no turning back?~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~You need not concern yourself with events from now on. All of Halruaa's mages are in agreement with what must be done. They are not alone, specialist mages throughout The Realms have passed through Halruaa and gathered to offer their support. Now, I am needed elsewhere and I am sure that you have things that you should be doing.~
  IF ~OR(2) !InParty("Hrothgar") Dead("Hrothgar")~ THEN DO ~EscapeArea()~ EXIT
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN DO ~EscapeArea()~ EXTERN ~HROTHJ~ 79
END