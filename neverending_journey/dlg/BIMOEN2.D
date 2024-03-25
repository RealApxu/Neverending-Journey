APPEND ~BIMOEN2~

IF ~~ THEN BEGIN heist5
  SAY ~(*She looks at the two girls and walks hesitantly towards them*) Hi you two, all ready to hit the road?~
  IF ~~ THEN EXTERN ~BMELORA~ heist12
END

IF ~~ THEN BEGIN heist6
  SAY ~I... you said there wasn't as much gold as you were expecting so we should open the other chest, maybe there would be gems or jewels in it. Don't you remember Melora?~
  IF ~~ THEN EXTERN ~BMELORA~ heist13
END

IF ~~ THEN BEGIN heist7
  SAY ~Yeah... well... whilst you were collecting the gold you told me to go open the other one, we needed more than was in the first. It was trapped, and a pretty nasty one at that.~
  = ~The explosion brought the fat lord running in, he was screaming and waving this huge sword about. So I turned us all invisible and we high tailed it out of there!~
  = ~You should have seen his face, one minute he thought he'd caught us and the next... *poof*, we were gone.~
  IF ~~ THEN EXTERN ~BMELORA~ heist14
END

IF ~~ THEN BEGIN heist8
  SAY ~Yep, we dropped it off on our way back, hid it in a flour sack so she should find it soon enough.~
  IF ~~ THEN EXTERN ~BMELORA~ heist15
END

IF ~~ THEN BEGIN heist9
  SAY ~(*Her face turns a somewhat shade paler*) Yeah, I hope you remember real soon Melora, but don't push it, these things have to come on their own.~
  = ~(*Then shrugging  her shoulders*) Why worry about the guards Leina? I guess what it boils down to, is that they should have been more careful in choosing their employer.~
  = ~Ooops... <CHARNAME> is looking our way, <PRO_HESHE> has an uncanny knack of knowing when I'm trying to hide something. So lets smile sweetly at <PRO_HIMHER>, girls, and make as if we're ready to leave.~
  IF ~~ THEN EXTERN ~BMELORA~ heist16
END

IF ~~ THEN BEGIN heist10
  SAY ~You... you mean you don't remember anything Melora?~
  IF ~~ THEN EXTERN ~BMELORA~ heist18
END

IF ~~ THEN BEGIN heist11
  SAY ~We were doing ok, the guards were down easy as pie, the first chest almost empty then *BOOM*, the second one exploded and you got hit by a lump of flying chest. It must have been trapped, and a pretty nasty one at that.~
  IF ~~ THEN EXTERN ~BMELORA~ heist19
END

IF ~~ THEN BEGIN heist12
  SAY ~I... you said there wasn't as much gold as you were expecting so we should open the second chest, maybe there would be gems or jewels in it. Don't you remember Melora?~
  IF ~~ THEN EXTERN ~BMELORA~ heist20
END

IF ~~ THEN BEGIN heist13
  SAY ~Yeah... well... whilst you were collecting the gold you told me to go open the other one, we needed more than was in the first. It was trapped, and a pretty nasty one at that.~
  = ~The explosion brought the fat lord running in, he was screaming and waving this huge sword about. So I turned us both  invisible and we high tailed it out of there!~
  = ~You should have seen his face, one minute he thought he'd caught us and the next... *poof*, we were gone.~
  IF ~~ THEN EXTERN ~BMELORA~ heist21
END

IF ~~ THEN BEGIN heist14
  SAY ~Yep, we dropped it off on our way back, hid it in a flour sack so she should find it soon enough.~
  IF ~~ THEN EXTERN ~BMELORA~ heist22
END

IF ~~ THEN BEGIN heist15
  SAY ~(*Her face turning a somewhat shade paler*) Yeah, I hope you remember really soon but don't push it Melora, these things have to come on their own.~
  = ~Ooops... <CHARNAME> is looking our way, let's just smile sweetly at <PRO_HIMHER> and make as if we're ready to leave.~
  IF ~~ THEN EXTERN ~BMELORA~ heist23
END

IF ~~ THEN BEGIN heist16
  SAY ~Mmm... maybe we should just keep out of <PRO_HISHER> way for a bit. <CHARNAME> has an uncanny knack of knowing when I'm trying to hide something.~
  = ~(*Both girls immediately turn their attention to finishing their packing, confident that they can blend into the shadows and avoid any questions for the next day or two.~
  IF ~~ THEN EXIT
END

END