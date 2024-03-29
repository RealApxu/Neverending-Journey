BEGIN ~DNORLINO~

IF WEIGHT #2 ~NumTimesTalkedTo(0)Global("N_Done","GLOBAL",0)~ THEN BEGIN 0
  SAY ~Defiler!  Have you too come to desecrate the remains of our home?~
  IF ~~ THEN REPLY ~Absolutely not.  ~ GOTO 1
  IF ~~ THEN REPLY ~I was thinking about it, yes.~ GOTO 29
END

IF ~~ THEN BEGIN 1
  SAY ~Then why do you disturb this Temple of Moradin?~
  IF ~~ THEN REPLY ~I am merely passing through.~ GOTO 2
  IF ~~ THEN REPLY ~I was hoping to learn more of the conflict that occurred within this area.~ GOTO 17
  IF ~~ THEN REPLY ~Who are you?~ GOTO 21
END

IF ~~ THEN BEGIN 2
  SAY ~That will prove rather difficult, as Terikan still lairs in the Tiers of the Dead.  While he lives, you cannot pass.~
  IF ~~ THEN REPLY ~Terikan?~ GOTO 3
  IF ~~ THEN REPLY ~Let me ask you some questions, then.~ GOTO 24
  IF ~~ THEN REPLY ~I�ll be on my way now.~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~Terikan is a wretched necromancer that came to Dorn�s shortly after the strife that put an end to our community.  He was aware of the tragedy that gripped Dorn�s Deep, and knew it would serve as fertile ground to continue his "research."~
  IF ~~ THEN REPLY ~What was he researching?~ GOTO 4
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~During the construction of the Deep, we had the misfortunate of uncovering a cavern that housed an ancient vortice from the Negative Energy plane.   Now, I don�t know if some being from that plane felt our presence, or if the vortice itself was disturbed by the intrusion, but shortly thereafter undead began to appear. ~
  IF ~~ THEN REPLY ~And these undead invaded Dorn�s Deep?~ GOTO 5
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~At first it was merely a skeleton or two, nothing we couldn�t handle, but over time, we received more and more reports of undead sightings.  In the end, I don�t think any of us were prepared for what would become known as the "Battle of the Dead."~
  IF ~~ THEN REPLY ~How did the Battle begin?~ GOTO 6
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~One morning, our community awoke to the screams of the son of Jamoth.  He�d been playing within some of the caves near the forge and claimed he had seen a small group of skeletons.  We sent a few men down to investigate.   They returned... badly wounded.~
  IF ~~ THEN REPLY ~What had they found?~ GOTO 7
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~We�ll continue this later.  I must take my leave.~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Hundreds of skeletons, zombies, ghouls and other undead had suddenly appeared in the vortice cave, preparing to attack the settlement.  With time working against us, we assembled our remaining soldiers and went forth to vanquish the deceased.~
  IF ~~ THEN REPLY ~But hundreds of undead with even greater numbers to follow... the dwarves would have been greatly outnumbered.~ GOTO 8
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~We�ll continue this later.  I must take my leave.~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~No Dorn�s dwarf would concede defeat while our community was threatened.  Our wounded began to accumulate, and many our brethren joined their attackers in spiritual unrest that day.  Just as it appeared that we might have to retreat, a miracle occurred.~
  IF ~~ THEN REPLY ~A miracle?~ GOTO 9
  IF ~~ THEN REPLY ~Let me ask you about something else.~ GOTO 24
  IF ~~ THEN REPLY ~I cannot spare any more time for this tale.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~From within the tides of flesh and bone emerged Jamoth, hacking at the dead around him with a fevered glee, bellowing with laughter.  With each swing of his weapon, the undead around him disintegrated, regardless of whether he struck them or not.  It was a beautiful sight to see, my friend.~
  IF ~~ THEN REPLY ~So the undead fell around him just by his presence... how is that possible?~ GOTO 10
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~I cannot spare any more time for this tale.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~Jamoth, and our community, were touched by Moradin that day.  We later discovered the vortice that had brought forth the undead was somehow reversed, returning the spirits to their home within the Plane of Negative Energy.  ~
  IF ~~ THEN REPLY ~Then Terikan came along.  As a necromancer, he must have heard about the vortice, correct?~ GOTO 11
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~I cannot spare any more time for this tale.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY ~Yes.  Once our community no longer inhabited these chambers, Terikan took up residence in the Hall of Heroes with a determination to restore the vortice.  He is convinced that if he unlocks its secrets, he will be able to manipulate other vortices throughout Faerun.~
  IF ~~ THEN REPLY ~How?  It seems the energies of the vortice would kill any man that approached it.~ GOTO 31
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY ~Terikan is much more powerful than I.  I am fortunate I continue to inhabit these chambers with my own mind.  Once Terikan learns of any dead within these halls, he seeks to destroy their will with his necromantic arts.  Anything that lives, he slays.~
  IF ~!Alignment(Protagonist, 3)~ THEN REPLY ~I could destroy Terikan for you.~ GOTO 13
  IF ~Alignment(Protagonist, 3)~ THEN REPLY ~If Terikan steps in our path, he�s the one who�ll be slain.~ GOTO 13
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~That would not be an easy task.  You cannot destroy Terikan by striking him down.  It is his life force that sustains him, not his shell.  ~
  IF ~~ THEN REPLY ~Life force?~ GOTO 14
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY ~Liches store their life forces within specially constructed phylacteries.  Most liches go to great lengths to protect their phylacteries, often placing them in the remote locations where no can find them, then safeguarding them with enchantments.  Terikan, however, feels his phylactery is safest close to him, and he has placed it within a crypt in the Hall of Heroes.  ~
  IF ~~ THEN REPLY ~So all we have to do is reach there and destroy it?~ GOTO 15
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY ~The phylactery is not something that can be destroyed by common means... to destroy it, you�ll need to remove it from this plane, a daunting task, to be certain.~
  IF ~~ THEN REPLY ~No less daunting than the other impossibilities we�ve been forced to endure in coming North... how can we remove this phylactery from this plane?~ GOTO 32
  IF ~CheckStatGT(Protagonist, 13, INT)~ THEN REPLY ~What about the vortice you mentioned before?  Would that serve?~ GOTO 32
END

IF ~~ THEN BEGIN 16
  SAY ~Ah, but to reach the Hall of Heroes, you will need to pass through the Tiers of the Dead, where Terikan resides.  Not only that, but the great door to the Hall of Heroes is locked, and I�m certain Terikan possesses the key.  If you defeat Terikan�s physical form, make haste for the Hall of Heroes, for he will only be subdued for a short while.~
  IF ~~ THEN REPLY ~I�ll see what I can do.  Let me ask you another question.~ UNSOLVED_JOURNAL ~Upper Dorn�s Deep.

We met a ghost named Norlinor near an ancient dwarven forge. Norlinor told us of Terikan, a lich that was attempting to unleash a horde of undead from the plane of Negative Energy into Dorn�s Deep. Norlinor told us that to destroy Terikan, we would need to obtain his soul container from the Hall of Heroes, and bring it into the tomb of Jamoth, also within the Hall of Heroes.~ GOTO 24
  IF ~~ THEN REPLY ~Thank you for the information.  I�ll be on my way now.~ UNSOLVED_JOURNAL ~Upper Dorn�s Deep.

We met a ghost named Norlinor near an ancient dwarven forge. Norlinor told us of Terikan, a lich that was attempting to unleash a horde of undead from the plane of Negative Energy into Dorn�s Deep. Norlinor told us that to destroy Terikan, we would need to obtain his soul container from the Hall of Heroes, and bring it into the tomb of Jamoth, also within the Hall of Heroes.~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY ~Two catastrophes occurred within Dorn�s Deep.  The first was the destruction of our community at the hands of the orcs.  More recently, there has been the occupation of our cemetery, the Tiers of the Dead, by the necromancer Terikan.~
  IF ~~ THEN REPLY ~Tell me about the destruction of your community.~ GOTO 18
  IF ~~ THEN REPLY ~Terikan?~ GOTO 3
  IF ~~ THEN REPLY ~Who are you?~ GOTO 21
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY ~Throughout the history of Dorn�s, we�ve always had to contend with the orc hordes that threatened our way of life.  However, thanks to inspired diplomacy between the leaders of our community and the elves of the Severed Hand, we forged an alliance that kept both of our homes safe from harm.  ~
  IF ~~ THEN REPLY ~What happened?~ GOTO 33
END

IF ~~ THEN BEGIN 19
  SAY ~I am not certain, but it was apparent, at least from our perspective, that someone was deliberately attempting to seed mistrust between the dwarven and elven communities.  When the orcs began appearing far better equipped than in times previous, the elves began to suspect that dwarven smithies were in league with the horde.  ~
  IF ~~ THEN REPLY ~Why would they think you�d supply your enemies with weapons?~ GOTO 34
END

IF ~~ THEN BEGIN 20
  SAY ~Not any dwarf within Dorn�s Deep, I can tell you that much.  We were warriors, not betrayers.  If truth be told, I believe both communities were deceived by someone within one of our own families.  I know not who, but I hope that when that person meets their end they feel the pain of every dwarf and elf that lost their lives.  ~
  IF ~~ THEN REPLY ~I had some questions I wished to ask you.~ GOTO 24
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY ~I am known as Norlinor.  While alive, I served as a priest of Moradin for our church here with Dorn�s Deep.  Specifically, I was given the title Artisan of the Forge, and it was my duty to maintain this place.  I died defending this temple... I did not anticipate revisiting it in the afterlife.~
  IF ~~ THEN REPLY ~Why are you here now?~ GOTO 22
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~Well met, Norlinor.  I�ll leave you be.~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY ~The presence of Terikan, the necromancer who has taken up residence in the Tiers of the Dead, has quenched the flames that gave the forge life.  With the forge cold, the spirits of the dead have become restless, forced from their tombs into servitude for that monster.  Almost all the dead of Dorn�s Deep are now enslaved to Terikan... I fear I am the only one who remains free.~
  IF ~~ THEN REPLY ~What can be done?~ GOTO 23
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY ~Terikan�s transformation into a lich has caused enough negative energy to be drawn to the area that even our forges and machines have been affected.  Perhaps destroying Terikan could bring the forge to life again.  One thing is for certain: as long as the forge remains cold, the spirits of Dorn�s Deep are denied our final rest.~
  IF ~~ THEN REPLY ~I�ll see what I can do.  Let me ask you some other questions first.~ UNSOLVED_JOURNAL ~Upper Dorn�s Deep.

Norlinor feels the only way to restore the Dorn forge and return the dwarven spirits to rest is to dispose of Terikan.~ GOTO 24
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~ UNSOLVED_JOURNAL ~Upper Dorn�s Deep.

Norlinor feels the only way to restore the Dorn forge and return the dwarven spirits to rest is to dispose of Terikan.~ EXIT
END

IF ~~ THEN BEGIN 24
  SAY ~Certainly.  What would you like to know?~
  IF ~~ THEN REPLY ~What can you tell me about Terikan?~ GOTO 3
  IF ~~ THEN REPLY ~I�d like to know more about the conflict that occurred here.~ GOTO 17
  IF ~~ THEN REPLY ~Who are you?~ GOTO 21
  IF ~~ THEN REPLY ~We are in need of aid.~ DO ~StartStore("Norlinor",Protagonist)~ EXIT
  IF ~~ THEN REPLY ~Could I rest here?~ GOTO 35
END

IF WEIGHT #3 ~NumTimesTalkedToGT(0) Global("N_Done","GLOBAL",0)~ THEN BEGIN 25
  SAY ~Well met again, traveler.  How may I be of assistance? ~
  IF ~~ THEN REPLY ~What can you tell me about Terikan?~ GOTO 3
  IF ~~ THEN REPLY ~I�d like to know more about the conflict that occurred here.~ GOTO 17
  IF ~~ THEN REPLY ~Who are you?~ GOTO 21
  IF ~~ THEN REPLY ~We are in need of aid.~ DO ~StartStore("Norlinor",Protagonist)~ EXIT
  IF ~~ THEN REPLY ~Could I rest here?~ GOTO 35
  IF ~~ THEN REPLY ~Nothing at this time.  Sorry to disturb you.~ EXIT
END

IF WEIGHT #1 ~Global("Forge_On","GLOBAL",1) Global("N_Done","GLOBAL",0)~ THEN BEGIN 26
  SAY ~As the hearth warms the room, so is my heart warmed knowing that my brothers will return to their rest.  We owe you much, traveler.  ~
  IF ~~ THEN REPLY ~I�m glad I could help.~ DO ~EraseJournalEntry(%Upper Dorn�s Deep.

We met a ghost named Norlinor near an ancient dwarven forge. Norlinor told us of Terikan, a lich that was attempting to unleash a horde of undead from the plane of Negative Energy into Dorn�s Deep. Norlinor told us that to destroy Terikan, we would need to obtain his soul container from the Hall of Heroes, and bring it into the tomb of Jamoth, also within the Hall of Heroes.%) EraseJournalEntry(%Upper Dorn�s Deep.

Norlinor feels the only way to restore the Dorn forge and return the dwarven spirits to rest is to dispose of Terikan.%) AddexperienceParty(68500) SetGlobal("N_Done","GLOBAL",1)~ SOLVED_JOURNAL ~Upper Dorn�s Deep.

We defeated Terikan and restored the forge of Upper Dorn�s Deep. Norlinor thanked us, and he told us the key we would need to allow us to travel to Wyrm�s Tooth Glacier lay in a receptacle in the forge.~ GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY ~If you gaze upon the forge, you will now notice the outline of a receptacle.  Within is a key to the door in the Hall of Heroes that leads to the Wyrm�s Tooth glacier.  I have faith that the answers you seek will become clearer once you reach the glacier.  Thank you again, friend -- and may Moradin smile upon you.~
  IF ~~ THEN REPLY ~You�re welcome... rest now, Norlinor.~ DO ~EscapeArea()~ EXIT
END

IF WEIGHT #0 ~Global("Norlinor_Hate","GLOBAL",1) Global("N_Done","GLOBAL",0)~ THEN BEGIN 29
  SAY ~I have nothing to say to you, defiler.  I encourage you to speak with Terikan in the room directly up the stairs.  I think you will find that you and him are of the same vein.~
  IF ~Global("Forge_On","GLOBAL",1)~ THEN REPLY ~Actually, I disposed of that lich.~ GOTO 30
  IF ~~ THEN REPLY ~Fine.~ DO ~SetGlobal("Norlinor_Hate","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY ~From one vile caretaker to another.  You have helped my brothers and I, defiler, but I know it was of no inclination or yours to do so.  I assume you have some plundering to do, so I�ll leave you to your trade.  ~
  IF ~~ THEN REPLY ~Leave then - your preaching *was* growing tiresome.~ DO ~SetGlobal("N_Done","GLOBAL",2) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 31
  SAY ~Terikan knew no mortal man could ever master the vortice.  Shortly after his arrival in our home, he began preparing himself for the rituals necessary to become a lich.  Fortunately, Terikan must have neglected some of the proper enchantments, as the powers he wields are inferior to much of his kind.  ~
  IF ~~ THEN REPLY ~If so, can you stop him?~ GOTO 12
END

IF ~~ THEN BEGIN 32
  SAY ~That is where fortune favors us.  The very vortice that Terikan is studying can destroy him as well.  It lies within the Hall of Heroes, inside the tomb of  Jamoth.  Any undead being, regardless of power, is pulled back to that dreadful plane of existence upon entry into the tomb.  That is why I have never been able to enter the tomb myself.~
  IF ~~ THEN REPLY ~So I would need to take the phylactery inside Jamoth�s tomb to destroy Terikan?  That doesn�t sound too difficult.~ GOTO 16
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~I cannot spare any more time for this tale.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY ~Corruption from within led to a falling out between our peoples.  No longer organized into an effective, cohesive whole, it was only a matter of time before the orcs overran both settlements.  ~
  IF ~~ THEN REPLY ~What was the cause of the corruption?~ GOTO 19
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~I cannot spare any more time for this tale.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 34
  SAY ~The elves felt we could not control our appetite for gold, so we were accused of providing the orcs with superior armament.  Later, the elves took their accusations a step further and accused us of arming the orcs with the intention of having them destroy the Severed Hand.~
  IF ~~ THEN REPLY ~Who was providing the orcs with the arms?~ GOTO 20
  IF ~~ THEN REPLY ~Let me ask you some other questions.~ GOTO 24
  IF ~~ THEN REPLY ~I must take my leave.  Farewell.~ EXIT
END

IF ~~ THEN BEGIN 35
  SAY ~I'll make sure you aren�t attacked while sleeping.~
  IF ~~ THEN  DO ~ClearAllActions() StartCutSceneMode() StartCutScene("VPHealC2")~ EXIT
END