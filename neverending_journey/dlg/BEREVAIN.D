BEGIN ~BEREVAIN~

IF ~OR(2) Global("VP_BImoen","LOCALS",8) Global("VP_BImoen2","LOCALS",8)~ THEN BEGIN 1
  SAY ~(At rest, Imoen tries to pilfer through Erevain's belongings.)~
  IF ~InParty("Imoen")~ THEN DO ~SetGlobal("VP_BImoen","LOCALS",9)~ EXTERN ~IMOENJ~ EREV1
  IF ~InParty("Imoen2")~ THEN DO ~SetGlobal("VP_BImoen2","LOCALS",9)~ EXTERN ~IMOEN2J~ EREV1
END

IF ~~ THEN BEGIN 2
  SAY ~(Quickly turns around and grabs his bag.) Do you intend to steal from all your companions!~
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ EREV2
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ EREV2
END

IF ~~ THEN BEGIN 3
  SAY ~Do you think that an expert infiltrator doesn't know when he's being inflitrated!~
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ EREV3
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ EREV3
END

IF ~~ THEN BEGIN 4
  SAY ~Yes, you were! I'm not as careless as some of these companions.~
  IF ~True()~ THEN GOTO 5
  IF ~!Dead("Sharteel") InParty("Sharteel")~ THEN EXTERN ~BSHART~ EREVINT1
END

IF ~~ THEN BEGIN 5
  SAY ~I will not be stolen from you harlot!~
  IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ EREV4
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ EREV4
END

IF ~~ THEN BEGIN 6
  SAY ~Be careful that you don't steal what's not yours! There's nothing here that your child mind would be impressed with!~
  IF ~~ THEN REPLY ~Hey, Imoen shouldn't have tried to take your bag, but do you have to be so mean about it?~ GOTO 7
  IF ~~ THEN REPLY ~I'm sorry about that Erevain, Imoen had no right to take that bag from you.~ GOTO 8
  IF ~~ THEN REPLY ~If you can't defend your bags, then you can't be mad that Imoen wants to take them.~ GOTO 9
  IF ~~ THEN REPLY ~You huffed pretty loudly when you almost lost an item. A thief was mad at a thief for stealing. Is the irony lost on you, Erevain?~ GOTO 10
  IF ~~ THEN REPLY ~Be careful what you say! Imoen has been my friend a long time and she doesn't deserve to be called those names.~ GOTO 11
END


IF ~~ THEN BEGIN 7
  SAY ~(Pats you on the shoulder and smiles) You are more than welcome to be nice to rogues who steal from you, and I'm sure they'll be so grateful to you that they won't do it again.~
  IF ~~ THEN REPLY ~You huffed pretty loudly when you almost lost an item. A thief was mad at a thief for stealing. Is the irony lost on you, Erevain?~ GOTO 10
  IF ~~ THEN REPLY ~You're right, my apologies.~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~Thanks. Watch her more carefully. Imoen's harmless thefts could do us a lot of harm eventually. Not all are so forgiving as I am.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY ~I did defend my bag, thank you. And yes, I can be mad at someone who wants to steal from me.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY ~I only steal when I need to or the person I'm stealing from can afford to lose it.~
  IF ~~ THEN REPLY ~So couldn't you afford to lose the bag? Sounds hypocritical to me.~ GOTO 12
  IF ~~ THEN REPLY ~I don't care much at all for stealing. I'd suggest you cease doing so while you're in this party.~ GOTO 13
  IF ~~ THEN REPLY ~I understand. We all have private things that we aren't ready to share.~ GOTO 8
END

IF ~~ THEN BEGIN 11
  SAY ~Then perhaps she shouldn't be taking what is not hers! I don't think anyone in this party signed up to be robbed by fellow members!~
  IF ~~ THEN REPLY ~I don't care what Imoen does! You had better not say those things to her if you want to stay in this group! She has been a friend for a long time and that tone is not welcome!~ GOTO 13
  IF ~~ THEN REPLY ~Yes, she shouldn't have done that. But, neither should you say such cruel things to her!~ GOTO 16
END

IF ~~ THEN BEGIN 12
  SAY ~I don't answer to you. Leave me be.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~Then perhaps I should leave then. It seems that my well-being isn't important here.~
  IF ~~ THEN REPLY ~Yes, I think you should leave. I'm sick of your rotten attitude.~ GOTO 14
  IF ~~ THEN REPLY ~I don't want you to leave Erevain; you need to understand the seriousness of calling Imoen such rotten names.~ GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY ~Good riddance. Joining this group was a mistake. Have fun getting stolen from everyone.~
  IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY ~I'll stay for now. But dear Corellon help me! These people equate stealing with name-calling!~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY ~Dear Corellon help me!~
  IF ~~ THEN EXIT
END

IF ~Global("VP_MyTalks","LOCALS",2)~ THEN BEGIN CHErevain0
  SAY ~All of this moving around and traveling. Do you ever get tired of it?~
  IF ~~ THEN REPLY ~I love travel. It's fun and exhilarating.~ GOTO CHErevain1
  IF ~~ THEN REPLY ~I like traveling, but my feet do hurt a lot.~ GOTO CHErevain2
  IF ~~ THEN REPLY ~Of course. I hate traveling.~ GOTO CHErevain3
  IF ~~ THEN REPLY ~Why do you ask such stupid questions Erevain? Traveling is a necessary burden.~ GOTO CHErevain4
END

IF ~~ THEN BEGIN CHErevain1
  SAY ~It is exhilarating isn't it? To travel Faerun and see such sights and places is absolutely thrilling!~
  IF ~~ THEN REPLY ~I agree. Spending my whole life in Candlekeep hearing stories of faraway places and never being able to see them for myself, left me with a sense of wanderlust.~ GOTO CHErevain5
  IF ~~ THEN REPLY ~Yes it is. I never imagined the amazing wonders available to see and experience.~ GOTO CHErevain5
  IF ~~ THEN REPLY ~Some of the sights are beautiful; some are terrifying.~ GOTO CHErevain6
  IF ~~ THEN REPLY ~Yes, traveling can be thrilling, but can we please stop talking now?~ GOTO CHErevain4
END

IF ~~ THEN BEGIN CHErevain2
  SAY ~Haha, yes. Hiking over hills, valleys, and plains will do that. Still, despite any temporary pains.~
  IF ~~ THEN GOTO CHErevain5
END

IF ~~ THEN BEGIN CHErevain3
  SAY ~How could you hate traveling? There's just so much out there to do and see! Why would you ever leave home if you truly hated traveling?~
  IF ~~ THEN REPLY ~Because I couldn't stay cooped up in that boring old Candlekeep any longer. I had an opportunity to leave and I took it in haste. Traveling is much better than being completed bored.~ GOTO CHErevain7
  IF ~~ THEN REPLY ~Because we always get attacked by horrible creatures who want to hurt us.~ GOTO CHErevain6
  IF ~~ THEN REPLY ~Because my feet hurt from walking so much.~ GOTO CHErevain2
  IF ~~ THEN REPLY ~Because I don't know why. Stop asking me stupid questions Erevain.~ GOTO CHErevain4
END

IF ~~ THEN BEGIN CHErevain4
  SAY ~Fine. I'll just stop talking.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN CHErevain5
  SAY ~Yes indeed. Myself, I've always felt a calling to travel: to adventure. I've been traveling for twenty years and am nowhere near ready to quit now. It's quite an escape and a release.~
  IF ~~ THEN REPLY ~Twenty years? Isn't that a long time to be away from home. Don't you ever feel like returning?~ GOTO CHErevain8
  IF ~~ THEN REPLY ~Escape? Why do you need an escape?~ GOTO CHErevain8
  IF ~~ THEN REPLY ~Absolutely. I was dying to get out of Candlekeep as a child and I'm thrilled to see where the road leads us!~ GOTO CHErevain8
  IF ~~ THEN REPLY ~Erevain. You already said previously that you've been traveling for twenty years. Are you feeling ok?~ GOTO CHErevain9
END

IF ~~ THEN BEGIN CHErevain6
  SAY ~Aye, there are some scary creatures frightening moments to be had. But those do pass. In its entirely, traveling is such a magnificent escape. Such a release from the past.~
  IF ~~ THEN REPLY ~Escape? Release? Why do you need these?~ GOTO CHErevain8
  IF ~~ THEN REPLY ~Absolutely. I was dying to get out of Candlekeep as a child and I'm thrilled to see where the road leads us!~ GOTO CHErevain8
  IF ~~ THEN REPLY ~I suppose so. The monsters and bandits that die are unavoidable in these travels.~ GOTO CHErevain8
  IF ~~ THEN REPLY ~Would you stop blathering about.~ GOTO CHErevain4
END

IF ~~ THEN BEGIN CHErevain7
  SAY ~Aye, traveling is certainly a welcome respite from boredom. Still, I would not trade away these last twenty years for anything. I just needed this release; this escape.~
  IF ~~ THEN REPLY ~Twenty years? Isn't that a long time to be away from home. Don't you ever feel like returning?~ GOTO CHErevain8
  IF ~~ THEN REPLY ~Escape? Why do you need an escape?~ GOTO CHErevain8
  IF ~~ THEN REPLY ~Absolutely. I was dying to get out of Candlekeep as a child. Anywhere else is most welcome!~ GOTO CHErevain8
  IF ~~ THEN REPLY ~Erevain. Are you unwell? You look different when you speak of the past.~ GOTO CHErevain9
  IF ~~ THEN REPLY ~Erevain, please spare me your blabbering.~ GOTO CHErevain4
END

IF ~~ THEN BEGIN CHErevain8
  SAY ~I... I am sorry. Let us stop talking for now.~
  IF ~~ THEN REPLY ~Erevain. What's the matter? Why can't you talk about it?~ GOTO CHErevain11
  IF ~~ THEN REPLY ~You start a conversation and you won't even finish it? That's very rude.~ GOTO CHErevain11
  IF ~~ THEN REPLY ~If that's how you really feel about it. I'm here if you're ready to talk about it later.~ GOTO CHErevain11
  IF ~~ THEN REPLY ~Excellent. Less pointless prattle from you.~ GOTO CHErevain11
END

IF ~~ THEN BEGIN CHErevain9
  SAY ~No... No I am not feeling okay.~
  IF ~~ THEN GOTO CHErevain8
END

IF ~~ THEN BEGIN CHErevain11
  SAY ~I apologize. I just cannot talk now.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",3)~ EXIT
END

IF ~Global("VP_MyTalks","LOCALS",5)~ THEN BEGIN CH2Erevain0
  SAY ~Do you have any siblings or cousins that you were close to?~
  IF ~~ THEN REPLY ~I was close to Imoen, who is as close to a sister can be.~ GOTO CH2Erevain1
  IF ~~ THEN REPLY ~No. I don't call anyone a sibling or cousin.~ GOTO CH2Erevain1
  IF ~~ THEN REPLY ~Sort of.~ GOTO CH2Erevain1
  IF ~~ THEN REPLY ~Stop talking about stupid personal topics. Do your job and that doesn't involve you talking.~ GOTO CH2Erevain4
END

IF ~~ THEN BEGIN CH2Erevain1
  SAY ~Well, I have a cousin that I have been close to, but haven't seen in a long time, Xan.~
  IF ~~ THEN REPLY ~Xan? Wow, I know Xan. I met him in the Nashkel mines.~ GOTO CH2Erevain2
  IF ~~ THEN REPLY ~Yes, Xan traveled with me for some time after I met him in Nashkel.~ GOTO CH2Erevain2
  IF ~~ THEN REPLY ~How long has it been since you've seen him?~ GOTO CH2Erevain3
  IF ~~ THEN REPLY ~I don't care about your Elven friends Erevain.~ GOTO CH2Erevain4
END

IF ~~ THEN BEGIN CH2Erevain2
  SAY ~How could you possibly have met Xan already? Why would Xan be in Nashkel so far from Evereska?~
  IF ~~ THEN REPLY ~Um. Yeah.~ GOTO CH2Erevain7
  IF ~~ THEN REPLY ~You would have to ask Xan about that.~ GOTO CH2Erevain15
  IF ~~ THEN REPLY ~Well. I strongly suspect that that have been transported into the past about 100 years.~ GOTO CH2Erevain8
  IF ~~ THEN REPLY ~I'm sure that it was a different Xan from your cousin.~ GOTO CH2Erevain14
  IF ~~ THEN REPLY ~You know what, perhaps I'm mistaken. I probably haven't met Xan before.~ GOTO CH2Erevain14
  IF ~~ THEN REPLY ~This conversation is getting annoying. Let's continue on.~ GOTO CH2Erevain4
END

IF ~~ THEN BEGIN CH2Erevain3
  SAY ~I haven't seen him in twenty years ever since I left Evereska. It's been difficult not to have seen him or any of my family for so long.~
  IF ~~ THEN REPLY ~That's terrible Erevain. Why don't you journey back to Evereska?~ GOTO CH2Erevain5
  IF ~~ THEN REPLY ~I'm sure Xan misses your presence as well.~ GOTO CH2Erevain5
  IF ~~ THEN REPLY ~Why haven't you seen any of your family for so long?~ GOTO CH2Erevain5
  IF ~~ THEN REPLY ~If you haven't visited them in twenty years, waiting a little longer couldn't hurt much.~ GOTO CH2Erevain6
  IF ~~ THEN REPLY ~Forget about them. If they really cared about you, they'd find you.~ GOTO CH2Erevain5
  IF ~~ THEN REPLY ~I have no use for this annoying babbling.~ GOTO CH2Erevain4
END

IF ~~ THEN BEGIN CH2Erevain4
  SAY ~Fine. I'll just stop talking then. I find no sympathetic ears here.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",6)~ EXIT
END

IF ~~ THEN BEGIN CH2Erevain4A
  SAY ~Then let's go.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",6)~ EXIT
END

IF ~~ THEN BEGIN CH2Erevain5
  SAY ~I... apologize. I can speak no more.~
  IF ~~ THEN REPLY ~As you wish.~ GOTO CH2Erevain4A
  IF ~~ THEN REPLY ~Erevain. Please, just say why you have such problems talking about this.~ GOTO CH2Erevain6
  IF ~~ THEN REPLY ~If you're not going to say anything useful, then just cease speaking.~ GOTO CH2Erevain4
END

IF ~~ THEN BEGIN CH2Erevain6
  SAY ~I apologize... It is simply too painful.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",6)~ EXIT
END

IF ~~ THEN BEGIN CH2Erevain7
  SAY ~Why is there such hesitation in your voice at answering my question? Again, how do you know of Xan?~
  IF ~~ THEN REPLY ~Well. I strongly suspect that I have been transported into the past about 100 years.~ GOTO CH2Erevain8
  IF ~~ THEN REPLY ~I misspoke. I have not met someone named Xan before.~ GOTO CH2Erevain14
  IF ~~ THEN REPLY ~Enough with this second-guessing. Let us move on.~ GOTO CH2Erevain4
  IF ~~ THEN REPLY ~I truly have no idea. I consider myself quite inane right now.~ GOTO CH2Erevain9
END

IF ~~ THEN BEGIN CH2Erevain8
  SAY ~That's ridiculous. Labelas Enoreth would never allow such a thing to one such as you. Traveling to the past would do great harm to Faerun.~
  IF ~~ THEN REPLY ~You're right. I'm just a crazed <PRO_RACE> speaking nonsense.~ GOTO CH2Erevain9
  IF ~~ THEN REPLY ~Well. It's true, harmful or not, and now I need to return home to my time.~ GOTO CH2Erevain10
  IF ~~ THEN REPLY ~Hah. That was a good joke. You enjoyed it Erevain?~ GOTO CH2Erevain9
  IF ~~ THEN REPLY ~Who is Labelas Enoreth?~ GOTO CH2Erevain13
END

IF ~~ THEN BEGIN CH2Erevain9
  SAY ~May Deep Sashelas wash you of your nonsense. I can find no sympathetic ears here.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",6)~ EXIT
END

IF ~~ THEN BEGIN CH2Erevain10
  SAY ~If true, this is grave news indeed. I must accompany you and ensure a smooth timeline transition until we can discover a way back to your home. Labelas Enoreth, aid me in in these immense task!~
  IF ~~ THEN REPLY ~Very well. Onward.~ GOTO CH2Erevain4A
  IF ~~ THEN REPLY ~I will do as I please, timeline or not. And, you had best mind your place in my party.~ GOTO CH2Erevain11
  IF ~~ THEN REPLY ~You are welcome to try. Let's continue to find a way back to my home.~ GOTO CH2Erevain4A
END

IF ~~ THEN BEGIN CH2Erevain11
  SAY ~<CHARNAME>, you understand the import of my words. Altering the timeline can cause unforseen consequences and untold ruin upon Faerun and beyond. You must allow me to counsel you until your return to your own time.~
  IF ~~ THEN REPLY ~I'll do nothing of the sort, and if you try to stop me, you shall suffer my blade.~ GOTO CH2Erevain12
  IF ~~ THEN REPLY ~You are correct Erevian. Come, let us continue on in these strange lands until we can find a way back to my home time.~ GOTO CH2Erevain4A
END

IF ~~ THEN BEGIN CH2Erevain12
  SAY ~You are a severe threat to all of Faerun, <CHARNAME>. By the aid of the Seldarine you shall fall one day!~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",6) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN CH2Erevain13
  SAY ~(Sigh) Labelas Enoreth is the Elven god of the Continuum and Time. He watches over the Continuum and protects it from harmful changes. Now tell me <CHARNAME>, are you truly from the future?~
  IF ~~ THEN REPLY ~No, I'm just a crazed <PRO_RACE> speaking nonsense.~ GOTO CH2Erevain9
  IF ~~ THEN REPLY ~Yes, it is true. I must find a way back to my own time.~ GOTO CH2Erevain10
  IF ~~ THEN REPLY ~Hah. That was a good joke. You enjoyed it Erevain?~ GOTO CH2Erevain9
END

IF ~~ THEN BEGIN CH2Erevain14
  SAY ~Very well. This is a sensitive subject for me.~
  IF ~~ THEN GOTO CH2Erevain3
END

IF ~~ THEN BEGIN CH2Erevain15
  SAY ~Is this some joke <CHARNAME>? Have you truly met my cousin Xan? If so, how?~
  IF ~~ THEN REPLY ~Well. I strongly suspect that I have been transported into the past about 100 years.~ GOTO CH2Erevain8
  IF ~~ THEN REPLY ~I misspoke. I confused that name with someone else.~ GOTO CH2Erevain14
  IF ~~ THEN REPLY ~I truly have no idea. I consider myself quite inane right now.~ GOTO CH2Erevain9
  IF ~~ THEN REPLY ~I'm sure that it was a different Xan from your cousin.~ GOTO CH2Erevain14
  IF ~~ THEN REPLY ~This conversation is beyond bothersome. Let's continue on and do not speak to me more of it.~ GOTO CH2Erevain4
END

IF ~Global("VP_MyTalks","LOCALS",8)~ THEN BEGIN CH3Erevain0
  SAY ~Growing up in Evereska we were always taught to disdain fire and all of its uses. It is a baneful force that should never be used by civilized peoples.~
  IF ~~ THEN REPLY ~That's silly. Fire is necessary for cooking, warmth, and light.~ GOTO CH3Erevain1
  IF ~~ THEN REPLY ~I don't like fire either. It's destructive and harmful.~ GOTO CH3Erevain11
  IF ~~ THEN REPLY ~Why this sudden fascination with fire?~ GOTO CH3Erevain13
  IF ~~ THEN REPLY ~Erevain, I'm not interested in this idle banter.~ GOTO CH3Erevain7
END

IF ~~ THEN BEGIN CH3Erevain1
  SAY ~For other races perhaps. Elves often use magic to provide all of those items you mentioned. A heatstone can cook and warm food and a simple light orb can provide luminescence.~
  IF ~~ THEN REPLY ~Perhaps, but such items can be expensive and require mages crafting them. Anyone can light a fire.~ GOTO CH3Erevain2
  IF ~~ THEN REPLY ~That makes a lot of sense. We should all use those instead of fire.~ GOTO CH3Erevain8
  IF ~~ THEN REPLY ~Interesting. I'm not sure what's better.~ GOTO CH3Erevain8
  IF ~~ THEN REPLY ~I suppose you're volunteering to craft all these items for us?~ GOTO CH3Erevain10
END

IF ~~ THEN BEGIN CH3Erevain2
  SAY ~And risk burning the forest, the jungle or nature? Such risks are not worth the danger!~
  IF ~~ THEN REPLY ~Surely, with magic so prevalent in Elven cities, such fire extinguishing magic should be quite easily available no?~ GOTO CH3Erevain3
  IF ~~ THEN REPLY ~You're absolutely right. If the risk of accidental torching or arson is too great. Fires should be banned by the peoples of Faerun.~ GOTO CH3Erevain5
  IF ~~ THEN REPLY ~Huge metropolises burn fires every day without these massive fears you promote.~ GOTO CH3Erevain6
  IF ~~ THEN REPLY ~I'm not really interested in discussing elven propaganda.~ GOTO CH3Erevain7
END

IF ~~ THEN BEGIN CH3Erevain3
  SAY ~No, they are not. It is quite easy to create a magical flame and more difficult to put it out. Elven cities should proudly forbid fires. This prevents the need for as many countermeasures to put them out.~
  IF ~~ THEN REPLY ~That really sounds like elven cities are very vulnerable to fire. The buildings are made purely from wood right? This sounds most dangerous indeed.~ GOTO CH3Erevain4
  IF ~~ THEN REPLY ~That makes sense. Prevention works a lot better than a cure.~ GOTO CH3Erevain5
  IF ~~ THEN REPLY ~This sounds like some really strange anti-fire elven propaganda. Do your elven gods really approve of that?~ GOTO CH3Erevain6
END

IF ~~ THEN BEGIN CH3Erevain4
  SAY ~(Grr) Elven cities are quite safe! If you get to visit one someday you will plainly see that. Let us continue on; I grow tired of explaining the Elven ways.~
END

IF ~~ THEN BEGIN CH3Erevain5
  SAY ~Absolutely <CHARNAME>. It is best to remove such hazards completely. The other races across Faerun would be best by following the elven example. Let us be off.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",9)~ EXIT
END

IF ~~ THEN BEGIN CH3Erevain6
  SAY ~Your words are most offensive <CHARNAME>. You would do well to live in the deep forest and see if you are so unconcerned about your safety. One spark can light your large cities as well. And may Deep Sashelas have mercy on your ignorant brethren's lot on that day when that happens. Let us be off.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",9)~ EXIT
END

IF ~~ THEN BEGIN CH3Erevain7
  SAY ~Then stay ignorant, friend. Let us be off.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",9)~ EXIT
END

IF ~~ THEN BEGIN CH3Erevain8
  SAY ~Should we ever visit my beloved Evereska; I will share these magics with you. Perhaps you too shall share them with others and in such ways all of Faerun may be made safer. You will readily glimpse the power of elven magic over mundane trinkets.~
  IF ~~ THEN REPLY ~I would love to visit that land with you Erevain.~ GOTO CH3Erevain9
  IF ~~ THEN REPLY ~Evereska might be an interesting place to visit if the opportunity to present itself.~ GOTO CH3Erevain9
  IF ~~ THEN REPLY ~I have no interest in visiting an entire region of uptight haughty elves.~ GOTO CH3Erevain7
  IF ~~ THEN REPLY ~I still think regular fire is better.~ GOTO CH3Erevain7
END

IF ~~ THEN BEGIN CH3Erevain9
  SAY ~Yes. It is a beautiful place where all elves are greeted warmly... (sigh). Let us continue on <CHARNAME>. It is unlikely we would ever go there.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",9)~ EXIT
END

IF ~~ THEN BEGIN CH3Erevain10
  SAY ~Haha. I do not yet possess the craftsmanship and magical formulae to create such magical apparatus. However...~
  IF ~~ THEN GOTO CH3Erevain8
END

IF ~~ THEN BEGIN CH3Erevain11
  SAY ~You are quite wise, <CHARNAME>.~
  IF ~~ THEN GOTO CH3Erevain12
END

IF ~~ THEN BEGIN CH3Erevain12
  SAY ~Evereskan elves have developed some magical items to replace the use of fire. A heatstone can cook and warm food and a simple light orb can provide luminescence.~
  IF ~~ THEN REPLY ~Perhaps, but such items can be expensive and require mages crafting them. Anyone can light a fire.~ GOTO CH3Erevain2
  IF ~~ THEN REPLY ~That makes a lot of sense. We should all use those instead of fire.~ GOTO CH3Erevain8
  IF ~~ THEN REPLY ~I suppose you're volunteering to craft all these items for us?~ GOTO CH3Erevain10
END

IF ~~ THEN BEGIN CH3Erevain13
  SAY ~Because I see such prominent usage of it in these foreign lands. Such dependence on such a destructive force. This is a worrisome trend.~
  IF ~~ THEN REPLY ~That's silly. Fire is necessary for cooking, warmth, and light.~ GOTO CH3Erevain1
  IF ~~ THEN REPLY ~I don't like fire either. It's destructive and harmful.~ GOTO CH3Erevain11
  IF ~~ THEN REPLY ~I believe you Erevain have benefited from these fires at night for warmth and light~ GOTO CH3Erevain14
  IF ~~ THEN REPLY ~Erevain, I'm not interested in this idle banter.~ GOTO CH3Erevain7
END

IF ~~ THEN BEGIN CH3Erevain14
SAY ~This is true, <CHARNAME>, but it is not the ideal. There is a better way.~
  IF ~~ THEN GOTO CH3Erevain12
END

IF ~Global("VP_MyTalks","LOCALS",11)~ THEN BEGIN CH4Erevain10
  SAY ~I had a hard time maturing in Evereska. I could never be satisfied. Rather than devoting myself to one discipline, I devoted myself to three; I also couldn't merely join one organization; I joined three. The Swords of Evereska, the Greycloaks, and the Vale Guard~
  IF ~~ THEN REPLY ~Who are the Swords of Evereska?~ GOTO CH4Erevain20
  IF ~~ THEN REPLY ~Who are the Vale Guard?~ GOTO CH4Erevain40
  IF ~~ THEN REPLY ~Who are the Greycloaks?~ GOTO CH4Erevain60
  IF ~~ THEN REPLY ~How did you end up joining all three organizations?~ GOTO CH4Erevain80
  IF ~~ THEN REPLY ~Erevain, can we talk about this later?~ GOTO CH4Erevain100
END

IF ~~ THEN BEGIN CH4Erevain20
  SAY ~The Swords of Evereska are an order of knights, paladins, and wizards. They defend the Evereskan hills along with the Vale Guard on occasion while sending out parties in the interests of Evereska and the greater good of Faerun. Sometimes they aid the Greycloaks and their collectors in their quests.~
  IF ~~ THEN REPLY ~How did you end up joining the Swords of Evereska?~ GOTO CH4Erevain30
  IF ~~ THEN REPLY ~Who are the Vale Guard?~ GOTO CH4Erevain40
  IF ~~ THEN REPLY ~Who are the Greycloaks?~ GOTO CH4Erevain60
  IF ~~ THEN REPLY ~How did you end up joining all three organizations?~ GOTO CH4Erevain80
  IF ~~ THEN REPLY ~Erevain, can we talk about this later?~ GOTO CH4Erevain100
END

IF ~~ THEN BEGIN CH4Erevain30
  SAY ~My father LLamien served with the Swords of Evereska during much of his adulthood. I joined out of a similar sense of duty and of the wonderment of these Elven Knights. Tales of subduing trolls, giants, and dragons that threatened the forest were boasted to us when we were young. I too hoped to have the opportunity to achieve such quests and grandeur. As such, my father sponsored me and with his help, I passed the basic tests of elven knighthood and wizardry with magnificent success.~
  IF ~~ THEN REPLY ~Who are the Vale Guard?~ GOTO CH4Erevain40
  IF ~~ THEN REPLY ~Who are the Greycloaks?~ GOTO CH4Erevain60
  IF ~~ THEN REPLY ~How did you end up joining all three organizations?~ GOTO CH4Erevain80
  IF ~~ THEN REPLY ~Erevain, can we talk about this later?~ GOTO CH4Erevain100
END

IF ~~ THEN BEGIN CH4Erevain40
  SAY ~The Vale Guard are the main military forces of Evereska. They patrol Evereska's surrounding lands and skies as well as guard the 12 Hills and the Hidden Path. These are the most elite elven military swordsmen and archers there are.~
  IF ~~ THEN REPLY ~How did you end up joining the Vale Guard?~ GOTO CH4Erevain50
  IF ~~ THEN REPLY ~Who are the Swords of Evereska?~ GOTO CH4Erevain20
  IF ~~ THEN REPLY ~Who are the Greycloaks~ GOTO CH4Erevain60
  IF ~~ THEN REPLY ~How did you end up joining all three organizations?~ GOTO CH4Erevain80
  IF ~~ THEN REPLY ~Erevain, can we talk about this later?~ GOTO CH4Erevain100
END

IF ~~ THEN BEGIN CH4Erevain50
  SAY ~Most Evereskan elves conscript into the Vale Guard at some point following their passage to adulthood for some period of time. I was no different: joining them shortly after my adulthood ceremony and given my new suit of armor, Lord Duirsair himself sought to incorporate me into one of the units. Let us just remark that constantly patrolling every tree, shrub, hill, and tomb despite the occasional skirmish is most tiresome to both the feet and the mind.~
  IF ~~ THEN REPLY ~Who are the Swords of Evereska?~ GOTO CH4Erevain20
  IF ~~ THEN REPLY ~Who are the Greycloaks?~ GOTO CH4Erevain60
  IF ~~ THEN REPLY ~How did you end up joining all three organizations?~ GOTO CH4Erevain80
  IF ~~ THEN REPLY ~Erevain, can we talk about this later?~ GOTO CH4Erevain100
END

IF ~~ THEN BEGIN CH4Erevain60
  SAY ~The Greycloaks are the detectives and law enforcement of Evereska. Whenever there's a problem that can't be solved with mere brawn or threats, you can be sure a Greycloak is investigating.~
  IF ~~ THEN REPLY ~How did you end up joining the Greycloaks?~ GOTO CH4Erevain70
  IF ~~ THEN REPLY ~Who are the Swords of Evereska?~ GOTO CH4Erevain20
  IF ~~ THEN REPLY ~Who are the Vale Guard?~ GOTO CH4Erevain40
  IF ~~ THEN REPLY ~How did you end up joining all three organizations?~ GOTO CH4Erevain80
  IF ~~ THEN REPLY ~Erevain, can we talk about this later?~ GOTO CH4Erevain100
END

IF ~~ THEN BEGIN CH4Erevain70
  SAY ~I was always good at sneaking around unwelcome locales. I ended discovering some discrepancies from a gnomish visitor to Evereska. I was both chastised for invasion without warrant and indoctrinated into the Greycloaks as an Infiltrator.~
  IF ~~ THEN REPLY ~Who are the Swords of Evereska?~ GOTO CH4Erevain20
  IF ~~ THEN REPLY ~Who are the Vale Guard?~ GOTO CH4Erevain40
  IF ~~ THEN REPLY ~How did you end up joining all three organizations?~ GOTO CH4Erevain80
  IF ~~ THEN REPLY ~Erevain, can we talk about this later?~ GOTO CH4Erevain100
END

IF ~~ THEN BEGIN CH4Erevain80
  SAY ~In short, upon adulthood I was almost immediately recruited into the Vale Guard. During rotations, I found an opportunity to join the Swords of Evereska in a Quest to retrieve one of the Shattering Swords of Coronal Ynloeth. While on that quest, we learned of some orc movements approaching the valley and our group split. I ended up joining the Greycloaks as an Infiltrator to track down and spy on the enemy.~
  IF ~~ THEN REPLY ~What did you find?~ GOTO CH4Erevain90
  IF ~~ THEN REPLY ~What happened next?~ GOTO CH4Erevain90
  IF ~~ THEN REPLY ~Were you able to return to the Vale Guard or the Swords of Evereska?~ GOTO CH4Erevain90
  IF ~~ THEN REPLY ~That sounds very boring.~ GOTO CH4Erevain100
END

IF ~~ THEN BEGIN CH4Erevain90
  SAY ~I'm sorry friend. This is just too painful. Perhaps we can speak about it some more later.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",12)~ EXIT
END

IF ~~ THEN BEGIN CH4Erevain100
  SAY ~I suppose I am just some incessant gibberling with nothing useful to say. Fine, you shall not hear of me.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",12)~ EXIT
END

IF ~Global("VP_MyTalks","LOCALS",14)~ THEN BEGIN CH5Erevain10
  SAY ~Why are you looking at me that way <CHARNAME>?~
  IF ~~ THEN REPLY ~You have consistently had trouble speaking of your past.~ GOTO CH5Erevain70
  IF ~~ THEN REPLY ~You are always jabbering on about a topic before abruptly ending the conversation. Why?~ GOTO CH5Erevain70
  IF ~~ THEN REPLY ~I'm not looking at anything besides a stupid elf.~ GOTO CH5Erevain40
  IF ~~ THEN REPLY ~I wasn't looking at you Erevain.~ GOTO CH5Erevain20
END

IF ~~ THEN BEGIN CH5Erevain20
  SAY ~That's funny because I could have sworn that you've been looking at my direction recently for a long time.~
  IF ~~ THEN REPLY ~You seem to be troubled by your past.~ GOTO CH5Erevain70
  IF ~~ THEN REPLY ~You seem to be wanting to say something and have been for some time.~ GOTO CH5Erevain70
  IF ~~ THEN REPLY ~I'm merely dreading the moment you decide to open your mouth again.~ GOTO CH5Erevain40
  IF ~~ THEN REPLY ~I assure you that I have not been looking at your way in any manner.~ GOTO CH5Erevain30
END

IF ~~ THEN BEGIN CH5Erevain30
  SAY ~Very well. Let us be off.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",15)~ EXIT
END

IF ~~ THEN BEGIN CH5Erevain40
  SAY ~I joined your party, <CHARNAME>, under the pretense of being treated respectfully. If you will not treat me so, then I will leave post haste.~
  IF ~~ THEN REPLY ~I apologize Erevain. It is difficult because you rarely finish speaking about your past.~ GOTO CH5Erevain70
  IF ~~ THEN REPLY ~I apologize Erevain. I do not wish to be disrespectful.~ GOTO CH5Erevain60
  IF ~~ THEN REPLY ~Then by all means leave Erevain. I grow tired of your irrelevant overbearing elven diatribes.~ GOTO CH5Erevain50
END

IF ~~ THEN BEGIN CH5Erevain50
  SAY ~Then I will free you of your burden. Good Riddance.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",15) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN CH5Erevain60
  SAY ~Very well. Just be mindful of your words. They can be even as daggers to others. Let us be off.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",15)~ EXIT
END

IF ~~ THEN BEGIN CH5Erevain70
  SAY ~Very well. (Sigh) I shall tell you a story. In Evereska after joining the Greycloaks we determined that an Orc invasion was imminent. We had to quickly alert the Vale Guard, summon back the Swords of Evereska, and scramble the Winged Plumed Kingfishes.~
  = ~My mentor Yalatheniel ordered a group of Vale Guards and myself to join him in an anticipatory strike before the invading orcs arrived. We had little time to prepare. I snuck off ahead to scout the orc position when I was ambushed by a group of them.~
  = ~I tried my best, but was knocked out by one of their poisons and left for dead. I was able to awaken some time later to discover the horror at my eyes. My Vale Guard kindred were slaughtered as was my beloved mentor, the elf who helped perfect my combat, magical, and infiltration expertise.~
  = ~I had failed to stop or slow down those vile orcs and my dear friends were slain; that same orc party marched their way toward Evereska can began their full assault If I simply could have endured that skirmish, all would have been different; the enemy position and their numbers could have been reported back.~
  = ~Instead, Evereska was left blind and many elves needlessly died. I could not go back to my home after that. I could not look my fellow elves in the eye and feel their disdain. I left my only home and have not been back in twenty years.~
  IF ~~ THEN REPLY ~That wasn't your fault Erevain. You tried your best to stop them.~ GOTO CH5Erevain80
  IF ~~ THEN REPLY ~You weren't the only elf trying to repel those orcs. Why did no one else anticipate these large movements?~ GOTO CH5Erevain80
  IF ~~ THEN REPLY ~No wonder you have such trouble speaking of your past. You really screwed up and did a disservice to your people.~ GOTO CH5Erevain120
  IF ~~ THEN REPLY ~What are the Winged Plumbed Kingfishes?~ GOTO CH5Erevain140
  IF ~~ THEN REPLY ~Erevain, please stop with these diatribes. I have not idea of anything you say.~ GOTO CH5Erevain130
END

IF ~~ THEN BEGIN CH5Erevain80
  SAY ~Trying isn't good enough <CHARNAME>. When it really mattered, I failed; I wasn't strong enough and my comrades paid with their lives. What others did or did not do is irrelevant; I was as responsible for the as I was for myself. I cannot return to my homeland nor can I bear the shame of that catastrophe.~
  IF ~~ THEN REPLY ~No one is perfect Erevain. One can only be judged by his or her choices. Your choices were noble.~ GOTO CH5Erevain90
  IF ~~ THEN REPLY ~I don't see why your family and people would reject you; you tried your best.~ GOTO CH5Erevain90
  IF ~~ THEN REPLY ~If your comrades couldn't defend themselves, then that's their problem not yours. You are not responsible for the competency of your comrades.~ GOTO CH5Erevain90
END

IF ~~ THEN BEGIN CH5Erevain90
  SAY ~Evereska is one of the last elven fortresses on the main continent of Faerun. We are judged not only by our actions, but on their effect on the elven civilization itself. My kind's numbers are dwindling. To have any part in their further decrease is unforgivable. I was as responsible for the lives of those Vale Guards and Yalatheniel as I am my own. If I did not leave of my own accord, my people and family would have assuredly rejected me. Now I must content myself to drift from location to location, stranger to stranger, and try to extract some meaning for my continued existence.~
  IF ~~ THEN REPLY ~Aiding me and others, and making the world a better place is a worthy existence.~ GOTO CH5Erevain100
  IF ~~ THEN REPLY ~Aiding me while exploring unknown lands and gaining knowledge is a worthy existence.~ GOTO CH5Erevain100
  IF ~~ THEN REPLY ~Aiding me while gaining power and funds to vanquish your enemies is a worthy existence.~ GOTO CH5Erevain100
  IF ~~ THEN REPLY ~This is above my head. I'm not sure how to respond.~ GOTO CH5Erevain110
END

IF ~~ THEN BEGIN CH5Erevain100
  SAY ~Perhaps you are right <CHARNAME>. I must find some reason to linger on. (Sigh.)~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",15)~ EXIT
END

IF ~~ THEN BEGIN CH5Erevain110
  SAY ~It matters not. I simply have little purpose to my life anymore. (Sigh).~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",15)~ EXIT
END

IF ~~ THEN BEGIN CH5Erevain120
  SAY ~I inflicted a great shame on my people that I cannot recover from. There is little purpose to my existence anymore.~
  IF ~~ THEN REPLY ~Aiding me and others, and making the world a better place is a worthy existence.~ GOTO CH5Erevain100
  IF ~~ THEN REPLY ~Aiding me while exploring unknown lands and gaining knowledge is a worthy existence.~ GOTO CH5Erevain100
  IF ~~ THEN REPLY ~Aiding me while gaining power and funds to vanquish your enemies is a worthy existence.~ GOTO CH5Erevain100
  IF ~~ THEN REPLY ~This is above my head. I'm not sure how to respond.~ GOTO CH5Erevain110
END

IF ~~ THEN BEGIN CH5Erevain130
  SAY ~You are correct, I apologize. These aches of the soul should be burdened by one alone. (Sigh.)~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",15)~ EXIT
END

IF ~~ THEN BEGIN CH5Erevain140
  SAY ~(Sigh) The Winged Plumbed Kingfishes are an elite elven military aerial order divided between Evermeet and Evereska. These armored elves ride giant eagles and asperii.~
  IF ~~ THEN REPLY ~That wasn't your fault Erevain. You tried your best to stop those orcs.~ GOTO CH5Erevain80
  IF ~~ THEN REPLY ~You weren't the only elf trying to repel those orcs. Why did no one else anticipate these large movements?~ GOTO CH5Erevain80
  IF ~~ THEN REPLY ~No wonder you have such trouble speaking of your past. You really screwed up and did a disservice to your people.~ GOTO CH5Erevain120
  IF ~~ THEN REPLY ~What are asperii?~ GOTO CH5Erevain150
  IF ~~ THEN REPLY ~What were we talking about again? I forgot.~ GOTO CH5Erevain110
END

IF ~~ THEN BEGIN CH5Erevain150
  SAY ~(Sigh) Asperii are a race of creatures with the innate magical ability to fly. They look similar to human horses, but are far more intelligent and powerful.~
  IF ~~ THEN REPLY ~That wasn't your fault Erevain. You tried your best to stop those orcs.~ GOTO CH5Erevain80
  IF ~~ THEN REPLY ~You weren't the only elf trying to repel those orcs. Why did no one else anticipate these large movements?~ GOTO CH5Erevain80
  IF ~~ THEN REPLY ~No wonder you have such trouble speaking of your past. You really screwed up and did a disservice to your people.~ GOTO CH5Erevain120
  IF ~~ THEN REPLY ~What were we talking about again? I forgot.~ GOTO CH5Erevain110
END

//The basic plan is 5 lovetalks before romance conflicts (Anomen and any other mod NPCs). After this there is interest (variable 1).
//After this there 8 post conflict pre-commitment talks. Then there is one conversation to finalize commitment (variable 2).
//Post commitment there are 5 lovetalks in BG2 and 8 lovetalks in ToB. There will be 5 BG2 Romance PID and 3 ToB Romance PID.

//Skipping romance - Introducing banters for female protagonists

IF ~Global("VP_MyTalks","LOCALS",17)~ THEN BEGIN CH6Erevain10
  SAY ~What do you think about love?~ [stagnes]
  IF ~~ THEN REPLY ~Love is wonderful.~ GOTO CH6Erevain124
  IF ~~ THEN REPLY ~Love is good.~ GOTO CH6Erevain124
  IF ~~ THEN REPLY ~Love is awful.~ GOTO CH6Erevain122
  IF ~~ THEN REPLY ~I don't think much about it.~ GOTO CH6Erevain121
  IF ~~ THEN REPLY ~I am not sure.~ GOTO CH6Erevain121
  IF ~~ THEN REPLY ~...~ GOTO CH6Erevain130
  IF ~~ THEN REPLY ~I don't feel like talking about this now.~ GOTO CH6Erevain120
END

IF ~~ THEN BEGIN CH6Erevain120
  SAY ~Very well then.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",18)~ EXIT
END

IF ~~ THEN BEGIN CH6Erevain121
  SAY ~Well, let me tell you how I feel about it.~
  IF ~~ THEN DO ~~ GOTO CH6Erevain130
END

IF ~~ THEN BEGIN CH6Erevain122
  SAY ~Why would you say such a thing?~
  IF ~~ THEN REPLY ~Because love is awful.~ GOTO CH6Erevain123
  IF ~~ THEN REPLY ~Because love is stupid Erevain and so are you.~ GOTO CH6Erevain132
  IF ~~ THEN REPLY ~I am not really interested in any kind of love Erevain.~ GOTO CH6Erevain220
  IF ~~ THEN REPLY ~I'm not interested in you Erevain.~ GOTO CH6Erevain220
  IF ~~ THEN REPLY ~Love just breaks your heart.~ GOTO CH6Erevain123
  IF ~~ THEN REPLY ~Love hurts more than helps.~ GOTO CH6Erevain123
  IF ~~ THEN REPLY ~Love is a waste of time.~ GOTO CH6Erevain123
  IF ~~ THEN REPLY ~I'm sorry, I am interested in the kind of love that lasts.~ GOTO CH6Erevain131
  IF ~~ THEN REPLY ~I'm sorry, love is important.~ GOTO CH6Erevain131
  IF ~~ THEN REPLY ~I am not for anything that will tie me down. I have a long life to live.~ GOTO CH6Erevain146
  IF ~~ THEN REPLY ~I'm not interested in you Erevain.~ GOTO CH6Erevain230
  IF ~~ THEN REPLY ~...~ GOTO CH6Erevain143
  IF ~~ THEN REPLY ~I don't feel like talking about this now.~ GOTO CH6Erevain143
END

IF ~~ THEN BEGIN CH6Erevain123
  SAY ~Then I suppose we fundamentally disagree.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",18)~ EXIT
END

IF ~~ THEN BEGIN CH6Erevain124
  SAY ~I agree with you (Erevain smiles).~
  IF ~~ THEN GOTO CH6Erevain130
END

IF ~~ THEN BEGIN CH6Erevain130
  SAY ~For elves, love can be a short or long dalliance sometimes lasting even months or centuries. Another kind of love can last a lifetime and beyond.~
  IF ~~ THEN REPLY ~What are implying Erevain?~ GOTO CH6Erevain200
  IF ~~ THEN REPLY ~That is surely the same for many races and cultures.~ GOTO CH6Erevain132
  IF ~~ THEN REPLY ~I am for all kinds of love.~ GOTO CH6Erevain146
  IF ~~ THEN REPLY ~I am not really interested in any kind of love.~ GOTO CH6Erevain220
  IF ~~ THEN REPLY ~I'm not interested in you Erevain.~ GOTO CH6Erevain220
  IF ~~ THEN REPLY ~I am interested in the kind of love that lasts.~ GOTO CH6Erevain131
  IF ~~ THEN REPLY ~I am not for anything that will tie me down. I have a long life to live.~ GOTO CH6Erevain146
  IF ~~ THEN REPLY ~What kind of stupd fluffy elf love foolishness is this? Do not talk to me about this again.~ GOTO CH6Erevain145
  IF ~~ THEN REPLY ~Yes, go on.~ GOTO CH6Erevain140
  IF ~~ THEN REPLY ~...~ GOTO CH6Erevain140
  IF ~~ THEN REPLY ~I don't feel like talking about this now.~ GOTO CH6Erevain120
END

IF ~~ THEN BEGIN CH6Erevain131
  SAY ~As am I. (Erevain smiles.)~
  IF ~~ THEN GOTO CH6Erevain150
END

IF ~~ THEN BEGIN CH6Erevain132
  SAY ~It may be for more civilized races. I am most familiar with elves.~
  IF ~~ THEN GOTO CH6Erevain140
END

IF ~~ THEN BEGIN CH6Erevain140
  SAY ~Lasting Fidelity is not always common amongst elves. Many move from relationship to relationship and never tire of new trysts. Myself, I have always desired to have a companion throughout life.~
  = ~A soul that will journey with me in this life and beyond. Someone to love and cherish forever. I do not seek to waste time on a beauty that will die.~
  IF ~~ THEN REPLY ~I would value such a companion as well.~ GOTO CH6Erevain148
  IF ~~ THEN REPLY ~Neither do I. I want beauty to last forever~ GOTO CH6Erevain148
  IF ~~ THEN REPLY ~Beauty cannot and does not last. One can only enjoy beauty while it does last.~ GOTO CH6Erevain250
  IF ~~ THEN REPLY ~Life is too short to try to find a perfect love.~ GOTO CH6Erevain250
  IF ~~ THEN REPLY ~Fidelity is a waste of time. Why taste one flavor when you can taste many?.~ GOTO CH6Erevain146
  IF ~~ THEN REPLY ~I think I prefer the common elven culture to yours Erevain.~ GOTO CH6Erevain147
  IF ~~ THEN REPLY ~That's just stupid Erevain.~ GOTO CH6Erevain142
  IF ~~ THEN REPLY ~I'm not interested in you Erevain.~ GOTO CH6Erevain220
  IF ~~ THEN REPLY ~I'm not sure what I think about this.~ GOTO CH6Erevain141
  IF ~~ THEN REPLY ~Yes, go on.~ GOTO CH6Erevain150
  IF ~~ THEN REPLY ~...~ GOTO CH6Erevain150
  IF ~~ THEN REPLY ~I don't feel like talking about this now.~ GOTO CH6Erevain120
END

IF ~~ THEN BEGIN CH6Erevain141
  SAY ~There's no need to think too much all of this just yet.~
  IF ~~ THEN GOTO CH6Erevain150
END

IF ~~ THEN BEGIN CH6Erevain142
  SAY ~That's rather rude. Why would you say such a thing?~
  IF ~~ THEN REPLY ~Fidelity is a waste of time. Why taste one flavor when you can taste many?~ GOTO CH6Erevain146
  IF ~~ THEN REPLY ~Like all things in the multiverse, love cannot last.~ GOTO CH6Erevain250
  IF ~~ THEN REPLY ~Because what you said was stupid, Erevain.~ GOTO CH6Erevain145
  IF ~~ THEN REPLY ~I'm not interested in you, Erevain.~ GOTO CH6Erevain220
  IF ~~ THEN REPLY ~I'm sorry. I would treasure a loyal companion sometime in the future.~ GOTO CH6Erevain190
  IF ~~ THEN REPLY ~I'm sorry. I do not know why I said that.~ GOTO CH6Erevain144
  IF ~~ THEN REPLY ~I'm not sure what I think about this.~ GOTO CH6Erevain143
  IF ~~ THEN REPLY ~...~ GOTO CH6Erevain143
  IF ~~ THEN REPLY ~I don't feel like talking about this now.~ GOTO CH6Erevain143
END

IF ~~ THEN BEGIN CH6Erevain143
  SAY ~Well, your previous words have already given how you feel away. I am dissapointed.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",18)~ EXIT
END

IF ~~ THEN BEGIN CH6Erevain144
  SAY ~Apology accepted.~
  IF ~~ THEN GOTO CH6Erevain160
END

IF ~~ THEN BEGIN CH6Erevain145
  SAY ~You are a most rude individual. I am dissapointed.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",99)~ EXIT
END

IF ~~ THEN BEGIN CH6Erevain146
  SAY ~Fidelity may yet be the sweetest and most lasting fruit of all (smiles).~
  IF ~~ THEN GOTO CH6Erevain160
END

IF ~~ THEN BEGIN CH6Erevain147
  SAY ~I never said such practices were the most common, just that many elves lived that way. I do not believe we are compatible.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",99)~ EXIT
END

IF ~~ THEN BEGIN CH6Erevain148
  SAY ~I am glad to hear that (smiles).~
  IF ~~ THEN GOTO CH6Erevain150
END

IF ~~ THEN BEGIN CH6Erevain150
  SAY ~I hope that I can find such a loyal steadfast loving companion one day.~
  IF ~~ THEN REPLY ~As would I.~ GOTO CH6Erevain190
  IF ~~ THEN REPLY ~I too would want such a thing.~ GOTO CH6Erevain190
  IF ~~ THEN REPLY ~That sounds nice, but I do not know if it could last.~ GOTO CH6Erevain250
  IF ~~ THEN REPLY ~What are you implying Erevain?~ GOTO CH6Erevain200
  IF ~~ THEN REPLY ~That sounds very stuffy and limiting~ GOTO CH6Erevain240
  IF ~~ THEN REPLY ~I do not want such a thing.~ GOTO CH6Erevain180
  IF ~~ THEN REPLY ~I'm not interested in you Erevain.~ GOTO CH6Erevain220
  IF ~~ THEN REPLY ~I'm no sure what I think about this.~ GOTO CH6Erevain170
  IF ~~ THEN REPLY ~Yes, go on.~ GOTO CH6Erevain160
  IF ~~ THEN REPLY ~...~ GOTO CH6Erevain160
  IF ~~ THEN REPLY ~I don't feel like talking about this now.~ GOTO CH6Erevain120
END

IF ~~ THEN BEGIN CH6Erevain160
  SAY ~I have no more words for now. Remember what I have said... and meant.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",18)~ EXIT
END

IF ~~ THEN BEGIN CH6Erevain170
  SAY ~There's no need to think too much on it just yet.~
  IF ~~ THEN GOTO CH6Erevain160
END

IF ~~ THEN BEGIN CH6Erevain180
  SAY ~Really? What do you mean?~
  IF ~~ THEN REPLY ~I'm not interested in you Erevain. Sorry.~ GOTO CH6Erevain220
  IF ~~ THEN REPLY ~I'm not interested in relationships of any kind.~ GOTO CH6Erevain220
  IF ~~ THEN REPLY ~I don't think I'm ready for a relationship.~ GOTO CH6Erevain220
  IF ~~ THEN REPLY ~I don't know what to think about this.~ GOTO CH6Erevain170
  IF ~~ THEN REPLY ~I am not sure what you are implying.~ GOTO CH6Erevain200
  IF ~~ THEN REPLY ~I'm sorry. I would treasure a loyal companion sometime in the future.~ GOTO CH6Erevain190
  IF ~~ THEN REPLY ~I don't know what I mean.~ GOTO CH6Erevain170
  IF ~~ THEN REPLY ~...~ GOTO CH6Erevain160
  IF ~~ THEN REPLY ~I don't feel like talking about this now.~ GOTO CH6Erevain120
END

IF ~~ THEN BEGIN CH6Erevain190
  SAY ~I am glad to hear that (smiles).~
  IF ~~ THEN GOTO CH6Erevain160
END

IF ~~ THEN BEGIN CH6Erevain200
  SAY ~You heard what I said (smiles).~
  IF ~~ THEN GOTO CH6Erevain160
END

IF ~~ THEN BEGIN CH6Erevain220
  SAY ~There's no need to be hasty or rush to statements. I'm just making pleasant conversation (smiles).~
  IF ~~ THEN REPLY ~I'm serious Erevain. I don't want any relationships with anyone ever.~ GOTO CH6Erevain230
  IF ~~ THEN REPLY ~I'm serious Erevain. I don't think I'll ever be ready for a relationship.~ GOTO CH6Erevain230
  IF ~~ THEN REPLY ~I'm serious Erevain. I'm not interested in you. Sorry.~ GOTO CH6Erevain230
  IF ~~ THEN REPLY ~I'm serious Erevain. I'm not interested in love.~ GOTO CH6Erevain230
  IF ~~ THEN REPLY ~I'm not sure what to say.~ GOTO CH6Erevain160
  IF ~~ THEN REPLY ~...~ GOTO CH6Erevain160
END

IF ~~ THEN BEGIN CH6Erevain230
  SAY ~I'm sorry to hear that. As you wish.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",18)~ EXIT
END

IF ~~ THEN BEGIN CH6Erevain240
  SAY ~Really? What do you mean?~
  IF ~~ THEN REPLY ~Companions and relationships tie you down. You can't live a free life with them.~ GOTO CH6Erevain220
  IF ~~ THEN REPLY ~I don't think I'm ready for a relationship.~ GOTO CH6Erevain220
  IF ~~ THEN REPLY ~I'm not interested in you Erevain.~ GOTO CH6Erevain220
  IF ~~ THEN REPLY ~I don't know what to think about this.~ GOTO CH6Erevain170
  IF ~~ THEN REPLY ~I am not sure what you are implying.~ GOTO CH6Erevain200
  IF ~~ THEN REPLY ~I'm sorry. I would treasure a loyal companion sometime in the future.~ GOTO CH6Erevain190
  IF ~~ THEN REPLY ~I don't know what I mean.~ GOTO CH6Erevain170
  IF ~~ THEN REPLY ~...~ GOTO CH6Erevain160
  IF ~~ THEN REPLY ~I don't feel like talking about this now.~ GOTO CH6Erevain120
END

IF ~~ THEN BEGIN CH6Erevain250
  SAY ~That which is eternal may never die (smles).~
  IF ~~ THEN GOTO CH6Erevain160
END

IF ~Global("VP_MyTalks","LOCALS",20)~ THEN BEGIN CH7Erevain10
  SAY ~Do you have a family? Blood kin that you care about?~
  IF ~~ THEN REPLY ~I was close to my foster father Gorion. But he was not my blood kin.~ GOTO CH7Erevain117
  IF ~~ THEN REPLY ~I am close to my foster father Gorion. But he is not my blood kin.~ GOTO CH7Erevain117
  IF ~~ THEN REPLY ~I was close to Imoen, but she was not my blood kin.~ GOTO CH7Erevain117
  IF ~~ THEN REPLY ~I am close to Imoen.~ GOTO CH7Erevain116
  IF ~~ THEN REPLY ~Sarevok was blood kin but I would not call him "family". He tried to have me assassinated.~ GOTO CH7Erevain115
  IF ~~ THEN REPLY ~I don't have a family or blood kin.~ GOTO CH7Erevain114
  IF ~~ THEN REPLY ~The whole concept of family and blood kin is stupid.~ GOTO CH7Erevain112
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Please stop talking to me Erevain.~ GOTO CH7Erevain111
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~I'm not interested in you Erevain.~ GOTO CH7Erevain113
  IF ~~ THEN REPLY ~...~ GOTO CH7Erevain120
  IF ~~ THEN REPLY ~I don't feel like talking about this now.~ GOTO CH6Erevain120
END

IF ~~ THEN BEGIN CH7Erevain111
  SAY ~As you wish.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",99)~ EXIT
END

IF ~~ THEN BEGIN CH7Erevain112
  SAY ~Then I suppose we haven't much to talk about on this issue.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",21)~ EXIT
END

IF ~~ THEN BEGIN CH7Erevain113
  SAY ~I am disappointed. As you wish.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",99)~ EXIT
END

IF ~~ THEN BEGIN CH7Erevain114
  SAY ~Really? I find that difficult to fathom.~
  IF ~~ THEN GOTO CH7Erevain120
END

IF ~~ THEN BEGIN CH7Erevain115
  SAY ~That is truly horrible. I cannot fathom having family like that.~
  IF ~~ THEN GOTO CH7Erevain120
END

IF ~~ THEN BEGIN CH7Erevain116
  SAY ~I am glad for you (smiles).~
  IF ~~ THEN GOTO CH7Erevain120
END

IF ~~ THEN BEGIN CH7Erevain117
  SAY ~Some friendships are thicker than blood (smiles).~
  IF ~~ THEN GOTO CH7Erevain120
END

IF ~~ THEN BEGIN CH7Erevain120
  SAY ~In Evereska I had a family. My brothers Erlathan and Ermmyth, my father LLamien and mother Ossianya and of course my relatives including my gloomy cousin Xan. It was a wonderful time while it lasted. A good family can be such a blessing. I'm sorry that you didn't have the best situation.~
  IF ~~ THEN REPLY ~Gorion was a blessing. He raised and took care of me well. My childhood was decent given the circumstances.~ GOTO CH7Erevain125
  IF ~~ THEN REPLY ~Gorion is a blessing. He raised and took care of me well. My childhood was decent given the circumstances.~ GOTO CH7Erevain125
  IF ~~ THEN REPLY ~Imoen was wonderful. A treasured childhood friend. My early life was decent given the circumstances.~ GOTO CH7Erevain125
  IF ~~ THEN REPLY ~Imoen is wonderful. A treasured childhood and adult friend. My early life was decent given the circumstances.~ GOTO CH7Erevain125
  IF ~~ THEN REPLY ~Gorion was an irksome fool who kept me back from my true potential. I am glad to be rid of him.~ GOTO CH7Erevain124
  IF ~~ THEN REPLY ~Imoen was a pesky tattletale brat who would never leave me alone and would always get me into trouble. I am glad to be rid of her.~ GOTO CH7Erevain124
  IF ~~ THEN REPLY ~My situation was decent for what it was.~ GOTO CH7Erevain123
  IF ~~ THEN REPLY ~I have no desire to comment on my former situation.~ GOTO CH7Erevain122
  IF ~~ THEN REPLY ~My situation was horrible.~ GOTO CH7Erevain121
  IF ~~ THEN REPLY ~...~ GOTO CH7Erevain130
  IF ~~ THEN REPLY ~I don't feel like talking about this now.~ GOTO CH6Erevain120
END

IF ~~ THEN BEGIN CH7Erevain121
  SAY ~I am truly sorry for that.~
  IF ~~ THEN GOTO CH7Erevain130
END

IF ~~ THEN BEGIN CH7Erevain122
  SAY ~I can understand that.~
  IF ~~ THEN GOTO CH7Erevain130
END

IF ~~ THEN BEGIN CH7Erevain123
  SAY ~That is somewhat encouraging.~
  IF ~~ THEN GOTO CH7Erevain130
END

IF ~~ THEN BEGIN CH7Erevain124
  SAY ~I am sorry to hear that.~
  IF ~~ THEN GOTO CH7Erevain130
END

IF ~~ THEN BEGIN CH7Erevain125
  SAY ~I am glad to hear that.~
  IF ~~ THEN GOTO CH7Erevain130
END

IF ~~ THEN BEGIN CH7Erevain130
  SAY ~I'm ashamed of what happened. I have been gone so long. I truly wonder if I will ever be able to return home. Will I ever be accepted again?~
  IF ~~ THEN REPLY ~I'm sure your family would welcome you back.~ GOTO CH7Erevain135
  IF ~~ THEN REPLY ~Time heals wounds.~ GOTO CH7Erevain134
  IF ~~ THEN REPLY ~I hope that they would accept you again.~ GOTO CH7Erevain133
  IF ~~ THEN REPLY ~I don't think that they would take you back.~ GOTO CH7Erevain132
  IF ~~ THEN REPLY ~There's no way that they would welcome you again.~ GOTO CH7Erevain132
  IF ~~ THEN REPLY ~I don't know if you would be accepted or not.~ GOTO CH7Erevain131
  IF ~~ THEN REPLY ~Yes, go on.~ GOTO CH7Erevain140
  IF ~~ THEN REPLY ~...~ GOTO CH7Erevain140
  IF ~~ THEN REPLY ~I don't feel like talking about this now.~ GOTO CH6Erevain120
END

IF ~~ THEN BEGIN CH7Erevain131
  SAY ~I don't know either, but I hope I would be.~
  IF ~~ THEN GOTO CH7Erevain140
END

IF ~~ THEN BEGIN CH7Erevain132
  SAY ~I can't let myself fully believe that. I just cannot.~
  IF ~~ THEN GOTO CH7Erevain140
END

IF ~~ THEN BEGIN CH7Erevain133
  SAY ~I hope so as well.~
  IF ~~ THEN GOTO CH7Erevain140
END

IF ~~ THEN BEGIN CH7Erevain134
  SAY ~It can indeed. I hope that this wound can heal.~
  IF ~~ THEN GOTO CH7Erevain140
END

IF ~~ THEN BEGIN CH7Erevain135
  SAY ~Thank you. I hope that they do.~
  IF ~~ THEN GOTO CH7Erevain140
END

IF ~~ THEN BEGIN CH7Erevain140
  SAY ~I have always wanted to make my family and my people proud of me. I still want that. I still want them to be proud of me. I have to do something ... something great that will earn their admiration and respect; something to earn it back again.~
  IF ~~ THEN REPLY ~You shouldn't need to do anything to prove yourself to your family.~ GOTO CH7Erevain144
  IF ~~ THEN REPLY ~Your have done plenty to make your family proud.~ GOTO CH7Erevain145
  IF ~~ THEN REPLY ~You don't need to make your family proud~ GOTO CH7Erevain144
  IF ~~ THEN REPLY ~You're right, you must do something to make your family proud.~ GOTO CH7Erevain142
  IF ~~ THEN REPLY ~Are you sure that you have to do something to earn their respect?~ GOTO CH7Erevain143
  IF ~~ THEN REPLY ~There's nothing that you can do that would ever be good enough for them.~ GOTO CH7Erevain141
  IF ~~ THEN REPLY ~Yes, go on.~ GOTO CH7Erevain160
  IF ~~ THEN REPLY ~...~ GOTO CH7Erevain160
  IF ~~ THEN REPLY ~I don't feel like talking about this now.~ GOTO CH6Erevain120
END

IF ~~ THEN BEGIN CH7Erevain141
  SAY ~You might be right, but I don't know that for sure.~
  IF ~~ THEN GOTO CH7Erevain160
END

IF ~~ THEN BEGIN CH7Erevain142
  SAY ~I will have to think of something.~
  IF ~~ THEN GOTO CH7Erevain160
END

IF ~~ THEN BEGIN CH7Erevain143
  SAY ~Absolutely. I have disgraced myself and must work to return to their graces.~
  IF ~~ THEN GOTO CH7Erevain160
END

IF ~~ THEN BEGIN CH7Erevain144
  SAY ~But, I must. Family is very important to me.~
  IF ~~ THEN GOTO CH7Erevain160
END

IF ~~ THEN BEGIN CH7Erevain145
  SAY ~Thank you. I hope that they will feel that way.~
  IF ~~ THEN GOTO CH7Erevain160
END

IF ~~ THEN BEGIN CH7Erevain160
  SAY ~Whatever happens. One day I will return home and good or bad I will have to face my family.~
  IF ~Gender(Player1,MALE)~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",21)~ EXIT
  IF ~Gender(Player1,FEMALE)~ THEN GOTO CH6Erevain170
END

IF ~~ THEN BEGIN CH7Erevain170
  SAY ~It is my hope that you would consider coming with me. I would enjoy your company and assistance.~
  IF ~~ THEN REPLY ~I would love to come with you.~ GOTO CH7Erevain190
  IF ~~ THEN REPLY ~I might come with you.~ GOTO CH7Erevain190
  IF ~~ THEN REPLY ~I would wish you well, but would not come with you.~ GOTO CH7Erevain190
  IF ~~ THEN REPLY ~I would never come with you.~ GOTO CH7Erevain190
  IF ~~ THEN REPLY ~...~ GOTO CH7Erevain180
  IF ~~ THEN REPLY ~I don't feel like talking about this now.~ GOTO CH7Erevain200
END

IF ~~ THEN BEGIN CH7Erevain180
SAY ~I would like to remember you just like this.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",21)~ EXIT
END

IF ~~ THEN BEGIN CH7Erevain190
  SAY ~I don't believe you (smiles).~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",21)~ EXIT
END

IF ~~ THEN BEGIN CH7Erevain200
  SAY ~Very well then.~
  IF ~~ THEN DO ~SetGlobal("VP_MyTalks","LOCALS",21)~ EXIT
END

/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////

APPEND ~IMOENJ~

IF ~~ THEN BEGIN EREV1
  SAY ~Why is Erevain always so moody about his past. Maybe there's something in that journal I seem him writing occasionally. (Sneaks nearby Erevain resting and grabs Erevain's bag.)~
  IF ~~ THEN EXTERN ~BEREVAIN~ 2
END

IF ~~ THEN BEGIN EREV2
  SAY ~Um, er....no...~
  IF ~~ THEN EXTERN ~BEREVAIN~ 3
END

IF ~~ THEN BEGIN EREV3
  SAY ~I wasn't inflitrating you. I...~
  IF ~~ THEN EXTERN ~BEREVAIN~ 4
END

IF ~~ THEN BEGIN EREV4
  SAY ~Hey, be careful what you say grumblebutt! Take your stupid bag and journal! (Imoen lets go of Erevain's bag.)~
  IF ~~ THEN EXTERN ~BEREVAIN~ 6
END

END

APPEND ~IMOEN2J~

IF ~~ THEN BEGIN EREV1
  SAY ~Why is Erevain always so moody about his past. Maybe there's something in that journal I seem him writing occasionally. (Sneaks nearby Erevain resting and grabs Erevain's bag.)~
  IF ~~ THEN EXTERN ~BEREVAIN~ 2
END

IF ~~ THEN BEGIN EREV2
  SAY ~Um, er....no...~
  IF ~~ THEN EXTERN ~BEREVAIN~ 3
END

IF ~~ THEN BEGIN EREV3
  SAY ~I wasn't inflitrating you. I...~
  IF ~~ THEN EXTERN ~BEREVAIN~ 4
END

IF ~~ THEN BEGIN EREV4
  SAY ~Hey, be careful what you say grumblebutt! Take your stupid bag and journal! (Imoen lets go of Erevain's bag.)~
  IF ~~ THEN EXTERN ~BEREVAIN~ 6
END

END

APPEND ~BSHART~

IF ~~ THEN BEGIN EREVINT1
 SAY ~Watch where your loose tongue points elfling!~
 IF ~~ THEN EXTERN ~BEREVAIN~ 5
END

END

/////////////CHAINs////////////////

CHAIN
IF ~Global("VP_BImoen","LOCALS",2)~ THEN BEREVAIN C1
~Imoen, why are you always so cheerful?~
DO ~SetGlobal("VP_BImoen","LOCALS",3)~
== IMOENJ ~Well I am most of the time. What's there not to be cheerful about? Birds, music, pages of books that never seem to crease correctly ever again.~
== BEREVAIN ~You warm my heart child. I wish I could remain as spirited as you Imoen.~
== IMOENJ ~Hey buster, I'm older than you given all of my troubles and torture. What reason do you have to be so cold?~
== BEREVAIN ~I...~
== IMOENJ ~Yes?~
== BEREVAIN ~...I cannot answer~
== IMOENJ ~Sure ya can. Just spit it out already!~
== BEREVAIN ~No, I'm sorry let just move on.~
== IMOENJ ~Come on Erevain. Lighten up. What's got yer tongue so twisted?~
== BEREVAIN ~I said No Imoen! Leave me be.~
== IMOENJ ~Geez. Be that way then.~
EXIT

CHAIN
IF ~Global("VP_BImoen2","LOCALS",2)~ THEN BEREVAIN C2
~Imoen, why are you always so cheerful?~
DO ~SetGlobal("VP_BImoen2","LOCALS",3)~
== IMOEN2J ~Well I am most of the time. What's there not to be cheerful about? Birds, music, pages of books that never seem to crease correctly ever again.~
== BEREVAIN ~You warm my heart child. I wish I could remain as spirited as you Imoen.~
== IMOEN2J ~Hey buster, I'm older than you given all of my troubles and torture. What reason do you have to be so cold?~
== BEREVAIN ~I...~
== IMOEN2J ~Yes?~
== BEREVAIN ~...I cannot answer.~
== IMOEN2J ~Sure ya can. Just spit it out already!~
== BEREVAIN ~No, I'm sorry let just move on.~
== IMOEN2J ~Come on Erevain. Lighten up. What's got yer tongue so twisted?~
== BEREVAIN ~I said No Imoen! Leave me be.~
== IMOEN2J ~Geez. Be that way then.~
EXIT

CHAIN
IF ~Global("VP_BImoen","LOCALS",5)~ THEN BEREVAIN C3
~Imoen, did you ever manage to visit beautiful places as a young one? Ever get out of that dusty Candlekeep?~
DO ~SetGlobal("VP_BImoen","LOCALS",6)~
== IMOENJ ~<CHARNAME> and I rarely got out. We were always chastised that we wouldn't be allowed back inside if we left the walls. I think that was more to scare us than anything. But, there were a few times we got to see outside. When I did, I always wanted to visit the beautiful forests and all of the life they had to show.~
== BEREVAIN ~That reminds me of my home of Evereska. Imoen, we had the most beautiful forests in all of Faerun. Every tenday I would travel up and down each tree reciting each one's name: Agala, Einid, Ogainithyn, Illesmyin, Nintomyan, Erevain, and so on.~
== IMOENJ ~Erevain? Really? Did your parents name you after a big stick with greens? What came first, you or the tree?~
== BEREVAIN ~The tree. An ancient exquisite Duskwood that has been growing for centuries prior to my birth. Such namings are not uncommon amongst the elves.~
== IMOENJ ~So does every coffee mug, every weed, and that pebble over their have names too?~
== BEREVAIN ~You make me smile Imoen. No, Not everything in nature have a name.~
== IMOENJ ~Well I'd bet your name was a lot better than most other ones out there and it helped make you more famous in Evereska.~
== BEREVAIN ~Maybe later.~
== IMOENJ ~What?~
== BEREVAIN ~Later. Maybe. Let's continue moving.~
EXIT

CHAIN
IF ~Global("VP_BImoen2","LOCALS",5)~ THEN BEREVAIN C4
~Imoen, did you ever manage to visit beautiful places as a young one? Ever get out of that dusty Candlekeep?~
DO ~SetGlobal("VP_BImoen2","LOCALS",6)~
== IMOEN2J ~<CHARNAME> and I rarely got out. We were always chastised that we wouldn't be allowed back inside if we left the walls. I think that was more to scare us than anything. But, there were a few times we got to see outside. When I did, I always wanted to visit the beautiful forests and all of the life they had to show.~
== BEREVAIN ~That reminds me of my home of Evereska. Imoen, we had the most beautiful forests in all of Faerun. Every tenday I would travel up and down each tree reciting each one's name: Agala, Einid, Ogainithyn, Illesmyin, Nintomyan, Erevain, and so on.~
== IMOEN2J ~Erevain? Really? Did your parents name you after a big stick with greens? What came first, you or the tree?~
== BEREVAIN ~The tree. An ancient exquisite Duskwood that has been growing for centuries prior to my birth. Such namings are not uncommon amongst the elves.~
== IMOEN2J ~So does every coffee mug, every weed, and that pebble over their have names too?~
== BEREVAIN ~You make me smile Imoen. No, Not everything in nature have a name.~
== IMOEN2J ~Well I'd bet your name was a lot better than most other ones out there and it helped make you more famous in Evereska.~
== BEREVAIN ~Maybe later.~
== IMOEN2J ~What?~
== BEREVAIN ~Later. Maybe. Let's continue moving.~
EXIT

CHAIN
IF ~Global("VP_BImoen","LOCALS",11)~ THEN BEREVAIN C5
~I wanted to apologize to you for my earlier comments.~
DO ~SetGlobal("VP_BImoen","LOCALS",12)~
== IMOENJ ~(Stands up straight) And, exactly what would those comments be?~
== BEREVAIN ~And? What?~
== IMOENJ ~You called me another name too!~
== BEREVAIN ~I did? (Erevain scratches his head a bit...) Yes, I apologize for calling you a child.~
== IMOENJ ~(Smiles) Thank you.~
== BEREVAIN ~(Smiles a bit and sighs) Thank you. You've always been a cheerful and kind companion despite my behavior. Thank you.~
== IMOENJ ~Well yeah, we can't all be grumblebutts. That wouldn't be much fun. (Pokes Erevain playfully.)~
== BEREVAIN ~(Laughs) I can see why you and <CHARNAME> have traveled together for so long.~
EXIT

CHAIN
IF ~Global("VP_BImoen2","LOCALS",11)~ THEN BEREVAIN C6
~I wanted to apologize to you for my earlier comments.~
DO ~SetGlobal("VP_BImoen2","LOCALS",12)~
== IMOEN2J ~(Stands up straight) And, exactly what would those comments be?~
== BEREVAIN ~And? What?~
== IMOEN2J ~You called me another name too!~
== BEREVAIN ~I did? (Erevain scratches his head a bit...) Yes, I apologize for calling you a child.~
== IMOEN2J ~(Smiles) Thank you.~
== BEREVAIN ~(Smiles a bit and sighs) Thank you. You've always been a cheerful and kind companion despite my behavior. Thank you.~
== IMOEN2J ~Well yeah, we can't all be grumblebutts. That wouldn't be much fun. (Pokes Erevain playfully.)~
== BEREVAIN ~(Laughs) I can see why you and <CHARNAME> have traveled together for so long.~
EXIT

CHAIN
IF ~Global("VP_BImoen","LOCALS",14)~ THEN BEREVAIN C7
~Despite everything, I know that you harbor some good feelings about your home of Candlekeep.~
DO ~SetGlobal("VP_BImoen","LOCALS",15)~
== IMOENJ ~Ya I do. It was a stuffy uptight place full of fun opportunities to pull pranks. But, it was home.~
== BEREVAIN ~My home was a giant maple tree. Filled with markings of my ancestors generations back until the founding of the Blacksheaf clan. There was laughter and play at every season of each year there. All of my siblings and cousins would play around it together. That tree housed, warmed, and fed us with its delicious syrup.~
== IMOENJ ~That sounds like a very happy childhood home.~
== BEREVAIN ~I would love to take you there and show it to you one day. I am sure the Evereskans would allow a savior of an elven city to visit with honors.~
== IMOENJ ~And I would love to visit it with you one day when the world does not require as much saving.~
== BEREVAIN ~That would be most wonderful.~
EXIT

CHAIN
IF ~Global("VP_BImoen2","LOCALS",14)~ THEN BEREVAIN C8
~Despite everything, I know that you harbor some good feelings about your home of Candlekeep.~
DO ~SetGlobal("VP_BImoen2","LOCALS",15)~
== IMOEN2J ~Ya I do. It was a stuffy uptight place full of fun opportunities to pull pranks. But, it was home.~
== BEREVAIN ~My home was a giant maple tree. Filled with markings of my ancestors generations back until the founding of the Blacksheaf clan. There was laughter and play at every season of each year there. All of my siblings and cousins would play around it together. That tree housed, warmed, and fed us with its delicious syrup.~
== IMOEN2J ~That sounds like a very happy childhood home.~
== BEREVAIN ~I would love to take you there and show it to you one day. I am sure the Evereskans would allow a savior of an elven city to visit with honors.~
== IMOEN2J ~And I would love to visit it with you one day when the world does not require as much saving.~
== BEREVAIN ~That would be most wonderful.~
EXIT

CHAIN
IF ~Global("VP_BMinsc","LOCALS",2)~ THEN BEREVAIN C9
~Minsc, would you consider Rashemen to be as cold as Icewind Dale?~
DO ~SetGlobal("VP_BMinsc","LOCALS",3)~
== BMINSC ~Beloved Rashemen was far colder than any puny Dale. Minsc had to use his beserker strength just to warm up Boo. Brr. This place is rather cold and Boo is freezing. Maybe this place is like Rashmen.~
== BEREVAIN ~Are you sure?~
== BMINSC ~What's that Boo? Yes. This area does remind me of home. Minsc would love to meet some mighty barbarian warriors here. Such mammoth warriors are an inspiration to all.~
== BEREVAIN ~Well, if we do run into any barbarians. I'll be glad to have you with me Minsc. You are a most formidable weapon.~
== BMINSC ~No. Boo is the most fearsome weapon. Evil be wary of his harp claws and pointy teeth!~
EXIT

CHAIN
IF ~Global("VP_BMinsc","LOCALS",5)~ THEN BEREVAIN C1q
~In Elven lands we have intelligent pets called Cooshees. They are often erroneously referred to as a breed of dogs by outsiders.~
DO ~SetGlobal("VP_BMinsc","LOCALS",6)~
== BMINSC ~Boo is an intelligent miniature giant space hamster which others foolishly refer to as a normal hamster.~
== BEREVAIN ~Hah, how do you know that Boo is intelligent?~
== BMINSC ~You are funny elf. Go ahead. Ask Boo any question. He is a very smart.~
== BEREVAIN ~Boo. Roll around.~
== BMINSC ~(Whispers to Boo...) See there he did.~
== BEREVAIN ~What are the days of the TEXITay?~
== BMINSC ~(Whispers to Boo...) Firstday, Seconday, Thirdday, Fourthday, Fifthday, Sixthday, Seventhday, Eigthday, Ninthday, Tenthday.~
== BEREVAIN ~Grrr. You are the the one reciting these answers. Not Boo!~
== BMINSC ~Haha. Erevain, it is not Minsc or Boo's fault that you do not speak Giant Space Hamster. Do no worry. We Minsc and Boo do not doubt your intelligence though.~
EXIT

CHAIN
IF ~Global("VP_BAerie","LOCALS",2)~ THEN BEREVAIN C2q
~Aerie. I'm sorry; I feel so sorry for you.~
DO ~SetGlobal("VP_BAerie","LOCALS",3)~
== BAERIE ~Thank you for your pity Erevain. It is hard, but I just have to make the best of the situation. I do have help though. Quayle, Baervan, <CHARNAME>, and now you Erevain.~
== BEREVAIN ~Aerie. You're a lovely woman and we here are all very lucky to have you traveling with us. I just can't wait to see what comes ahead!~
== BAERIE ~Erevain, you are so sweet. Come, let us continue on.~
EXIT

CHAIN
IF ~Global("VP_BAerie","LOCALS",5)~ THEN BEREVAIN C3q
~Aerie, you are beautiful.~
DO ~SetGlobal("VP_BAerie","LOCALS",6)~
== BAERIE ~Erevain, what is beauty?~
== BEREVAIN ~Beauty is what is desirous. What tantalizes the senses and brings that instant sense of awe.~
== BAERIE ~So, lust is beauty?~
== BEREVAIN ~Not quite. True beauty is something we're simply instantly attracted to; it is something we want to have or be around.~
== BAERIE ~So, beauty is lust.~
== BEREVAIN ~Hmm. I guess it is hard to separate two.~
== BAERIE ~Beauty is just a quality. Lust is just a way to appreciate that beauty in a way that is too much.~
== BEREVAIN ~I have a lust for life and if that is too much, so be it!~
== BAERIE ~Of that I am sure Erevain.~
EXIT

CHAIN
IF ~Global("VP_BNalia","LOCALS",2)~ THEN BEREVAIN C4q
~Nalia, I do not understand. How can you humans stand this food?~
DO ~SetGlobal("VP_BNalia","LOCALS",3)~
== BNALIA ~What do you mean Erevain?~
== BEREVAIN ~This food is just...hard to swallow. I can't believe that you all eat this regularly.~
== BNALIA ~This is just roasted meat! Elves do eat meat right?~
== BEREVAIN ~Sparingly, but yes. Ugh...~
== BNALIA ~What's the matter Erevain?~
== BEREVAIN ~I don't think my stomach can handle this roughness.~
EXIT

CHAIN
IF ~Global("VP_BNalia","LOCALS",5)~ THEN BEREVAIN C5q
~So, how long did you stay in De'Arnise Keep when you were young?~
DO ~SetGlobal("VP_BNalia","LOCALS",6)~
== BNALIA ~I'm not sure what you mean by that question, good elf.~
== BEREVAIN ~Were you not bored? Did you not grow tired of that stone fortress?~
== BNALIA ~Of course I did. Which is why I learned ways to sneak out of the walls many a time and in fact learned magic to aid me in my escapes.~
== BEREVAIN ~I was never so lucky. Even if I wanted to escape Evereska, I'd have been caught almost immediately by the Vale Guards.~
== BNALIA ~So you loved your home enough to not want to leave it. How is that unlucky?~
== BEREVAIN ~I suppose I may have tried to leave it if I knew that it weren't so well defEXITed.~
== BNALIA ~And, yet you have left it. After so many years. Do you miss it?~
== BEREVAIN ~Yes. I... No. I'm sorry. Let us continue. I can say no more.~
== BNALIA ~Alright, Erevain. As you wish.~
EXIT

CHAIN
IF ~Global("VP_BKeldorn","LOCALS",2)~ THEN BEREVAIN C6q
~Sir Keldorn. How can you stand to wear such bulky and orange armor? Don't you just wish to take it off immediately?~
DO ~SetGlobal("VP_BKeldorn","LOCALS",3)~
== BKELDOR ~This is my family armor, passed down from generation to generation. I honor them by wearing it and besides, I'm more nimble in it than you'd normally think.~
== BEREVAIN ~(Puts his hands on the armor and pulls up) But, it's still so weighty. How can you stand it?~
== BKELDOR ~Get your thieving hands off of me. This armor suits my family and I well enough. Not every armor is a shade of brown or green and elvenmade.~
== BEREVAIN ~But, they're so much more comfortable and beautiful don't you think?~
== BKELDOR ~I do not and prefer my own. A sure way to disappoint an elven thief is surely to place large heavy items in their paths. Good day to you.~
EXIT

CHAIN
IF ~Global("VP_BValygar","LOCALS",2)~ THEN BEREVAIN C7q
~Valygar, your stealth capabilities are impressive.~
DO ~SetGlobal("VP_BValygar","LOCALS",3)~
== BVALYGA ~I have also noticed that you seem to disappear fairly well Erevain.~
== BEREVAIN ~Thank you. As do you Valygar.~
== BVALYGA ~Who taught you such skills.~
== BEREVAIN ~I learned it from the Greycloaks. Elves are the greatest masters of stealth. The cloak of elvenkind is highly sought by all races.~
== BVALYGA ~Hmph. We'll see. I have heard of that cloak. Do you have one?~
== BEREVAIN ~No, and you aren't getting one either.~
== BVALYGA ~I don't need it. My stealth is well enough developed. Come let us move on.~
EXIT

CHAIN
IF ~Global("VP_BValygar","LOCALS",5)~ THEN BEREVAIN C8q
~Come Valygar, with your aptitude you would make an excellent mage. Let me teach you a simple spell.~
DO ~SetGlobal("VP_BValygar","LOCALS",6)~
== BVALYGA ~Another time perhaps.~
== BEREVAIN ~Come now Valygar. It's a waste for a man with so much magic in his veins do deny such a capability.~
== BVALYGA ~Indulging in my magical heritage is what worries me the most.~
== BEREVAIN ~I remain ready to teach when your courage surfaces.~
== BVALYGA ~I thank you Erevain.~
EXIT

CHAIN
IF ~Global("VP_BMazzy","LOCALS",2)~ THEN BEREVAIN C9q
~Mazzy, you are capable warrior.~
DO ~SetGlobal("VP_BMazzy","LOCALS",3)~
== BMAZZY ~Thank you, good Erevain. But tell me what it is like to be an Elven Knight.~
== BEREVAIN ~Why do you ask my lady? Do you think me a knight?~
== BMAZZY ~Almost good sir, you merely need a boost to yet become one should you wish. Surely though, you knew of some from your homeland?~
== BEREVAIN ~Yes, there were the Swords of Evereska, a group of Fighters, Wizards, and Paladins. I'm sure you would like them.~
== BMAZZY ~I would! Tell me of them, what are they like? What tests and challenges do you have to face to join them?~
== BEREVAIN ~I'm sorry Mazzy. Let's talk about about something else.~
== BMAZZY ~Good Erevain, I meant no offense. What was it that I said?~
== BEREVAIN ~Enough, enough. No more.~
EXIT

CHAIN
IF ~Global("VP_BMazzy","LOCALS",5)~ THEN BEREVAIN C1w
~Mazzy, do halflings ever dance in battle?~
DO ~SetGlobal("VP_BMazzy","LOCALS",6)~
== BMAZZY ~What strange Elvish question is this? Why would my kind dance in battle?~
== BEREVAIN ~Sometimes it's entertaining to add additional twirls, flips, and thrusts while fighting your enemies.~
== BMAZZY ~I assure you that halflings fight very hard to defEXIT themselves, their homes, and their families, they are not the least concerned about using such "flair".~
== BEREVAIN ~Halflings are so agile though! Not even a little somersault?~
== BMAZZY ~Only if absolutely necessary.~
== BEREVAIN ~I'd love to see you perform one, Mazzy!~
== BMAZZY ~Another time Erevain.~
EXIT

CHAIN
IF ~Global("VP_BJaheira","LOCALS",2)~ THEN BEREVAIN C2w
~Jaheira, have you ever wished that you were a full elf?~
DO ~SetGlobal("VP_BJaheira","LOCALS",3)~
== BJAHEIR ~Why would I wish to be anything than what I am?~
== BEREVAIN ~Well, you wouldn't be a half-breed. You would be free to roam the elven strongholds and city without escort.~
== BJAHEIR ~Stop, I care not for this arrogant prattle. Speak no more to me of this.~
EXIT

CHAIN
IF ~Global("VP_BJaheira","LOCALS",5)~ THEN BEREVAIN C3w
~Jaheira, would you say that half-elves are more likely to marry than full elves?~
DO ~SetGlobal("VP_BJaheira","LOCALS",6)~
== BJAHEIR ~Again, with this strain. What compels you to ask such arrogant questions? No, I do not believe half-elves marry more than elves. Have you ever been marriied.~
== BEREVAIN ~I... I do not want to answer that question.~
== BJAHEIR ~Oh mighty Erevain, why do you avoid the question?~
== BEREVAIN ~I simply do not want to answer it! It is inane.~
== BJAHEIR ~Oh, such a wise knowledgeable figure cannot answer a simple question.~
== BEREVAIN ~Grr...That's hardly fair Jaheira. No more questions! Let us be off.~
== BJAHEIR ~Yes, it is one to sling such barbs; it is another to receive them.~
EXIT

CHAIN
IF ~Global("VP_BYoshimo","LOCALS",2)~ THEN BEREVAIN C4w
~Yoshimo, what is this gaze?~
DO ~SetGlobal("VP_BYoshimo","LOCALS",3)~
== BYOSHIM ~I have watched you work Erevain and I am most impressed.~
== BEREVAIN ~Thank you, but what impressed you so much?~
== BYOSHIM ~Your sly skill of finding snares. I do such work to hide mine, and yet you consistently seem to find those of others. How do your eyes see so well?~
== BEREVAIN ~Natural skill enhanced by magic.~
== BYOSHIM ~Hah. Without such magics you are an inferior rogue no?~
== BEREVAIN ~Perhaps. I have much to learn and would do well to learn from one such as yourself. You display such skill in your trapmaking. I have no idea how you accomplish what you do.~
== BYOSHIM ~Well, Young Mantis. Your training begins now.~
== BEREVAIN ~I look forward to it.~
EXIT

CHAIN
IF ~Global("VP_BYoshimo","LOCALS",5)~ THEN BEREVAIN C5w
~Yoshimo, show me some of your tricks.~
DO ~SetGlobal("VP_BYoshimo","LOCALS",6)~
== BYOSHIM ~Young Mantis, come I have some tricks to show you that the tourists love... (Flips in the air with a mid-air kick before landing.) Hi-yo-cha!~
== BEREVAIN ~Alright, let me try... (Flips in the air with an awkward kick.) Hee-Oh-... (Erevain hits his face on the ground.)~
== BYOSHIM ~Ooh. That will leave a mark. Poor Mantis. Well. Best to get up and try again! Come, come Young Mantis!~
EXIT

CHAIN
IF ~Global("VP_BAnomen","LOCALS",2)~ THEN BEREVAIN C6w
~A Knight of the Order of the Radiant Heart eh? What compels you so much to join a lanky old organization like that?~
DO ~SetGlobal("VP_BAnomen","LOCALS",3)~
== BANOMEN ~Watch your tongue elf. The Order is a most heroic organization that even rogues like yourself should be jealous of. Many a great deed hath been done its brave knights.~
== BEREVAIN ~The Swords of Evereska have prospered for far longer and served many a more people.~
== BANOMEN ~Yes, I've heard of them. Noble deeds I'm sure, but for elves only. The Order of the Radiant Heart works for the good of all.~
== BEREVAIN ~The Swords of Evereska have done many a good as well. And actively seek out to help others.~
== BANOMEN ~Other elves that is. If you can enter Evereska's Hidden Vale, which non-elves cannot visit. The Order of the Radiant Heart is open to all in seeking justice. Good intentions from your elven counterparts perhaps, but not in deeds.~
== BEREVAIN ~(Erevain remains silent.)~
== BANOMEN ~Hmm. Thank you Erevain for your acknowledgement.~
EXIT

CHAIN
IF ~Global("VP_BAnomen","LOCALS",5)~ THEN BEREVAIN C7w
~Yes, Anomen?~
DO ~SetGlobal("VP_BAnomen","LOCALS",6)~
== BANOMEN ~Watch yourself there. You look a bit rough after our last battle.~
== BEREVAIN ~Thank you Anomen for your help. You have yet a few skills that I do not possess. You are a worthy ally.~
== BANOMEN ~I thank you Erevain. Many of my skills come from Helm's will and blessing.~
== BEREVAIN ~Nonetheless, still impressive. Despite my worship of Corellon, I have never been able to receive the divine magics.~
== BANOMEN ~With just a little more piety, you could focus on a whole other set of abilities.~
== BEREVAIN ~Oh no. It is difficult enough dividing my current focus already. Besides, I have you friEXIT to aid me in that department.~
== BANOMEN ~That you do Erevain. It is an honor to serve beside you.~
EXIT

CHAIN
IF ~Global("VP_BJan","LOCALS",2)~ THEN BEREVAIN C8w
~Yes, Jan?~
DO ~SetGlobal("VP_BJan","LOCALS",3)~
== BJAN ~So, you're from Evereska Erevain?~
== BEREVAIN ~Yes I am.~
== BJAN ~Well, I've been to Evereska before with my second great uncle once removed Numit.~
EXIT

CHAIN
IF ~Global("VP_BJan","LOCALS",5)~ THEN BEREVAIN C9w
~Jan, did you want to ask something?~
DO ~SetGlobal("VP_BJan","LOCALS",6)~
== BJAN ~So, how is it being an elf Erevain?~
== BEREVAIN ~I am fine being an elf Jan.~
== BJAN ~My third great uncle Nesmot was an elf for a long time. His large floppy ears made all the elven ladies swoon over and over after him. Unfortunately, male elves jealous of his ears stole his earwax one day and that was the EXIT of his run.~
== BEREVAIN ~Yes, elves without earwax is a great tragedy.~
== BJAN ~It was. Nesmot's ears grew smaller and smaller and less pointy and less pointy. His confidence shrunk and so did his height. And, that's how Nesmot came back to the Jansens. He just didn't have the earwax to make it as an elf.~
== BEREVAIN ~Well. What an amazing story.~
== BJAN ~Oh there's more to Nesmot's journey than that especially the time he met a mucousy medusae.~
== BEREVAIN ~I can't wait.~
EXIT

CHAIN
IF ~Global("VP_BJan","LOCALS",8)~ THEN BEREVAIN C1e
~Yes, Jan?~
DO ~SetGlobal("VP_BJan","LOCALS",9)~
== BJAN ~I never got to tell you the story of my third great uncle Nesmot and the mucousy medusae did I?~
== BEREVAIN ~No Jan. We are all really longing to hear it.~
== BJAN ~Well, be long no more elven friEXIT. You see Nesmot had just a regular inferior nose that most races like yourself have.~
== BEREVAIN ~Excuse me?~
== BJAN ~It's simply a fact that Gnomes truly have the best schnozzes in the whole crystal sphere. Nesmot's nose unfortunately could not make par. After a bit too much to drink, Nesmot EXITed up in the clutches of a medusa and a maedar. The snake lovers got into an argument and upon seeing Nesmot's puny nose and the maedar's handsome one, the medusa wanted to punish her mate. The medusa quickly turned them both into stone, chopped their noses off and switched them out before returning them to flesh again. The maedar was weepingly furious but ol Nesmot was dancing as happy as could be. His new giant green nose was the talk of the town and all the gnomish ladies now swooned for him.~
== BEREVAIN ~Wait what about the mucous?~
== BJAN ~Oh yes, well you see that maedar nose while handsome had a real sneezing problem. Nesmot gathered all the mucous and donated it to others and they too saw their noses grow and grow and grow.~
== BEREVAIN ~Big and green?~
== BJAN ~At first. Though the green color eventually muted out. The big noses spread like ketchup seeds and that's how gnomes got their beautiful schnozzes.~
EXIT

CHAIN
IF ~Global("VP_BHaerDalis","LOCALS",2)~ THEN BEREVAIN C2e
~Yes, HaerDalis~
DO ~SetGlobal("VP_BHaerDalis","LOCALS",3)~
== BHAERDA ~Tell me Erevain, in what ways do elves of your ilk occupy themselves with acting and the performing arts?~
== BEREVAIN ~We have several elven festivals where actors and actresses play out the parts of gods in ancient tales or as important elven monarchs and figures of the past.~
== BHAERDA ~What about new plays? New stories? New tales?~
== BEREVAIN ~I can't say those are generally told in the format that you're most fond of.~
== BHAERDA ~How unfortunate. When did elves become so boring. Wouldn't you like to be able to play a king? A beggar, a guard, a vigilante, a lover?~
== BEREVAIN ~Elves live a lot longer than most humanoids Haer'Dalis. We already get to play so many roles in a lifetime.~
== BHAERDA ~But, you can't play all of them.~
== BEREVAIN ~That's what magic is for. Become a man or a woman. Or a human or halfling and so forth.~
== BHAERDA ~Hmm. Most peculiar. Even such magics cannot substitute the immense feeling of truly becoming something other than yourself. You should take some time and try art of acting yourself.~
== BEREVAIN ~Perhaps I shall.~
EXIT

CHAIN
IF ~Global("VP_BHaerDalis","LOCALS",5)~ THEN BEREVAIN C3e
~HaerDalis, did you want to ask something?~
DO ~SetGlobal("VP_BHaerDalis","LOCALS",6)~
== BHAERDA ~So my Leopard, how dost thou fare on this fine day.~
== BEREVAIN ~Leopard? Really? Why am I a leopard?~
== BHAERDA ~You are quick, light, and graceful, but also a deadly enemy skilled in ambushes and quick strikes!~
== BEREVAIN ~Well thank you Haer'Dalis. I shall have to find an animal to call you by.~
== BHAERDA ~But, I have such a name already, Sparrow.~
== BEREVAIN ~I don't think that name suits you well.~
== BHAERDA ~I've played the Sparrow for a long time!~
== BEREVAIN ~I think you'd be much better as a Black-capped Chickadee. A confused darkly bird that doesn't know what it is.~
== BHAERDA ~That is much too long a name! No, no no! Sparrow is my animal!~
== BEREVAIN ~As you wish.~
EXIT

CHAIN
IF ~Global("VP_BCernd","LOCALS",2)~ THEN BEREVAIN C4e
~Cernd, did you want to ask something?~
DO ~SetGlobal("VP_BCernd","LOCALS",3)~
== BCERND ~I have always wondered why so few elves find their calling within druidic circles.~
== BEREVAIN ~I suppose that's because elves already have a close tie to nature.~
== BCERND ~I suppose many races do, but unlike many others they weave so much of their life and magic into preserving and enhancing their natural surroundings.~
== BEREVAIN ~Well...er....um...~
== BCERND ~I've heard many tales of elven cities. So wondrous! Such an exquisite testament to nature's beauty!~
== BEREVAIN ~Cernd.. I think I...~
== BCERND ~I know! You have likely seen such cities in your life before. Surely, compared to those, most other locales must be so bland! Erevain, wait, why are you leaving?~
EXIT

CHAIN
IF ~Global("VP_BCernd","LOCALS",5)~ THEN BEREVAIN C5e
~Yes, Cernd?~
DO ~SetGlobal("VP_BCernd","LOCALS",6)~
== BCERND ~Out of all the talents you could have developed. Why did you never develop one for nature's magic?~
== BEREVAIN ~I don't know Cernd. Why didn't you ever develop a talent for egg balancing?~
== BCERND ~I'm being serious Erevain. The magic that druids use is very special and I'm surprised that someone who has spent so much time in their life being around nature doesn't interest in its inmost wondrous workings.~
== BEREVAIN ~Oh, I am being serious, Cernd. Look at me! (Balances an egg on his nose with his head lifted up while standing on one foot.) Pretty impressive huh?~
== BCERND ~Oh never mind.~
EXIT

CHAIN
IF ~Global("VP_BKorgan","LOCALS",2)~ THEN BEREVAIN C6e
~Yes, Korgan?~
DO ~SetGlobal("VP_BKorgan","LOCALS",3)~
== BKORGAN ~So Erevain, how many elves can ya scewer o'er a fire?~
== BEREVAIN ~Leave me be with your foul humor.~
== BKORGAN ~Ah come on. Have'a sense of humor. How many elves can ya scewer o'er a fire?~
== BEREVAIN ~(Sigh) I don't know.~
== BKORGAN ~Not many 'cause they ain't got much meat on'em! Har! Har! Har!~
== BEREVAIN ~That's both crude and unfunny.~
== BKORGAN ~Bah, you ain't got any better.~
== BEREVAIN ~None of your kind surely.~
EXIT

CHAIN
IF ~Global("VP_BKorgan","LOCALS",5)~ THEN BEREVAIN C7e
~Korgan, did you want to ask something?~
DO ~SetGlobal("VP_BKorgan","LOCALS",6)~
== BKORGAN ~How do ya like my ears, elf!~
== BEREVAIN ~Ugh. They don't match your color.~
== BKORGAN ~That's true I s' pose. Still I picked them myself an prettied them up as best as I could.~
== BEREVAIN ~You... got those from living drow didn't you?~
== BKORGAN ~Well, they weren't quite living after my axe tore straight through their gullet!~
== BEREVAIN ~Yes, I think I will take my leave now.~
== BKORGAN ~Bah. You tain't no fun! You of all races should be'a happy ta see dead drow ears!~
EXIT

CHAIN
IF ~Global("VP_BKorgan","LOCALS",8)~ THEN BEREVAIN C8e
~Korgan, stop staring at me!~
DO ~SetGlobal("VP_BKorgan","LOCALS",9)~
== BKORGAN ~Do you know why I don't like elves.~
== BEREVAIN ~Because we're refined, elegant, and articulate unlike you Korgan?~
== BKORGAN ~Na. It's cause you're humorless spinless fools who don't have anything useful to say that isn't wrapped up in some poff'ery of undeserved importance.~
== BEREVAIN ~Hah. Elves are probably one of the most fun loving races out there. Singing, dancing, music, and drinking are things that every elf loves.~
== BKORGAN ~Drinking? Bah. Those pathetic Elven wines don't taste right or do anything for real intoxication.~
== BEREVAIN ~Yes, I suppose dwarves like you only care for drinking and not for anything else remotely interesting. Take a look at these moves. (Twists around in a rapid spinning motion, flips over landing with feet angled toward the sky, clicks heels together while raising one arm to the side and another straight up) Woo! Now that is a dance move!~
== BKORGAN ~Pardon while I go salt my eyes.~
EXIT

CHAIN
IF ~Global("VP_BViconia","LOCALS",2)~ THEN BEREVAIN C9e
~Yes, Viconia?~
DO ~SetGlobal("VP_BViconia","LOCALS",3)~
== BVICONI ~So, tell me lost little elf. Why is it again that you left home so long ago? Mommy and Daddy weren't nice to you?~
== BEREVAIN ~You Drow are a mockery of everything decent. Why do you purposefully seek to torment me like this?~
== BVICONI ~Touched a soft nerve have I, poor darthiir? I'll try to be more careful about your delicate nature.~
== BEREVAIN ~Don't speak to me again, saurar! If I have to use a spell to hide from you, so be it.~
== BVICONI ~I'll see you hiding, poor elfling. Drow eyes see clearly in the darkness.~
== BEREVAIN ~How exactly does that work? One must have light in order to see!~
== BVICONI ~I shall reveal no such secrets to you, darthiir.~
== BEREVAIN ~I shall find out soon enough, saurar!~
EXIT

CHAIN
IF ~Global("VP_BEdwin","LOCALS",2)~ THEN BEREVAIN C11
~Edwin, stop staring at me!~
DO ~SetGlobal("VP_BEdwin","LOCALS",3)~
== BEDWIN ~Tell me my confused companion. Why do you spEXIT your talents in three directions? Wouldn't it be ease your monkey brain to focus on fewer EXITeavors.~
== BEREVAIN ~I never really fit into just one category. I got bored being just a Fighter or just a Mage or just a Thief. I found that I had multiple aptitudes. Don't you get tired of doing the same thing Edwin?~
== BEDWIN ~The same thing?! A Red Wizard does far more than just one thing! A Conjurer does far more than than just one thing!~
== BEREVAIN ~Yes, but you just summon more things right? A few more hobgoblins, an extra ogre here and there.~
== BEDWIN ~(These miserable simians know nothing.) Your knowledge of magic is so fractured, you're likely to throw your sword thinking that's casting a spell.~
== BEREVAIN ~You're right Edwin. I really am just so scatterbrained that I can't properly understand magic.~
== BEDWIN ~Oooh. You are a little smarter than I thought. Perhaps you can graduate from gorilla to orangutan.~
== BEREVAIN ~Hey, Edwin, what's that over there?~
== BEDWIN ~Does your small brain think that I will actually fall for that trick? (Always with these pompous monkeys.)~
== BEREVAIN ~Actually you already have. Look behind you.~
== BEDWIN ~You senile simian, I will not fall for... My Necklace! Why is it on the ground!~
== BEREVAIN ~Actually it's right here in my pocket see?~
== BEDWIN ~GAH! Give me both of those! Which one is the real one! (Thieving monkeys. I will cut their little digits off one by one.)~
EXIT

CHAIN
IF ~Global("VP_BEdwin","LOCALS",5)~ THEN BEREVAIN C12
~So Edwin, why become a Conjurer? Why not an Invoker or Transmuter for instance?~
DO ~SetGlobal("VP_BEdwin","LOCALS",6)~
== BEDWIN ~A regular mage? (Pathetic simple simians unable to comprehEXIT.) A Conjurer is anything but irregular. Truly valuable is a specialist who can complete their magic to its highest form. Not some pathetic generalist who isn't good at anything.~
== BEREVAIN ~I take offense to that Edwin. I am quite an accomplished good mage.~
== BEDWIN ~Bah. (Imbecilic monkeys thinking they understand the Art.) Your powers are even more diluted! I would gladly take any other mage, even a pathetic generalist, instead of you.~
== BEREVAIN ~My power is far more than the sum of my individual parts as you should already know Edwin. And perhaps I'll be a little less generous protecting you next time.~
== BEDWIN ~I do not need your protection elf. I am well powerful enough on my own.~
== BEREVAIN ~Then why do stand in the back Edwin? I can just as well lead and bear the front assaults.~
== BEDWIN ~Yes, you are right. Powerful Erevain lead away. (Let the simple simian bear the harm instead of me.)~
EXIT

CHAIN
IF ~Global("VP_BSarevok","LOCALS",2)~ THEN BEREVAIN C13
~So Sarevok, have any regrets in your life?~
DO ~SetGlobal("VP_BSarevok","LOCALS",3)~
== BSAREV25 ~I have few regrets and will not share them with the likes of you.~
== BEREVAIN ~Come now Sarevok. How can you learn and grow if you don't talk about our mistakes.~
== BSAREV25 ~It is beyond pointless to discuss what could have been instead of what is.~
== BEREVAIN ~Pointless perhaps, but you didn't say that you were without regrets.~
== BSAREV25 ~Leave me be elf. I have no use for your pretentious prattling nor would I share such things with your intrusive ears.~
== BEREVAIN ~But Sarevok are you...~
== BSAREV25 ~LEAVE ME BE ELF!~
EXIT

CHAIN
IF ~Global("VP_BSharteel","LOCALS",2)~ THEN BEREVAIN C14
~Yes, Shar-Tell?~
DO ~SetGlobal("VP_BSharteel","LOCALS",3)~
== BSHART ~Do not look my way elfling.~
== BEREVAIN ~I'm not looking your way at all.~
== BSHART ~I tolerate your pathetic elfhood only because of <CHARNAME>. Cross the line and your gullet will be spewed tenfold over.~
EXIT

CHAIN
IF ~Global("VP_BSharteel","LOCALS",5)~ THEN BEREVAIN C15
~Tell me of your heritage Shar-Teel. You came from Baldur's Gate, yes?~
DO ~SetGlobal("VP_BSharteel","LOCALS",6)~
== BSHART ~Ask someone else Erevain. I do not talk to poor male elflings.~
== BEREVAIN ~Rude amazons don't have much clout in greater Faerun. I am sure that everyone else tires of hearing your rubbish threats.~
== BSHART ~Keep your pathetic elfling mouth shut or I'll cut it out of you, <CHARNAME> willing or not.~
== BSHART ~I would skewer my own family for such words, much less so an imbecile as you.~
EXIT

CHAIN
IF ~Global("VP_BSharteel","LOCALS",8)~ THEN BEREVAIN C16
~Shar-Teel, what's the matter?~
DO ~SetGlobal("VP_BSharteel","LOCALS",9)~
== BSHART ~I told you before to place your pathetic gaze elsewhere. This is your last warning elfling!~
== BEREVAIN ~Oh just shut up! I long tire of your baseless threats. I wasn't looking your way and even the most perverted Calimshite would never be tempted to look your way.~
== BSHART ~That's it! (Shar-Teel kicks Erevain in the groin).~
== BEREVAIN ~Aaagh!~
== BSHART ~Next time, you'll be dead.~
== BEREVAIN ~I can attack more locations than just the front.~
EXIT

CHAIN
IF ~Global("VP_BDar","LOCALS",2)~ THEN BEREVAIN C17
~How do you feel about your people Dar?~
DO ~SetGlobal("VP_BDar","LOCALS",3)~
== BDAR ~My people?~
== BEREVAIN ~Yes, orcs. Those savages that pillage and kill civilized beings including the elves, my people.~
== BDAR ~I am unlike those orcs. I was raised by priests of Ilmater to be kind, just, and merciful.~
== BEREVAIN ~A spider is still a spider and cannot overcome its nature.~
== BDAR ~I hope to prove my nature as a noble one.~
EXIT

CHAIN
IF ~Global("VP_BDar","LOCALS",5)~ THEN BEREVAIN C18
~How many times have you beaten someone or stolen property Dar?~
DO ~SetGlobal("VP_BDar","LOCALS",6)~
== BDAR ~I do not understand. Ilmater forbids such behavior.~
== BEREVAIN ~That doesn't matter. Orcs are murderous thieving mongrels. Thugs - all of them. So I ask you again, how many times have you beaten someone or stole property?~
== BDAR ~I have never stolen anything nor harmed any innocents.~
== BEREVAIN ~A spider is still a spider.~
EXIT

CHAIN
IF ~Global("VP_BDar","LOCALS",8)~ THEN BEREVAIN C19
~You've been very loyal to the group Dar.~
DO ~SetGlobal("VP_BDar","LOCALS",9)~
== BDAR ~Such is the teaching of Ilmater and my nature.~
== BEREVAIN ~(Thinks a moment) Yes, perhaps you are different. I thank you Dar.~
== BDAR ~Your welcome. As always, I shall serve to do good in the world.~
EXIT

CHAIN
IF ~Global("VP_BAccalia","LOCALS",2)~ THEN BEREVAIN C21
~Do Tempurans have any major festivals that they celebrate?~
DO ~SetGlobal("VP_BAccalia","LOCALS",3)~
== BACCALI ~Why do you ask such a question Erevain?~
== BEREVAIN ~I miss the Lateu'quor. It roughly translates in the common tongue as the Forest Communion of the Crescent Moon. It has the most beautiful sight you'd ever see. Exquisite dancing, drinking, music, and art of all kinds. Rarely, Corellon bestows a special gift at these celebrations: A piece of Art, a Harp, or even a suit of Armor.~
== BACCALI ~My, that's impressive.~
== BEREVAIN ~It is. In fact, this sword was one of the gifts on one of those rare nights. The Feywarden of Corellon chose me to receive it.~
== BACCALI ~Out of all the elves of Evereska, why were you chosen for that honor?~
== BEREVAIN ~I do not know. To this day I do not know. My brothers and cousins were so jealous. The sword has served me well though.~
== BACCALI ~I envy you Erevain of Corellon; I hope that Tempus will honor me in such a way one day.~
== BEREVAIN ~I have no doubt that He shall!~
EXIT

CHAIN
IF ~Global("VP_BAccalia","LOCALS",5)~ THEN BEREVAIN C22
~Yes, Accalia?~
DO ~SetGlobal("VP_BAccalia","LOCALS",6)~
== BACCALI ~Corellon seemed to favor you for some reason.~
== BEREVAIN ~True, yes.~
== BACCALI ~Yet, how many more priests of Corellon never received his direct favor in that way.~
== BEREVAIN ~Yes, I suppose. But, the gods can't favor all of their servants can they? Else, favored wouldn't mean anything right?~
== BACCALI ~But why is it that many times the god's most devoted servants are not among the god's first chosen?~
== BEREVAIN ~I'm sure that Tempus favors plenty of his priests. Why do you doubt that Tempus does not favor you? You seem to have done quite well. Tempus does grant you spells does he not?~
== BACCALI ~He does. I suppose that I can be impatient at times. I want to do great things to honor Tempus and his church.~
== BEREVAIN ~I'm sure that you shall and I shall be here to assist.~
== BACCALI ~(Smiles) Thank you Erevain.~
EXIT

CHAIN
IF ~Global("VP_BAccalia","LOCALS",8)~ THEN BEREVAIN C23
~Accalia, we talked before, but you never told me about the Tempuran festivals.~
DO ~SetGlobal("VP_BAccalia","LOCALS",9)~
== BACCALI ~Once per year, Tempurans celebrate the Feast of the Moon. On that day under the full moonlight, we have a large feast accompanied by a set of rituals and prayers honoring the fallen warriors and paying tribute to the fallen warriors to come. Sometimes the children put on plays reliving famous battles.~
== BEREVAIN ~That sounds gruesome.~
== BACCALI ~(Glares at Erevain) The weapons are blunted and precautions are made to ensure that none of the child actors are hurt. (Smiles) In fact, one year as a child I got to play as Tempus himself fully hidden and concealed behind a helmet and riding on two ponies representing his steeds, Veiros and Deiros. It was frightening to be wearing such heavy armor and having to stand with one foot on each of the two ponies, but was nonetheless thrilling and great fun.~
== BEREVAIN ~I suppose that sounds like fun, but you couldn't play as any famous female warrior or heroine?~
== BACCALI ~The boy who was supposed to portray Tempus hurt his back and we needed a quick replacement. Since I was about the same stature, they chose me for the role. Tempus has never been known to speak directly on Faerun. So, the role was silent which also suited me well.~
== BEREVAIN ~That's nice, but I still think that it's a shame that your "fun" had to involve you becoming a man.~
== BACCALI ~It is a great honor to portray Tempus. Tempus is the most sublime heroic deities that Faerun who has armed and defEXITed these lands for hundreds of years. I would gladly become Tempus, man or not and am honored to have him as my deity.~
== BEREVAIN ~And you thought that you weren't favored? It seems that Tempus is equally fortunate to have such a devoted priestess as you.~
== BACCALI ~(Laughs) You are right Erevain. I should be more mindful of Tempus's blessings.~
== BEREVAIN ~Absolutely, afterall, he brought us together with Hrothgar and <CHARNAME>. I'm sure we'll find even greater glories that you can pen in Tempus's honor.~
== BACCALI ~(Smiles) Yes indeed. Let us continue.~
EXIT

CHAIN
IF ~Global("VP_BHrothgar","LOCALS",2)~ THEN BEREVAIN C24
~Why out of all the Ten Towns, did you choose Easthaven, Hrothgar?~
DO ~SetGlobal("VP_BHrothgar","LOCALS",3)~
== BHROTH ~Easthaven seemed the best fit for me. It was and still is quite comfortable with enough friEXITly neighbors. Why have you Erevain never settled down in all your travels?~
== BEREVAIN ~I love to travel. I want to see all of Abeir-Toril across and within.~
EXIT

CHAIN
IF ~Global("VP_BHrothgar","LOCALS",5)~ THEN BEREVAIN C25
~Where did you get your unique crossbow, "Big Shoota" from?~
DO ~SetGlobal("VP_BHrothgar","LOCALS",6)~
== BHROTH ~I got it while saving a Gnome family from Nelanther pirates.~
== BEREVAIN ~Tell me more, I'd love to hear the tale.~
== BHROTH ~Perhaps another time. I do not feel much in the mood at the moment.~
EXIT

CHAIN
IF ~Global("VP_BLeina","LOCALS",2)~ THEN BEREVAIN C26
~How did you acquire those items?~
DO ~SetGlobal("VP_BLeina","LOCALS",3)~
== BLEINA ~What items are you referring to?~
== BEREVAIN ~The moonblade and the elven chain. Whom did you steal or kill to retrieve those?~
== BLEINA ~Why do you get off accusing people of such horrible things? I have done no such thing.~
== BEREVAIN ~Those items are not shared with non-elves. They are created specifically for the Tel-quessir, not half-breeds like you.~
== BLEINA ~Such vile rudeness Erevain. You are no better than the majority of humans who persecute me.~
== BEREVAIN ~Call me what you wish, but I have no patience for the theft of elven artifacts.~
== BLEINA ~Leave me alone! Do not speak to me of this again. It is a wonder how <CHARNAME> tolerates your poison tongue.~
EXIT

CHAIN
IF ~Global("VP_BLeina","LOCALS",5)~ THEN BEREVAIN C27
~You never did tell me how you got that moonblade and armor.~
DO ~SetGlobal("VP_BLeina","LOCALS",6)~
== BLEINA ~I told you not to speak to me of these things again! Why do you torment me so! I have done nothing wrong.~
== BEREVAIN ~If you have done nothing wrong then why can't you say how you got them! You wouldn't want family heirlooms in unlawful hands would you!~
== BLEINA ~These items were given to me after my mother's death! I...didn't know about it for many months. They are among the few remnants that are left of my mother's life.~
== BEREVAIN ~Yes, it does seem that the moonblade has not rejected you. Else, you would not be able to even lift it. Your ability to wear that armor does seem to suggest a familial fit. Your mother was an elf?~
== BLEINA ~Yes Erevain.~
== BEREVAIN ~It is still highly irregular for such precious items to transfer to a half-breed. But, your words are likely true.~
== BLEINA ~Would you stop calling me a half-breed! I am a full-blooded woman with a heart, mind, and soul! I used to have loving parents who EXITured a lot of hardship and you would do well to remember that.~
== BEREVAIN ~I... have a family as well. I am sorry. Let us be off.~
EXIT


CHAIN
IF ~Global("VP_BMelora","LOCALS",2)~ THEN BEREVAIN C28
~Whta's the matter, Melora?~
DO ~SetGlobal("VP_BMelora","LOCALS",3)~
== BMELORA ~I'm not sure what to think of you Erevain. A corrupt male mage like most of them, but a skilled thief as well.~
== BEREVAIN ~If you weren't so closed-minded, you'd benefit from the Art and aid your own rogue skills.~
== BMELORA ~I don't need any of that filthy magic to help me. I do more than well enough on my own.~
== BEREVAIN ~Then I am sure you will remain small in more ways than one.~
== BMELORA ~Watch your tongue elf. I would chuck any undeserving male to the Nine Hells if they deserved it. Don't push yourself further into that category.~
== BEREVAIN ~Oh, Erevan Ilesere, hide me from this insane halfling!~
EXIT

CHAIN
IF ~Global("VP_BMelora","LOCALS",5)~ THEN BEREVAIN C29
~Yes, Melora?~
DO ~SetGlobal("VP_BMelora","LOCALS",6)~
== BMELORA ~You did fairly well in that last battle.~
== BEREVAIN ~Thank you.~
== BMELORA ~For filthy male mage that is.~
== BEREVAIN ~You surely have a strong grudge against male mages for reasons totally alien!~
== BMELORA ~It's not my fault that men betray their lovers and use magic to hide their misdeeds.~
== BEREVAIN ~I have done no such thing.~
== BMELORA ~Sure ya haven't. No one believes liars who charm ladies with their magic and then just as the spell fades away tosses those same ladies away.~
== BEREVAIN ~There is room for a healthy awareness of magic. I am sorry if such things happened to you.~
== BMELORA ~Sorry doesn't do a lick for me Erevain. What my father did to my mother is long past.~
== BEREVAIN ~If we ever find your father, I will aid you in your revenge.~
== BMELORA ~Thank you Erevain.~
EXIT

CHAIN
IF ~Global("VP_BTaffic","LOCALS",2)~ THEN BEREVAIN C31
~Yes, Taffic?~
DO ~SetGlobal("VP_BTaffic","LOCALS",3)~
== BTAFFIC ~Why did you say earlier that I could not become an elf? It is my destiny to become great!~
== BEREVAIN ~A N-Tel-Quess cannot become a Tel-quessir~
== BTAFFIC ~What in Toril is that supposed to mean.~
== BEREVAIN ~(Sigh) A gnome cannot simply become an elf.~
== BTAFFIC ~How closed-minded of you! Such magics are very possible! We must find a mage with the proper skill.~
== BEREVAIN ~Taking the form of an elf does not make you an elf. The elven spirit and soul are alien things to that of other races.~
== BTAFFIC ~Well, perhaps I shall find a suitable elven spirit and soul to complement my form and you will help me.~
== BEREVAIN ~I most certainly will not. To steal those from a living elf or to petition for a new soul and spirit to go to a N-Tel-Quess would be an abomination to Corellon.~
== BTAFFIC ~You're just greedy, wanting all the greatness for yourself. <CHARNAME> will help me and I will become great. You just watch!~
EXIT

CHAIN
IF ~Global("VP_BTaffic","LOCALS",5)~ THEN BEREVAIN C32
~A demon? Are you unmistakably convinced?~
DO ~SetGlobal("VP_BTaffic","LOCALS",6)~
== BTAFFIC ~Of course. I was clearly meant to become great through evolving into a powerful demon.~
== BEREVAIN ~Demons are the tortured souls of horrific mortals transformed into an evil nightmarish form and doomed to serve as pawns of their cruel overlords. Why in the Gray Waste would you want that for yourself?~
== BTAFFIC ~What are you talking about I just want to become a demon, not actually die!~
== BEREVAIN ~Don't you think there might be some problem in trying to become a demon without any of the drawbacks?~
== BTAFFIC ~Such foolishness Erevain. You have no confidence in the Art you yourself practice. You stay a weak elf Erevain; I'm going to become a powerful demon. You just watch.~
== BEREVAIN ~Oh Sehanine! Save me from this madness.~
EXIT

CHAIN
IF ~Global("VP_BSime","LOCALS",2)~ THEN BEREVAIN C33
~Sime, why Mielikki out of all the deities you could worship.~
DO ~SetGlobal("VP_BSime","LOCALS",3)~
== BSIME ~Mielikki was always generous to me, protected the innocent, and served the good of nature.~
== BEREVAIN ~Surely, Corellon Larethian or Rillifane Rallathil does all of that and more no?~
== BSIME ~I suppose I do not know. I am not very familiar with the Elven gods.~
== BEREVAIN ~I'm very surprised. Surely you would have come across many an elf to teach you yes?~
== BSIME ~Mielikki guides me to protect the forests and the good creatures of the land and not toward any kind of creature in particular.~
== BEREVAIN ~My my. Well, I shall do my best to instruct you about how elves bring about the best in nature.~
EXIT

CHAIN
IF ~Global("VP_BSime","LOCALS",5)~ THEN BEREVAIN C34
~Yes, Sime?~
DO ~SetGlobal("VP_BSime","LOCALS",6)~
== BSIME ~So Erevain I have listened to your talks on the beauty of elven culture, nature, and so forth many a time now.~
== BEREVAIN ~Yes, and?~
== BSIME ~I feel that many of your people have lost their way.~
== BEREVAIN ~How so?~
== BSIME ~Your elven kindred have built themselves grand cities and try to erect them in harmony with nature nature.~
== BEREVAIN ~Yes, of course. That harmony is one of our major accomplishments.~
== BSIME ~However, even so many of your people seem to have lost touch with nature itself, spEXITing their time dealing with the foibles of civilization.~
== BEREVAIN ~Foibles? Music, art, poetry, and beautiful craftsmanship of all kinds!~
== BSIME ~While beautiful, it takes your people away from the beauty of nature. The only ones among you that still appreciate it fully seem to be the Wild Elves.~
== BEREVAIN ~What? My barely dressed, tattooed, covered in mud cousins? No, when I meet them in my journeys they shall be warmly welcomed but from a distance and not touched.~
== BSIME ~You wish to claim a closeness to nature yet you wish not to be close even to your kin.~
== BEREVAIN ~Yes, I think a healthy distance from the dirt and stink of nature is quite appropriate.~
== BEREVAIN ~(Moves around uncomfortably) Perhaps we can discuss this later.~
EXIT

CHAIN
IF ~Global("VP_BKachiko","LOCALS",2)~ THEN BEREVAIN C35
~Kachiko, why is it that you favor the Katana so. Surely, you must agree that the longsword is truly the finest blade.~
DO ~SetGlobal("VP_BKachiko","LOCALS",3)~
== BKACHI ~Katanas are made by the most dedicated weaponsmiths in Kara-Tur. The time required to create them is extraordinary and the crafstmanship of a Katana is unparalleled.~
== BEREVAIN ~(Pulls out a longsword) Look at that Kachiko. Behold this magnificent elven make. Far finer than what could be made elsewhere.~
== BKACHI ~Perhaps we must live with our disagreements unless you were willing to put our blades to the test?~
== BEREVAIN ~No, certainly not. I would not spill the blood of a good woman over a petty dispute.~
== BKACHI ~(Nods and smiles) Nor would I likewise with a good man.~
EXIT

CHAIN
IF ~Global("VP_BKachiko","LOCALS",5)~ THEN BEREVAIN C36
~Are there any elves in Kara-Tur?~
DO ~SetGlobal("VP_BKachiko","LOCALS",6)~
== BKACHI ~There are extremely few if any at all in Kara-Tur.~
== BEREVAIN ~Are you absolutely positive? It is hard for me to believe that the Tel-quessir would not travel to every reach of Abeir-Toril.~
== BKACHI ~Well, hmm. I have heard of something you might call a "Star Elf". Some legEXITs have been told of tall fey creatures like yourself with star diadems that have come to trade occasionally on the outer west rim of my homeland. I've never seen any evidence of them myself mind you.~
== BEREVAIN ~Fascinating. Perhaps one day I can journey that way with you and we can verify these legEXITs and find my lost cousins.~
== BKACHI ~(Nods)~
EXIT