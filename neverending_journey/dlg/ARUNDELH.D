BEGIN ~ARUNDELH~

IF ~True()~ THEN BEGIN 0
  SAY ~(*Wounded, dying*)... At last... I feared I could not hold any longer... th-the last of my life has almost left my body, and... soon I shall be restored to the balance.~ [ARUN_82]
  IF ~~ THEN REPLY ~Arundel... what happened?~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~A man, but not a man... he wore my skin like a cloak, my face like a mask... he came suddenly in the night, and struck me down...~ [ARUN_83]
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~Nature itself seemed to recoil from him - even with the strength of the Great Oak bolstering me, I was unable to stop him.  He touched me once... his hands as blood, and I felt... my life begin to drain away.~ [ARUN_84]
  IF ~~ THEN REPLY ~Arundel, hold on - we still may be able to help y--~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~(*Voice strengthens, becomes steadier*) No, only the hope you would return has kept my body alive.  You... you must take the Heartstone Gem to... the elven fortress of the Severed Hand.~ [ARUN_85]
  IF ~~ THEN REPLY ~Severed Hand?  But why?~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~The Severed Hand is the prison of Larrel, one of the last of the elven archmages... he is the only one left who can use the Heartstone Gem... if he still lives...~ [ARUN_86]
  IF ~!InParty("Hrothgar")~ THEN REPLY ~But the Severed Hand... I've never heard of it - where can I find it?~ DO ~SetGlobal("Severed_Hand_Reveal","GLOBAL",1)~ JOURNAL ~Severed Hand.

We discovered Arundel in the upstairs chamber of his cottage, struck down by a man that wore the Archdruid's own face and whose hands were as blood.  Arundel barely had the strength to tell us to seek out the ancient elven fortress of the Severed Hand, and that within the fortress is an elven mage named Larrel, the last person who can use the gem to find the source of evil plaguing Kuldahar.  Arundel told us nature would guide us to the Severed Hand.~ GOTO 5
  IF ~InParty("Hrothgar")~ THEN REPLY ~But the Severed Hand... I've never heard of it - where can I find it?~ DO ~SetGlobal("Severed_Hand_Reveal","GLOBAL",1)~ JOURNAL ~Severed Hand.

We discovered Arundel in the upstairs chamber of his cottage, struck down by a man that wore the Archdruid's own face and whose hands were as blood.  Arundel barely had the strength to tell us to seek out the ancient elven fortress of the Severed Hand, and that within the fortress is an elven mage named Larrel, the last person who can use the gem to find the source of evil plaguing Kuldahar.  Arundel told us nature would guide us to the Severed Hand.~ GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY ~It is to the south - nature will guide you... (*a little quieter, a little weaker*)... enough of my power remains that I may do that.  Now... I must go... (*One final burst of strength, enough to keep his voice steady, but not commanding*)... Take this key. You will need it soon. Serve the balance.  Protect Kuldahar from this evil.~
  IF ~~ THEN REPLY ~I serve *no one,* old man, and Kuldahar can burn - but not as long as I'm trapped here.~ GOTO 8
  IF ~~ THEN REPLY ~Farewell, Arundel.  We will see you avenged.~ GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY ~(*One final burst of strength, enough to keep his voice steady*)... Hrothgar, my friend, I know you are looking for the key...  Tilorn was here...~
  IF ~~ THEN REPLY ~I serve *no one,* old man, and Kuldahar can burn - but not as long as I'm trapped here.~ EXTERN ~HROTHJ~ 4
  IF ~~ THEN REPLY ~Farewell, Arundel.  We will see you avenged.~ GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY ~It is to the south - nature will guide you... (*a little quieter, a little weaker*)... enough of my power remains that I may do that.  Now... I must go... Take it. Serve the balance. Protect Kuldahar from this evil...~ [ARUN_87]
 IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 8
  SAY ~Do what you must...~
  IF ~~ THEN DO ~GiveItemCreate("KeyArund",Player1,0,0,0) SetGlobal("VP_SoW_Portal_Talk","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("VPCutH01")~ EXIT
END