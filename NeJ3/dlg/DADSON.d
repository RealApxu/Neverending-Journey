BEGIN ~DADSON~

IF ~RandomNum(3,1)
!Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 0
  SAY ~So then, we all went down into the fields, and I saw a goose.  The goose was black.  It was black.  Black.  It was the largest goose I had ever seen, and when it spread its wings, the sky went dark and cold.  And black.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)
!Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 1
  SAY ~But we had no milk.  It was the summertime.  I remember it.  Mother was dressed in a black dress, and the pious sun shone red upon us that day.  All days are red now, and all the pretty ones are deep, deep in the black sea.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)
!Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 2
  SAY ~There was a porcelain vase sitting on the corner of the table.  Father thought it strange, so strange to find the vase sitting there.  He placed it under the table, in the blackness, to hide it from my eyes.~
  IF ~~ THEN EXIT
END

IF ~Global("Crazy_Priests","GLOBAL",1)~ THEN BEGIN 3
  SAY ~(This priest is crying, mumbling prayers to Ilmater for forgiveness.  He seems to not take notice of anything going on around him.)~
  IF ~~ THEN EXIT
END