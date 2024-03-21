BEGIN ~DPOQUELI~

IF ~True()~ THEN BEGIN 0
  SAY ~Greetings, child of Ilmater.  How are you today?~ [POQU_01]
  IF ~~ THEN REPLY ~Uh... I'm doing okay, I guess.~ GOTO 1
  IF ~~ THEN REPLY ~I'm not doing too well.~ GOTO 3
  IF ~~ THEN REPLY ~Drop the act, Poquelin.  I'm sick of all these charades.  I've been hacking through enemies for days, weeks, just to get out of these damned mountains.  I'm not about to let a crazed man in a bloody Ilmaterian high priest's robe stand in my way home.~ GOTO 8
END

IF ~~ THEN BEGIN 1
  SAY ~I am pleased to hear it.  So many young people today suffer needlessly.  ~ [POQU_02]
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~They live through a dull pain, sublimely drifting under the waves, never understanding the ecstasy that awaits them if they open their hearts to Ilmater.~ [POQU_03]
  IF ~~ THEN REPLY ~You're not fooling me, Poquelin.  I just came from the "temple of Ilmater" below - I don't think that Ilmater would be pleased with how you've chosen to worship him.~ GOTO 5
  IF ~~ THEN REPLY ~Corruptor of faith, twister of minds, your perversion of the Ilmaterian faith has come to an end.  I will see that you are brought to justice.~ GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY ~It saddens my heart to hear such news.  You seek solace, yes?  You seek the loving embrace of Ilmater?  ~ [POQU_04]
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~All you seek, all you have ever sought, can be found through me and the glorious suffering of my god.~ [POQU_05]
  IF ~~ THEN REPLY ~You're not fooling me, Poquelin.  I just came from the "temple of Ilmater" below - I don't think that Ilmater would be pleased with how you've chosen to worship him.~ GOTO 5
  IF ~~ THEN REPLY ~Corruptor of faith, twister of minds, your perversion of the Ilmaterian faith has come to an end.  I will see that you are brought to justice.~ GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY ~Hmmm... I suppose you're right.  The whole "mockery of suffering" thing only amuses one for so long.  ~ [POQU_06]
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~It seems that my campaign here has run its course.  It was time to move on, in any event.~ [POQU_07]
  IF ~~ THEN REPLY ~Cut to the point, Poquelin.~ GOTO 9
  IF ~~ THEN REPLY ~Quit speaking in riddles, villain.~ GOTO 9
  IF ~~ THEN REPLY ~As interesting as I find your musing on various topics ranging from the nature of justice to the history of the world, I'd really appreciate it if you'd quit rambling.  Thanks.~ GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY ~Ah... justice.  But, what *is* justice?  No.  Don't answer.  That was a rhetorical question.  There are more important things you must answer for - such as your attack on my domain.~ [POQU_08]
  IF ~~ THEN REPLY ~Cut to the point, Poquelin.~ GOTO 9
  IF ~~ THEN REPLY ~Quit speaking in riddles, villain.~ GOTO 9
  IF ~~ THEN REPLY ~As interesting as I find your musing on various topics ranging from the nature of justice to the history of the world, I'd really appreciate it if you'd quit rambling.  Thanks.~ GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY ~I'm sorry, but war and charades are the only two games I know how to play.  If they are not to your liking, I'm afraid you'll be ill-equipped to play the game that's about to begin.~ [POQU_09]
  IF ~~ THEN REPLY ~Cut to the point, Poquelin.~ GOTO 9
  IF ~~ THEN REPLY ~Quit speaking in riddles, villain.~ GOTO 9
  IF ~~ THEN REPLY ~As interesting as I find your musing on various topics ranging from the nature of justice to the history of the world, I'd really appreciate it if you'd quit rambling.  Thanks.~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY ~After centuries of Yxunomei's laboriously worded speeches and delusions of grandeur, it is a welcome change to hear such... succinct threats from an enemy. ~ [POQU_10]
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY ~Thank you for disposing of her, by the way - her speeches were quite tiresome... and she suffered her defeats so poorly.~ [POQU_11]
  IF ~~ THEN REPLY ~What are you up to, Poquelin?  Why the Spine of the World?  And why in the past?~ GOTO 11
  IF ~~ THEN REPLY ~I think you'll know exactly how she feels in a minute, Poquelin.  Prepare yourself.~ GOTO 33
END

IF ~~ THEN BEGIN 11
  SAY ~The only thing really standing in the way of my conquering this territory was Yxunomei.  When you killed her, you removed the largest obstacle in my campaign.  Regarding your time, it's your dimension, not mine.~ [POQU_12]
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY ~As you probably already know, my arrival in this world was a result of conflict with my ancient adversary.~ [POQU_13]
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY ~I was exiled from my home plane when my vendetta with Yxunomei got... as my 'superiors' said... "out of control."  ~ [POQU_14]
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~As soon as I arrived in this world, I knew that Yxunomei would follow.  After all, what's a few thousand years and a billion miles between old friends?~ [POQU_15]
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~I sought out a base of operations from which I could start a military force.  In the process of doing so, I heard something calling to me from a distant glacier.  ~ [POQU_16]
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~It was this... Crenshinibon.  It's an artifact so old that it makes me seem young, a crystal shard with magical powers of such magnitude that Kuldahar's Heartstone Gem looks like a child's toy.~ [POQU_17]
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY ~Just having it in my possession caused the monstrous creatures of this land to leave their ancient homes and seek me out.  Its other powers are too numerous to mention.  ~ [POQU_18]
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY ~Despite the fact that the shard has a somewhat... overbearing... personality, our plans seem to coincide.~ [POQU_19]
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY ~As for my lieutenants, they were easy enough to find.  All of them were eager to join my cause, except for poor, naive Brother Perdiem.  ~ [POQU_20]
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY ~The guise of an Ilmaterian Revered Brother was perfect for traveling and gathering information in Icewind Dale.  The form was easy enough to assume.  ~ [POQU_21]
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY ~The information inside of Perdiem's head allowed me to... flesh out the role.~ [POQU_22]
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY ~Everything was going well until that annoying Arundel and your good friend, the late Hrothgar, decided to investigate Yxunomei's poorly-veiled activities in Dragon's Eye.~ [POQU_23]
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY ~If that idiot had been a little more clandestine in her business, no one would have suspected.~ [POQU_24]
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY ~To stall Yxunomei and seal off Icewind Dale, I used Crenshinibon to freeze the passes... but not quickly enough to prevent Hrothgar's band from starting their expedition. ~ [POQU_25]
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY ~I had Kreg Frostbeard and his giants cause the avalanche that crushed Hrothgar, Accalia, and those other fools.~ [POQU_26]
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY ~After that, I didn't really care what you were doing... until you seized the Heartstone Gem from Yxunomei.  ~ [POQU_27]
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY ~I thought that Arundel would be the only person capable of using it.  When I killed him, I thought the threat was ended.~ [POQU_28]
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY ~I certainly didn't expect you to take the gem to Larrel in the Severed Hand.  Very clever.  Unfortunately, your actions since that event have been... inconsequential.~ [POQU_29]
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY ~During your extended bloody trek through Upper Dorn's, Wyrm's Tooth, and Lower Dorn's, I was building up forces elsewhere... outside of Easthaven, to be specific.  ~ [POQU_30]
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY ~So, you see, the destruction of my forces here simply prevents me from having reserve troops during my conquest of the Dale.~ [POQU_31]
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY ~It's a good thing you can't see Easthaven now.  It would probably break you to see how easy it is to crush houses and cause temples to explode.  Everything you've done is pointless. ~ [POQU_32]
    IF ~~ THEN REPLY ~Wait! How can I come back to my time? That was definitely not my plan to break the physical laws and come to this time. What's about the whole story? I want to know how it plays out!~ GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY ~I am the beginning and the end of this story.  I, and *only* I, will determine how it plays out.  Goodbye.~ [POQU_33]
  IF ~~ THEN DO ~EraseJournalEntry(%Lower Dorn's Deep.

A deep gnome sculptor named Callard gave us a portrait of Marketh.  He said that one of Marketh's bodyguards, Flozem, drew it.%) EraseJournalEntry(%Lower Dorn's Deep.

We killed a group of archers in a watchtower who were keeping the deep gnome slaves in line.  Right after we finished, a small girl entered the tower, shook my hand, and then mysteriously departed.  Strange.%) EraseJournalEntry(%Lower Dorn's Deep.

We killed a group of archers in a watchtower who were keeping the deep gnome slaves in line.  Right after we finished, Fengla entered the tower, shook my hand, and then quickly departed.%) EraseJournalEntry(%Lower Dorn's Deep.

I met Marketh in a small palace in Lower Dorn's Deep.  He was a shifty man who fancied himself to be the new ruler of Dorn's Deep.%) EraseJournalEntry(%Lower Dorn's Deep.

In the Great Forge, we met an elven warrior maiden named Ilmadia.  She claimed to be in control of the entire Great Forge region of Lower Dorn's Deep.  The small squad of fire giants around her supported the claim.%) EraseJournalEntry(%Lower Dorn's Deep.

In Durdel Anatha, we met a gem-cutter named Norl, who hates Marketh. Marketh forces Norl to create jewelry for his concubine.%) EraseJournalEntry(%Lower Dorn's Deep.

A gem-cutter named Norl told us he would help me get rid of Marketh if we could get hold of Marketh's ring. Of course, if we could do that, making a copy of the ring would be unnecessary.%) EraseJournalEntry(%Lower Dorn's Deep.

We gave Norl a sketch of Marketh that we got from two sculptors in the palace. He said that he could use the sketch to make the ring.%) EraseJournalEntry(%Lower Dorn's Deep.

A gem-cutter named Norl told us he would help me get rid of Marketh if we could get hold of Marketh's ring. We gave Norl a sketch of Marketh that we got from two sculptors in the palace. He said that he could use the sketch to make the ring.%) EraseJournalEntry(%Lower Dorn's Deep.

Norl finished the copy of Marketh's teleportation ring and gave it to us. Before we left, he told me Callarduran would be with us.%) EraseJournalEntry(%Lower Dorn's Deep.

In a temple of butchered people, we found a man named "Brother Perdiem," who claimed to be a priest of Ilmater.  He informed us that, should we try to wander around, he would make us suffer.%) EraseJournalEntry(%Lower Dorn's Deep.

A fallen priest of Ilmater named Brother Perdiem told us about how he came under Revered Brother Poquelin's spell.  Apparently, Poquelin appeared at Perdiem's temple some time ago and hypnotized the entire congregation.  They left their monastery and moved north, many dying along the way.  Poquelin was able to covert an entire temple of devout Ilmaterian priests.  Who is he to be able to do such things?%) EraseJournalEntry(%Lower Dorn's Deep.

A halfling named Seth asked me for "papers" outside of a palace in Durdel Anatha.  When I expressed my confusion, he asked me if someone in the "Kraken Society" had sent me.%) EraseJournalEntry(%Lower Dorn's Deep.

A halfling named Seth asked me for "papers" outside of a palace in Durdel Anatha.  When I told him that I didn't have any papers for him, he had a gang of hidden goons leap out and attack me.%) EraseJournalEntry(%Lower Dorn's Deep.

I told Seth that I've known the Kraken Society for years.  Apparently, he wasn't convinced.  He had a bunch of thugs jump me.%) EraseJournalEntry(%Lower Dorn's Deep.

I told Seth that I've done work for the Kraken Society.  I kept it pretty casual and nonchalant.  He wasn't entirely convinced, so he asked me a slew of questions about the Kraken and whom we were supposed to work and fight for.%) EraseJournalEntry(%Lower Dorn's Deep.

Tarnelm told us that a village of his kind was somewhere nearby, but that it might be attacked at any time by packs of roaming umber hulks.  He told us how to get to the camp.  Apparently, all we have to do is walk to the northeast corner of the Oubliette.  Umber hulks should come looking for us.  From their tunnels, we can follow a path of light to the camp.%) EraseJournalEntry(%Upper Dorn�s Deep.

We gave Bandoth the container of razorvine extract that we found on the dead body in the ettin lair. He told us that to access the lower portion of the area, we�ll have to travel across a bridge located south of his home into an old dwarven stronghold. From there, we�ll need to locate a room with statues of dwarven warriors, and find a secret door hidden along the wall where the statues are placed to progress further into the deeper regions of the complex.%) EraseJournalEntry(%Upper Dorn�s Deep.

Bandoth informed us that there is a puzzle room to tackle before we�ll be able to descend further into the stronghold. Apparently it has three rings with multiple plates on each ring. From what we gather, each ring has one plate that disarms the other plates on that particular ring. It can only be assumed that the other plates contain traps of some sort.%) EraseJournalEntry(%Wyrm�s Tooth.

We found Vera, the slave leader, hiding in the museum. We informed her that we had been sent by the frost salamander leader to kill her. Naturally, a battle ensued.%) EraseJournalEntry(%Wyrm�s Tooth.

We found Vera, the slave leader, hiding in the museum. We informed her that the frost salamander leader wanted her dead. She thanked us for the information and said she would take precautions.%) EraseJournalEntry(%Wyrm�s Tooth.

We told Vera that the slaves were free and had escaped to the surface. She was relieved to hear the news and has escaped the museum as well. Apparently she would not leave until she knew the others were free.%) EraseJournalEntry(%Wyrm�s Tooth.

Vera, the slave leader, pretty much told us to go help Gareth and the other slaves. She then dismissed us.%) EraseJournalEntry(%Wyrm�s Tooth.

We told Davin of Joril Frostbeard�s death. With his death the path to freedom for the slaves has been opened.%) EraseJournalEntry(%Wyrm�s Tooth.

Davin asked us to slay the frost giant guard that watches over the slave pens, but we had already done it, so he was free to go.%) EraseJournalEntry(%Wyrm�s Tooth.

We told Davin that we cleared the cave north of the slave pens of any danger. We also have slain the frost giant guarding the pens. This opened the path to freedom for the slaves.%) EraseJournalEntry(%Wyrm�s Tooth.

We gave Gareth the key that unlocks the door to the passage leading to the surface. Now he and the other slaves can escape to safety.%) EraseJournalEntry(%Wyrm�s Tooth.

We decided to continue to reason with Joril to try and get his badge of office. The plan worked, and it is now in our possession.%) EraseJournalEntry(%Wyrm�s Tooth.

Although we probably could have continued to reason with Joril to try and get his badge of office, we decided to fight him for it instead.%) EraseJournalEntry(%Wyrm�s Tooth.

Wonderful. Our paladin demanded that Joril Frostbeard free the slaves he held in captivity. Naturally Joril became suspicious of our true identities and attacked us. Oh, well.%) EraseJournalEntry(%Wyrm�s Tooth.

We told Kerish that Vera, the slave leader, is dead. He believes his honor has been restored and offered us his gratitude.%) EraseJournalEntry(%Wyrm�s Tooth.

We told Kerish that the slaves believe their leader to be dead. He seemed satisfied with that.%) EraseJournalEntry(%Wyrm�s Tooth.

We have learned that Joril Frostbeard is the lieutenant of Wyrm�s Tooth Glacier. Apparently he took over the position by killing his father, Kreg.%) EraseJournalEntry(%Wyrm�s Tooth.

Apparently there has been a slave revolt among the frost salamanders. A few managed to escape but most died in the attempt.%) EraseJournalEntry(%Wyrm�s Tooth.

We have discovered that the *master* chooses his lieutenants personally. Joril has caused a controversy by slaying his father for the position. Perhaps we can use this knowledge against him somehow.%) EraseJournalEntry(%Wyrm�s Tooth.

It seems that the frost salamanders are sensitive to heat. We may be able to use that weakness against them.%) EraseJournalEntry(%Wyrm�s Tooth.

The slaves that escaped the frost salamanders fled to a room beneath the museum. Kerish believes them to be trapped there with no means of escape and no supplies. If this is the case then they will surely perish.%) EraseJournalEntry(%Wyrm�s Tooth.

Kerish, the frost salamander leader, has asked us to find the leader of the slave revolt and slay him. We informed him that we would not do his dirty work for him.%) EraseJournalEntry(%Wyrm�s Tooth.

Kerish, the frost salamander leader, has asked us to find the leader of the slave revolt and slay him. We informed him that we would consider the matter.%) EraseJournalEntry(%Wyrm�s Tooth.

We met a woman named Kontik who claimed to be a follower of Auril. She became irritated with us quickly and attacked for no reason. We had to defend ourselves.%) EraseJournalEntry(%Wyrm�s Tooth.

We met a woman named Kontik who claimed to be a follower of Auril. She said Auril sent her to slay us in retribution over the death of the priestess Lysan.%) EraseJournalEntry(%Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out, he finds nothing. This sounds a bit strange. Perhaps it bears checking out.%) EraseJournalEntry(%Wyrm�s Tooth.

We talked to a salamander that says he is hearing things down a certain hallway. When he goes to check it out he finds nothing. This sounds a bit strange so we offered to check it out ourselves. Perhaps we will find something that he missed.%) EraseJournalEntry(%Upper Dorn�s Deep.

We defeated Terikan and restored the forge of Upper Dorn�s Deep. Norlinor thanked us, and he told us the key we would need to allow us to travel to Wyrm�s Tooth Glacier lay in a receptacle in the forge.%) EraseJournalEntry(%Upper Dorn�s Deep.

We returned with the badge for Saablic, and in turn he informed us that there were five "others" in possession of similar badges.  Apparently, we�ll need to obtain all of them, but for what reason, I don�t know.%) EraseJournalEntry(%Wyrm�s Tooth.

We talked to a scholar named Soth who has been studying the books in the Wyrm�s Tooth library. He says that they are works dedicated to dwarven engineering.%) EraseJournalEntry(%Wyrm�s Tooth.

We talked to a scholar named Soth.  He says that the Wyrm�s Tooth buildings are a temple complex dedicated to Dugmaren Brightmane, the dwarven god of scholars and explorers.%) EraseJournalEntry(%Wyrm�s Tooth.

The scholar Soth gave us a book on dwarven engineering. With it we hope to repair the rope bridge that spans the southwest chasm.%) Enemy()~ EXIT
END

IF ~~ THEN BEGIN 33
  SAY ~If you seek resolution, I shall give it to you.  Farewell.~ [POQU_34]
  IF ~~ THEN DO ~Enemy()~ EXIT
END
