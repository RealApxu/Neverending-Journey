BEGIN ~TREBOIS~

IF ~Global("VP_Back_To_CKeep","GLOBAL",0) Global("VP_Melora_Quest","GLOBAL",0)~ THEN BEGIN 0
  SAY ~At last Melora Tenarien! You have led me a merry dance... but wait, let us continue this somewhere a little less public.~
  IF ~~ THEN DO ~SetGlobal("VP_Melora_Quest","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutM02")~ EXIT
END

IF ~Global("VP_Back_To_CKeep","GLOBAL",0) Global("VP_Melora_Quest","GLOBAL",1)~ THEN BEGIN 1
  SAY ~Ah, this is much quieter. Now, let me introduce myself <CHARNAME>, I am Daniel Trebois, you need not be so surprised at hearing your name, in my occupation it serves to keep abreast of rumours and gossip.~
  = ~You are known to this area, but have no fear, you are not my quarry this day. My interest is this hafling female you have amongst you and the gold her head will bring me.~
  IF ~~ THEN EXTERN ~MELORAJ~ MQ1
END

IF ~~ THEN BEGIN 2
  SAY ~How I take you my dear girl does not concern me. The prize is the same if I take you or just your head, but let me ask your companion what <PRO_HESHE> has to say on the matter.~
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ trebois
  IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~What say you <CHARNAME>, are you prepared to fight for this little thief here, or are you going to be sensible and hand her over to me in return for me sending you back to Candlekeep?~
  IF ~~ THEN REPLY ~Trebois is it? Well Trebois, I do not feel like being sensible today, so, if you plan on taking Melora then you will have to go through me first. It might be wiser and safer for you to rethink your options and return us to Candlekeep.~ GOTO 7
  IF ~~ THEN REPLY ~I do not appreciate being whisked to god knows where by some upstart of a bounty hunter! Return me and my companions, ALL of my companions, to Candlekeep now and I may forget this small transgression of yours!~ GOTO 7
  IF ~~ THEN REPLY ~Melora has been assured of my protection from the likes of you, so you may as well save your breath as it may well be your last unless you return us now! Now, try and take her if you will or return us, the choice is yours?~ GOTO 7
  IF ~~ THEN REPLY ~If I hand her over to you, I shall expect a share in the reward.~ GOTO 4
  IF ~~ THEN REPLY ~The last thing I want is trouble from bounty hunters, I have business that cannot waitin Candlekeep. Take her and return us now!~ GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY ~You do not seem to grasp the situation here. You hand the little thief to me and I will return you. That is all the reward you get.~
  = ~If you refuse then you remain here and I will return at some later time and collect her head myself, when you are all dead. Now which is it to be?~
  IF ~~ THEN REPLY ~No reward, no Melora.~ GOTO 7
  IF ~~ THEN REPLY ~If I am to remain here, then so shall you. Only difference being, unlike me, you will not remain here alive.~ GOTO 7
  IF ~~ THEN REPLY ~Take her Trebois! I have other concerns far more important than the fate of a hafling. Now, return me!~ GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~I am so glad you see things my way <CHARNAME>.~
  = ~I really did not want to have to return here and sort through your body parts to find Melora's head, that would have been... rather messy. Much better this way, for all of us.~
  IF ~~ THEN EXTERN ~MELORAJ~ MQ2
END

IF ~~ THEN BEGIN 6
  SAY ~Idle threats hafling, my employer has his own ideas on suitable punishments for thieves who steal from him, as you will learn to your cost. Farewell <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("VP_Melora_Quest","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutM03")~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~I have no intentions of fighting over this hafling. As I have said, I only need her head for payment.~
  = ~So I will leave you here and return later to sort through your body parts to find it. A messier outcome than I would have desired, but when needs must.~
  IF ~~ THEN DO ~SetGlobal("VP_Melora_Quest","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutM04")~ EXIT
END

IF ~Global("VP_Back_To_CKeep","GLOBAL",1)~ THEN BEGIN 8
  SAY ~You do surprise me hafling, you have more lives than a cat! How many did you use up escaping the beasts I wonder?~
  = ~I thought to be collecting your head very shortly, you have saved me the trip back.~
  IF ~InParty("Minsc") !Dead("Minsc")~ THEN EXTERN ~MINSCJ~ trebois2
  IF ~OR(2) !InParty("Minsc") Dead("Minsc")~ THEN EXTERN ~MELORAJ~ MQ7
END

IF ~~ THEN BEGIN 9
  SAY ~Fighting words thief! I thought to avoid a confrontation here, what with the peasants thinking you a heroine of sorts.~
  = ~The last thing I wanted was to see you martyred for their cause, poor misguided people. Still, you leave me no choice hafling.~
  IF ~~ THEN REPLY ~Trebois, I am flattered you felt it necessary to meet us on our return. I would have sought you out myself had you not, we have unfinished business.~ GOTO 10
  IF ~~ THEN REPLY ~Trebois, so good to see you! Well, maybe not so good for you!~ GOTO 10
  IF ~~ THEN REPLY ~I warn you Trebois, Melora is under my protection, turn around and leave whilst you still can.~ GOTO 12
  IF ~~ THEN REPLY ~Give it up Trebois! This is one bounty you will not be collecting, so why not step aside and let us pass?~ GOTO 12
  IF ~~ THEN REPLY ~There is always a choice Trebois, the knack is having the sense to look at the most likely outcome and then choosing wisely.~ GOTO 14
END

IF ~~ THEN BEGIN 10
  SAY ~Has this hafling not caused you enough trouble as it is <CHARNAME>? Is she really worth risking your neck for? Come, let us not shed anymore blood over this thief.~
  IF ~~ THEN REPLY ~This became personal when you stranded me in that accursed glade Trebois. I looked on every beast I killed as bringing me that bit closer to you.~ GOTO 11
  IF ~~ THEN REPLY ~This is now much more than a fight for the life of a hafling Trebois. You would have done well to have taken time to learn more of your opponent before making any hasty moves.~ GOTO 11
  IF ~~ THEN REPLY ~No more words Trebois, yours is the only blood that will be spilt this day!~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~I have nothing against you <CHARNAME>, I took a job, a contract, and I have never failed to deliver what I promise. You just happen to stand between me and my goal, but not for very much longer.~
  IF ~~ THEN DO ~SetGlobal("VP_Back_To_CKeep","GLOBAL",2) ActionOverride("TrebHun1",Enemy()) ActionOverride("TrebHun2",Enemy()) ActionOverride("TrebHun3",Enemy()) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY ~I have tracked this hafling too long to let her slip through my fingers again, she has proven the most elusive of any quarry that I have sought.~
  = ~Many times she was within my grasp and many times I turned around and she was gone.~
  = ~It is a matter of principal now <CHARNAME>, what would it do to my reputation if word got out that a hafling got one over Daniel Trebois? Besides, the prize is too good to pass on.~
  IF ~~ THEN REPLY ~It is said pride comes before a fall Trebois, I guess pride is about to become your downfall this day.~ GOTO 13
  IF ~~ THEN REPLY ~Do you not see how your worrying about your reputation means you are allowing a hafling to force your hand Trebois? You know you cannot win, so why die for the sake of a name?~ GOTO 13
  IF ~~ THEN REPLY ~You consider it better to be known that a hafling brought Daniel Trebois down after your death, rather than live with the stigma of being brought down by a hafling? People forget quickly Trebois, leave now and at least you get to live another day.~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY ~Who is to say that it will be me that falls this day? You have not won yet, maybe it will be your pride that is to be your downfall <CHARNAME>, if not today then perhaps another.~
  IF ~~ THEN DO ~SetGlobal("VP_Back_To_CKeep","GLOBAL",2) ActionOverride("TrebHun1",Enemy()) ActionOverride("TrebHun2",Enemy()) ActionOverride("TrebHun3",Enemy()) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY ~Looking at the most likely outcome you say?~
  = ~Well, I would say looking at you at this moment and knowing that you must be near exhausted after fighting your way past Shendru and his pets, I think the odds are on my side.~
  = ~Maybe you should be the one considering your options and hand the thief over to me.~
  IF ~~ THEN REPLY ~You have no idea who it is you are talking to Trebois, otherwise you would not stand in my way. One last time bounty hunter, move your ass out of my way!~ GOTO 15
  IF ~~ THEN REPLY ~I am tired Trebois, that much is true. I am also sick, sick and tired of upstarts like you getting in my way, sick and tired of everyone trying to get a piece of me. You want a piece of me too, then let us see what you have got!~ GOTO 15
  IF ~~ THEN REPLY ~I may be tired Trebois, but I fight better when under duress. Do you really want me to prove this to you?~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~I have no argument with you <CHARNAME>, you were never my quarry. I have already told you this, but if you think this little thief is worth risking your neck over, then that is your choice.~
  IF ~~ THEN DO ~SetGlobal("VP_Back_To_CKeep","GLOBAL",2) ActionOverride("TrebHun1",Enemy()) ActionOverride("TrebHun2",Enemy()) ActionOverride("TrebHun3",Enemy()) Enemy()~ EXIT
END