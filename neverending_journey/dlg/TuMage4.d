BEGIN ~TuMage4~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~You are, I believe, carrying my property?~
  IF ~~ THEN REPLY ~I think not.~ GOTO 1
  IF ~~ THEN REPLY ~Do I know you? No, I think not so I can not be carrying anything of yours.~ GOTO 1
  IF ~~ THEN REPLY ~What property would we be talking about here?~ GOTO 1
  IF ~~ THEN REPLY ~You implying that I am a thief? I advise you to watch your words, mage!~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~I heard the noise you made acquiring Graeme's wares, in fact, the whole of Halruaa probably heard you. What you took from him is mine.~
  IF ~Global("VP_Graeme_Password","GLOBAL",1) OR(2) CheckStatGT(Player1,14,WIS) CheckStatGT(LastTalkedToBy,14,WIS)~ THEN REPLY ~Answer me this then, mage... *the beast howls at night*...~ GOTO 2
  IF ~~ THEN REPLY ~How is it yours if I took it from him?~ GOTO 3
  IF ~~ THEN REPLY ~No, sorry it is not yours as you never actually paid, Graeme I think you called him. You were going to pay him, yes?~ GOTO 3
  IF ~~ THEN REPLY ~Spoils of war, my friend. What was this Graeme's is now mine.~ GOTO 6
  IF ~~ THEN REPLY ~If you do not wish to share the same fate as your friend Graeme, you will do well to step aside and let me pass!~ GOTO 6
END

IF ~~ THEN BEGIN 2
  SAY ~But only when the moon is full.~
  IF ~~ THEN REPLY ~I suppose that proves you are here to meet with this Graeme. Tell me, mage, what were you going to pay for this here merchandise?~ GOTO 3
  IF ~~ THEN REPLY ~That could be a lucky guess, luckier than mine, but then again, you could have overheard our conversation. Tell me, are you prepared to pay for what I have?~ GOTO 3
  IF ~~ THEN REPLY ~Proves nothing, you could have been eavesdropping on your friend Graeme's and my little chat. Tell me, what I have, what is it worth to you?~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~I was to pay Graeme 10,000g. I am prepared to pay you the same sum and before you ask for more, that is all I carry with me. I advise you to take my offer as you may leave here with the gold and your life but not with your life and the merchandise. Which is it to be?~
  IF ~~ THEN REPLY ~10,000g! Say no more, it is all yours.~ GOTO 4
  IF ~~ THEN REPLY ~That much eh? Makes me wonder what it is I have here and how much it will fetch outside of Halruaa's walls. I admit I have not seen the likes of such a metal before, not even from where I come from. I wonder how that is? I think I have changed my mind, sorry no sale.~ GOTO 5
  IF ~~ THEN REPLY ~I do not take kindly to threats. They sound more of a challenge to me to prove to you that I can leave here with my life, the merchandise AND your gold! Whereas you on the other hand...~ GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY ~Now that is what I deem being sensible. I trust the gold is sufficient enough to make sure word of this does not reach the ears of certain mages above us!~
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPCutT09")~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Well, allow me to use my magics to persuade you to change your mind.~
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~I will bargain with you, the 10,000g I was to pay Graeme in exchange for the merchandise and you leave here richer and with your life in tact. Refuse and... well... you do not leave at all!~
  IF ~~ THEN REPLY ~10,000g! Say no more, it is all yours.~ GOTO 4
  IF ~~ THEN REPLY ~That much eh? Makes me wonder what it is I have here and how much it will fetch outside of Halruaa's walls. I admit I have not seen the likes of such a metal before, not even from where I come from. I wonder how that is? I think I have changed my mind, sorry no sale.~ GOTO 5
  IF ~~ THEN REPLY ~I do not take kindly to threats. They sound more of a challenge to me to prove to you that I can leave here with my life, the merchandise AND your gold! Whereas you on the other hand...~ GOTO 5
END