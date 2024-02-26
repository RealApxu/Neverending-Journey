BEGIN ~VPHROTH~

IF ~~ THEN BEGIN 0
  SAY ~(*Smiling*) And I am pleased to meet you, <CHARNAME>. But please, the name is Hrothgar, not Sir. As for our knowing one another, it is always possible to glimpse a face at one time and not register the seeing and then to feel that we see the same face at a future time.~
  IF ~~ THEN REPLY ~(*Returning the smile*) Then I am pleased to meet you Hrothgar... (*The feeling of familiarity returns fleetingly as Hrothgar speaks to you.*)~ EXTERN ~VPGORION~ 1
END

IF ~~ THEN BEGIN 1
  SAY ~You are right Gorion. We must recover the artifact soon and return it to my Brethren. I already feel the adverse effects the imbalance between future and past is having on The Realms. We must move swiftly.~
  IF ~~ THEN EXTERN ~VPGORION~ 2
END
