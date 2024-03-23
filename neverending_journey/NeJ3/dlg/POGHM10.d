BEGIN ~POGHM10~

IF ~RandomNum(4,1)~ THEN BEGIN 0
  SAY ~Thought you could learn something of value outside these walls, did you, <CHARNAME>? I knew you'd come scampering back before the snows flew.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN 1
  SAY ~We heard about Gorion... Welcome home, <CHARNAME>, you've spent a long time grieving.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN 5
  SAY ~Please, do not disturb my contemplative ambling.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN 6
  SAY ~You put your left foot in, you take your left foot out, you put your left foot in and you shake it all about... Oh! I, uh, didn't see you there... The wisdom of Oghma manifests itself in, uh, many ways... I'll be on my way, now.~
  IF ~~ THEN EXIT
END