BEGIN ~NOBW4~

IF ~~ THEN BEGIN 0
  SAY ~Oh yes darling, they are MOST standoffish.~
  IF ~~ THEN REPLY ~They lead a somewhat cloistered life here, so they are unaccustomed to many visitors.  You are perhaps a bit... colorful compared to what they are used to.~ GOTO 1
  IF ~ReactionLT(LastTalkedToBy(Myself),FRIENDLY_LOWER)~ THEN REPLY ~Watch your tongue!  This was my home for a good part of my life and I'll not have you slighting them in their own keep!~ GOTO 2
  IF ~ReactionGT(LastTalkedToBy(Myself),NEUTRAL_UPPER)~ THEN REPLY ~Watch your tongue!  This was my home for a good part of my life and I'll not have you slighting them in their own keep!~ EXTERN ~NOBL4~ 2
  IF ~ReactionLT(LastTalkedToBy(Myself),FRIENDLY_LOWER)~ THEN REPLY ~Oh, I would not let it concern you, milady.  Perhaps they are not used to wealth such as yours.  You are quite wealthy, are you not?  Bring a lot of expensive jewelry with you?~ EXTERN ~NOBL4~ 4
  IF ~ReactionGT(LastTalkedToBy(Myself),NEUTRAL_UPPER)~ THEN REPLY ~Oh, I would not let it concern you, milady.  Perhaps they are not used to wealth such as yours.  You are quite wealthy, are you not?  Bring a lot of expensive jewelry with you?~ GOTO 3
  IF ~~ THEN REPLY ~Perhaps they have not been as welcoming as they could have, but you ARE strangers in their home.~ EXTERN ~NOBL4~ 6
END

IF ~~ THEN BEGIN 1
  SAY ~Colorful?  Dear, perhaps we should dress a little more plainly to fit in?~
  IF ~~ THEN EXTERN ~NOBL4~ 1
END

IF ~~ THEN BEGIN 2
  SAY ~Well!  At least the monks were QUIET in their condemnation.  Hrmph!~
  IF ~~ THEN EXTERN ~NOBL4~ 3
END

IF ~~ THEN BEGIN 3
  SAY ~Perhaps that was it?  It may have looked as though we were showing off.  I'm going to lock all my jewelry back in the room dear, so I don't offend them again.~
  IF ~~ THEN EXTERN ~NOBL4~ 5
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 4
  SAY ~Oh!  Though I find you quite lovely, I don't think Thurston would really want me cavorting with strangers.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~I'd much prefer it if you would leave me be!~
  IF ~~ THEN EXIT
END