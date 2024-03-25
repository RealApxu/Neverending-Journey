APPEND ~BYOSHIM~

IF ~~ THEN BEGIN NEJ1
  SAY ~Dar, my fine barbarian friend, tell me of the place you left behind.~
  IF ~~ THEN EXTERN ~BDAR~ 102
END

IF ~~ THEN BEGIN NEJ2
  SAY ~All that there is to know. I hear tales of barbarian tribes,snow and harsh cold conditions making it a place where only the strong can make any sort of life.~
  IF ~~ THEN EXTERN ~BDAR~ 103
END

IF ~~ THEN BEGIN NEJ3
  SAY ~You have to ask why people live in such places, when there are more hospitable climes to choose from.~
  IF ~~ THEN EXTERN ~BDAR~ 104
END

IF ~~ THEN BEGIN NEJ4
  SAY ~That may be true my friend, but now that you have experienced an easier life, does it not make you wonder why those people remain under such conditions.~
  IF ~~ THEN EXTERN ~BDAR~ 105
END

IF ~~ THEN BEGIN NEJ5
  SAY ~Then it is sad, that they would have lived and died not knowing the things you know Dar.~
  IF ~~ THEN EXTERN ~BDAR~ 107
END

IF ~~ THEN BEGIN NEJ6
  SAY ~Then who is to be pitied? Those condemned to a harsh life but are content or those who live in comfort and yet never seem content? Can you answer this for me Dar?~
  IF ~~ THEN EXTERN ~BDAR~ 108
END

IF ~~ THEN BEGIN NEJ7
  SAY ~And a wise answer it is my friend.~
  IF ~~ THEN EXIT
END

END