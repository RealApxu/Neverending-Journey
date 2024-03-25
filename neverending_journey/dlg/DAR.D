BEGIN ~DAR~

IF WEIGHT #-2 ~Global("VP_Create_Dar","GLOBAL",6)~ THEN BEGIN 0
  SAY ~What luck for me that you were passing this way. I am Dar and I thank you for your aid. One or two of the beasts are no trouble for the likes of me but when a whole pack decides you're to be their next meal even the strength of a barbarian is hard pressed to best them.~ [DAR_01]
  IF ~NumInPartyGT(2)~ THEN REPLY ~It was indeed fortunate that my companions and I were passing Dar. I am <CHARNAME>. These roads are proving unsafe for lone travellers even one of your stature. Where are you heading?~ DO ~SetGlobal("VP_Create_Dar","GLOBAL",7)~ GOTO 1
  IF ~NumInParty(2)~ THEN REPLY ~It was indeed fortunate that my companion and I were passing Dar. I am <CHARNAME>. These roads are proving unsafe for lone travellers even one of your stature. Where are you heading?~ DO ~SetGlobal("VP_Create_Dar","GLOBAL",7)~ GOTO 1
  IF ~NumInParty(1)~ THEN REPLY ~It was indeed fortunate that I was passing Dar. I am <CHARNAME>. These roads are proving unsafe for lone travellers even one of your stature. Where are you heading?~ DO ~SetGlobal("VP_Create_Dar","GLOBAL",7)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~Anywhere that I will eventually be able to find peace and call home. Anywhere I'm not shunned or hunted for what I am. You don't appear to harbour the prejudices that I have come to expect from your people. You would certainly have let the wolves have me if you did.~ [DAR_02]
  IF ~~ THEN REPLY ~I have been raised to judge a being by their actions, not by their faces or the unfortunate circumstances that bring them into this world. You have the speech of a civilised being and I shall treat you as so until you prove to me different.~ GOTO 2
  IF ~~ THEN REPLY ~Of course, I would enjoy the amusement watching these beasts feast on your barbaric flesh.~ GOTO 5
  IF ~~ THEN REPLY ~I have no time to waste with you right now, so could you kindly be on your way.~ GOTO 5
  IF ~~ THEN REPLY ~I've no time to be sidetracked by your petty personal problems.~ GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY ~Then perhaps you will allow me to travel with you a while for there surely is safety in numbers? I have a strong arm and have never been known to flinch from using it when needed.~ [DAR_03]
  IF ~~ THEN REPLY ~A strong arm is always of use Dar. I cannot say where our present road will take us, but if you have the courage to follow such an uncertain road then join with us.~ GOTO 3
  IF ~~ THEN REPLY ~I don't think it would be a wise step. You would surely draw attention to us where ever we go, through no fault of your own I hasten to add. Whereas I have no objections to the fellow yourself,  I cannot help but think we will be bringing more trouble on ourselves just by having you amongst us.~ GOTO 4
  IF ~~ THEN REPLY ~I'm sorry Dar, I'm not doubting your courage but we follow a road that even I know not where it will take us. We cannot risk the attention you being with us will attract. I wish you luck on your travels and hope you find what you're looking for.~ GOTO 4
  IF ~~ THEN REPLY ~I have no use for a creature such as you. You appear intelligent and maybe deserve a chance in this world but you must make it on your own. Now be gone.~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY ~My friend, life itself is an uncertain road and holds no fear for me. Nor shall this road of yours.~ [DAR_04]
  IF ~~ THEN DO ~SetGlobalTimer("VP_Dar_PC","GLOBAL",THIRTEEN_DAYS) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~I'm saddened you feel as you do but I well understand your reluctance to take  me into your group. I will continue my road alone and wish you well on yours.~ [DAR_05]
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~I'm saddened you feel as you do but I well understand your attitude toward me, though I don't accept it. I will continue my road alone and wish you well on yours.~ [DAR_05]
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

//IF WEIGHT #0 ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 6
//  SAY ~Damn you beasts! You think to make Dar your next meal! I'll make sure you don't all get a taste of my flesh this day!~
//  IF ~~ THEN EXIT
//END

//IF WEIGHT #-1 ~Global("VP_Create_Dar","GLOBAL",4)~ THEN BEGIN 7
//  SAY ~Ha! Then again perhaps none of you will! Are you going to aid me friends or does it amuse you to stand and watch these beasts feast on Half Orc flesh?~
//  IF ~~ THEN DO ~SetGlobal("VP_Create_Dar","GLOBAL",5)~ EXIT
//END