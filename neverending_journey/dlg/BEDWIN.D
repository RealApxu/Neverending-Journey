APPEND ~BEDWIN~

IF ~~ THEN BEGIN melora1
  SAY ~You flatter yourself my dear. My eyes would have to be lowered to be looking at you, and Edwin Odesseiron never lowers his eyes to anyone. (*And certainly not to a female of any shape or form.*)~
  IF ~~ THEN EXTERN ~BMELORA~ edwin2
END

IF ~~ THEN BEGIN melora2
  SAY ~The fear of losing your head to a bounty hunter has made you paranoid hafling... either that or you have delusions above your station.~
  IF ~~ THEN EXTERN ~BMELORA~ edwin3
END

IF ~~ THEN BEGIN melora3
  SAY ~How certain are you that it wasn't your mother who ensorceled your father?~
  = ~I can't see any self respecting man, mage or otherwise taking a half woman to his bed when there are so many full bodied, willing females to be had.~
  = ~Your father was more likely to be the one under a spell. (*That is supposing he wasn't deformed and this is the result of such a union.*)~
  IF ~~ THEN EXTERN ~BMELORA~ edwin4
END

IF ~~ THEN BEGIN melora4
  SAY ~You're a feisty one, for all your size! Get that from your mother, do you? That would I suppose explain the attraction your father felt for her.~
  = ~(*After all, nothing beats having a spirited woman beneath one to heighten the moment.*)~
  IF ~~ THEN EXTERN ~BMELORA~ edwin5
END

IF ~~ THEN BEGIN melora5
  SAY ~This... this 'female' as she calls herself, accused me of...~
  IF ~~ THEN EXTERN ~BMELORA~ edwin7
END

IF ~~ THEN BEGIN melora6
  SAY ~For now. (*But later is another time my little harridan.*)~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN melora7
  SAY ~I assure you that this wizard has not the slightest intention of rubbing a de-evolved amoeba up any way!~
  IF ~~ THEN EXTERN ~BMELORA~ edwin10
END

END