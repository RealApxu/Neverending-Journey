BEGIN ~Graeme~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~The beast howls at night...~
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN REPLY ~Uh?~ EXTERN ~HROTHJ~ 70
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN REPLY ~What beast would that be my friend?~ EXTERN ~HROTHJ~ 70
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN REPLY ~Do you know, sometimes I feel like doing that myself.~ EXTERN ~HROTHJ~ 70
  IF ~InParty("Hrothgar") !Dead("Hrothgar")~ THEN REPLY ~I have not heard this beast of yours or any other beast around here.~ EXTERN ~HROTHJ~ 70
  IF ~OR(2) !InParty("Hrothgar") Dead("Hrothgar")~ THEN REPLY ~Uh?~ GOTO 1
  IF ~OR(2) !InParty("Hrothgar") Dead("Hrothgar")~ THEN REPLY ~What beast would that be my friend?~ GOTO 1
  IF ~OR(2) !InParty("Hrothgar") Dead("Hrothgar")~ THEN REPLY ~Do you know, sometimes I feel like doing that myself.~ GOTO 1
  IF ~OR(2) !InParty("Hrothgar") Dead("Hrothgar")~ THEN REPLY ~I have not heard this beast of yours or any other beast around here.~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~I repeat the beast howls at night...~
  IF ~~ THEN REPLY ~Sorry, but I believe you have mistaken me for someone else. I have no interest in what you or your howling beast are up to, if you do not mind I will be on my way.~ GOTO 2
  IF ~~ THEN REPLY ~And I repeat... what beast would that be my friend?~ GOTO 5
  IF ~OR(2) CheckStatGT(Player1,14,WIS) CheckStatGT(LastTalkedToBy,14,WIS)~ THEN REPLY ~Oh, I see... I am supposed to answer you with some equally cryptic reply and we shake hands right? OK. How does *because the beast is afraid of the dark* sound to you?~ GOTO 5
  IF ~OR(2) CheckStatGT(Player1,14,WIS) CheckStatGT(LastTalkedToBy,14,WIS)~ THEN REPLY ~Of course... the beast howls at night... when it sees the full moon?~ GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY ~I am afraid I cannot let you do that. Not now you know of us.~
  IF ~~ THEN REPLY ~Know of you, know what? That a bunch of you are hanging about in the sewers of Halruaa? I do not call that knowing of you, now if you will excuse me...~ GOTO 7
  IF ~~ THEN REPLY ~You have stirred my curiosity, what is there to know?~ GOTO 7
  IF ~~ THEN REPLY ~Look, I do not know you nor do I wish to know you, and that is the way I would like to keep it. I prefer to keep my nose out of any business dealings you have with mages here, so I will just be on my way and leave you to it.~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~Sorry, but I am not about to take the chance that you lie and have you spoil my little business arrangement here by allowing you to run to those wizards with your information.~
  IF ~~ THEN REPLY ~It might interest you to know that it is in my own best interest for me to have as little contact with Halruaa's mages as I can, so you can be assured I will not be telling any wizard anything when I leave here.~ GOTO 4
  IF ~~ THEN REPLY ~I am quite happy to walk away and leave you to whatever it is you do in peace, but if you insist on a confrontation I will happily oblige you!~ GOTO 4
  IF ~~ THEN REPLY ~Please, I really do not want this to escalate into violence, just let me pass and I will not say anything to anyone.~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~As I said sorry and all that but...~
  IF ~~ THEN DO ~SetGlobal("VP_Graeme_Password","GLOBAL",1) ActionOverride("TuSmug",Enemy()) Shout(89) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~Wrong answer my friend. The reply I was looking for should have been... *but only when the moon is full*, not that you'll need to know it where I am about to send you.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~First though, answer me this, which of those wizards in the academy found out about us eh? Who was it that sent you down here to root us out?~
  IF ~~ THEN REPLY ~I am not in league with any wizards. I am here for my own reasons, none of which concern you. Now, if you step aside I will be about them.~ GOTO 3
  IF ~~ THEN REPLY ~No one, wizard or otherwise has sent me down here to root you out! I have no interest in whatever petty dealings you have with them, my own concerns are giving me enough of a headache without adding to it by running errands for wizards. Now, out of my way!~ GOTO 3
  IF ~~ THEN REPLY ~Believe it or not that would have been my next guess! Ah well, I gave it the best shot I could... I thought it was quite good myself!~ GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY ~You think me a fool! You expect me to believe that you know nothing? I see no other reason for you being down here if not on some wizards errand? Which one of them sent you eh? Which one?~
  IF ~~ THEN REPLY ~I am not in league with any wizards. I am here for my own reasons, none of which concern you. Now, if you step aside I will be about them.~ GOTO 3
  IF ~~ THEN REPLY ~No one, wizard or otherwise has sent me down here! I have no interest in whatever petty dealings you have with them, my own concerns are giving me enough of a headache without adding to it by running errands for wizards. Now, out of my way!~ GOTO 3
  IF ~~ THEN REPLY ~I am no ones lackey, I run errands for no one! Now I suggest you step aside, quickly!~ GOTO 3
END

IF ~~ THEN BEGIN 8
  SAY ~Enough of your smart mouth! You think I do not know the reason behind you being here? Which one of those wizards is paying you to do their dirty work eh? Which one?~
  IF ~~ THEN REPLY ~I am not in league with any wizards. I am here for my own reasons, none of which concern you. Now, if you step aside I will be about them.~ GOTO 3
  IF ~~ THEN REPLY ~No one, wizard or otherwise has sent me down here! I have no interest in whatever petty dealings you have with them, my own concerns are giving me enough of a headache without adding to it by running errands for wizards. Now, out of my way!~ GOTO 3
  IF ~~ THEN REPLY ~I am no ones lackey, I run errands for no one! Now I suggest you step aside, quickly!~ GOTO 3
END