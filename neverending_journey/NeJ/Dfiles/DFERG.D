BEGIN ~DFERG~ 85675 // non-zero flags may indicate non-pausing dialogue

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY ~Greetings, weary traveler.  Are you in need of aid?~
  IF ~Global("Know_Gus","GLOBAL",1)~ THEN REPLY ~Has anyone ever told you that you look a lot like Brother Gus, the priest inside?~  DO ~SetGlobal("Know_Ferg","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY ~Yes.  I'm a stranger to this town.  Perhaps you could tell me what services I may find here.~  DO ~SetGlobal("Know_Ferg","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY ~Out of my way, you pious little toad!~  DO ~SetGlobal("Know_Ferg","GLOBAL",1 ) IncrementGlobal("Ferg_Pissed","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY ~Just passing through.  Farewell.~  DO ~SetGlobal("Know_Ferg","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY ~Yes, on numerous occasions.  It is not really much of a coincidence... considering that we are twins.~
  IF ~~ THEN REPLY ~Twins eh?  You even dress the same.  How quaint.~  GOTO 9
  IF ~~ THEN REPLY ~Well, that explains it, then.  I was just curious.~  GOTO 9
  IF ~~ THEN REPLY ~Great, two identical, sniveling servants of a pathetic God... just what this world needs.~  DO ~IncrementGlobal("Ferg_Pissed","GLOBAL",1)~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 10.0 9.0 7.0 6.0 5.2 4.0 3.0 0.1
  SAY ~Of course.  What services in particular do you seek?~
  IF ~~ THEN REPLY ~I am in need of a healer.~  GOTO 3
  IF ~~ THEN REPLY ~I am in need of a place to rest for the night.~  GOTO 4
  IF ~~ THEN REPLY ~I could use a drink.~  GOTO 5
  IF ~Global("Know_Conlan","GLOBAL",0)~ THEN REPLY ~I'm looking to purchase weapons and equipment.~  GOTO 6
  IF ~GlobalGT("Know_Conlan","GLOBAL",0)~ THEN REPLY ~I'm looking to purchase weapons and equipment.~  GOTO 7
  IF ~~ THEN REPLY ~Never mind.  I'll find them on my own.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY ~Then the blessings of the Broken God are upon you, for you stand before the House of the Bleeding Rose.  This is a place dedicated to the worship of the Lord on the Rack, Ilmater.  All who are in need of succor are welcome here.  Please, step inside and Revered Sister Calliana shall ease your suffering, friend.~
  IF ~~ THEN REPLY ~My thanks.  Could you tell me what other services I might find hereabouts?~  DO ~SetGlobal("Know_Calliana","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY ~Thank you.  Farewell.~  DO ~SetGlobal("Know_Calliana","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY ~What travelers we get in this town can find lodging at the Evening Shade.  It is a modest Inn nestled within the trunk of the Great Oak.  It used to be run by a man named Eidan, but I understand it's come under new ownership.  I have not yet met the new owner, however, but I have heard he is a halfling gentleman from the south.~
  IF ~~ THEN REPLY ~My thanks.  Could you tell me what other services I might find hereabouts?~  GOTO 2
  IF ~~ THEN REPLY ~Thank you.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY ~My friend, those that embrace the Broken God needn't seek comfort at the bottom of a mug.  However, those that wish to indulge in spirits are oft found at the Root Cellar, a small tavern directly to the west of here.~
  IF ~GlobalGT("Ferg_Pissed","GLOBAL",5)~ THEN REPLY ~Spare me your dreary philosophies, priest.  I'd say you and the rest of your horsehair shirt-wearing, self-flagellating brethren could use a stiff drink or two -- or three!~  DO ~IncrementGlobal("Ferg_Pissed","GLOBAL",1)~ GOTO 11
  IF ~GlobalLT("Ferg_Pissed","GLOBAL",6)~ THEN REPLY ~Spare me your dreary philosophies, priest.  I'd say you and the rest of your horsehair shirt-wearing, self-flagellating brethren could use a stiff drink or two -- or three!~  DO ~IncrementGlobal("Ferg_Pissed","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY ~My thanks.  Could you tell me what other services I might find hereabouts?~  GOTO 2
  IF ~~ THEN REPLY ~Thank you.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY ~What weapons we have in Kuldahar are forged by Conlan the Blacksmith.  His smithy can be found on the northern edge of town.  As for general supplies, our local amateur scholar, Gerth, has a shop across town, near the western bridge.~
  IF ~~ THEN REPLY ~My thanks.  Could you tell me what other services I might find hereabouts?~  DO ~SetGlobal("Know_Conlan","GLOBAL",1 ) SetGlobal("Know_Gerth","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY ~Thank you.  Farewell.~  DO ~SetGlobal("Know_Conlan","GLOBAL",1)SetGlobal("Know_Gerth","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY ~What weapons we have in Kuldahar are forged by Conlan the Blacksmith.  His smithy can be found on the northern edge of town.  As for general supplies, our local amateur scholar, Gerth, has a shop across town, near the western bridge.~
  IF ~~ THEN REPLY ~My thanks.  Could you tell me what other services I might find hereabouts?~  DO ~SetGlobal("Know_Gerth","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY ~Thank you.  Farewell.~  DO ~SetGlobal("Know_Gerth","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 10.2 9.1 5.1 1.2 0.2
  SAY ~As a servant of Ilmater, it is my lot to suffer the indignities and persecution of others.  Your intolerance serves only to strengthen my faith.  For that... I thank you.  Farewell.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1 1.0
  SAY ~Yes... well, is there some way I may be of assistance to you, friend?~
  IF ~~ THEN REPLY ~Yes.  I'm a stranger to this town.  Perhaps you could tell me what services I may find here.~  DO ~SetGlobal("Know_Ferg","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY ~Get it straight, Brother... you are NOT my friend -- and neither is your damn twin.  So stop calling me that or I'll show you some real suffering.~  DO ~IncrementGlobal("Ferg_Pissed","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY ~No thank you.  Farewell.~  DO ~SetGlobal("Know_Ferg","GLOBAL",1)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 10 // from:
  SAY ~Hello again, friend.  How can I be of service to you?~
  IF ~~ THEN REPLY ~Greetings, Brother Ferg.  Could you tell me what services I may find about town?~  GOTO 2
  IF ~GlobalGT("Ferg_Pissed","GLOBAL",5)~ THEN REPLY ~You'd serve me best by staying out of my way, you miserable wretch!~  DO ~IncrementGlobal("Ferg_Pissed","GLOBAL",1)~ GOTO 11
  IF ~GlobalLT("Ferg_Pissed","GLOBAL",6)~ THEN REPLY ~You'd serve me best by staying out of my way, you miserable wretch!~  DO ~IncrementGlobal("Ferg_Pissed","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY ~Nothing today, Brother.  Farewell.~  EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 5.0
  SAY ~That's it!  I've had enough of your barbs!  Prepare yourself!~
  IF ~~ THEN DO ~Enemy() ~ EXIT
END