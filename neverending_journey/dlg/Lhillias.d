BEGIN ~LHILLIAS~

IF ~GlobalGT("VP_Restore_Ring","GLOBAL",0) GlobalLT("VP_Restore_Ring","GLOBAL",4) PartyHasItem("TuBook")~ THEN BEGIN 0
  SAY ~Can I help you?~
  IF ~~ THEN REPLY ~Are you Lhillias?~ GOTO 1
  IF ~~ THEN REPLY ~Possibly, I am looking for Lhillias?~ GOTO 1
  IF ~~ THEN REPLY ~I heard the mages here call you Lhillias, if that is so then you can most certainly help me?~ GOTO 1
  IF ~~ THEN REPLY ~If you are Lhillias then you are the one that I am looking for?~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~I am Lhillias. You have me at a disadvantage, may I ask your name?~
  IF ~~ THEN REPLY ~I am <GABBER>. Did you know a mage by the name of Bartlemy?~ GOTO 2
  IF ~~ THEN REPLY ~I am <GABBER> and I am interested to know what deal you had with a mage named Bartlemy?~ GOTO 2
  IF ~~ THEN REPLY ~Well met Lhillias, I am <GABBER>. I found your name in a book that I took from a mage by the name of Bartlemy.~ GOTO 3
  IF ~~ THEN REPLY ~My name is <GABBER>. Tell me Lhillias, why did the mage, Bartlemy, have your name in a book that I took from him? Think before you answer, for I took that book from his body!~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY ~Bartlemy? The name is familiar but I am sure I do not know him. Is there some reason that I should?~
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~He was trying to restore an artifact, a Ring of Might. Are you by any chance an elementalist Lhillias?~ GOTO 12
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~I have his notes on the forging and restoring of a certain artifact. As your name was mentioned I thought you knew him. Tell me, are you by any chance an elementalist Lhillias?~ GOTO 12
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~Bartlemy lied to me Lhillias, I hope you are not doing the same?~ GOTO 13
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~Bartlemy lied to me Lhillias and now he is dead, so you would be wise to be truthful in your answers.~ GOTO 13
  IF ~!PartyHasItem("DeRing")~ THEN REPLY ~Perhaps if you read his notes you may discover why your name appears in it.~ GOTO 4
  IF ~!PartyHasItem("DeRing")~ THEN REPLY ~Here, read his notes and then tell me you do not know him!~ GOTO 4
  IF ~!PartyHasItem("DeRing")~ THEN REPLY ~I have looked through his notes but most of it is meaningless, a lot of equations and symbols. Some symbols I recognise, the ones that depict the four elements and they seem to appear on most pages. Here, see if you can make any sense of it Lhillias.~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY ~Bartlemy? The name is familiar but I am sure I do not know him. Why he should have my name on his person I have no idea.~
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~He was trying to restore an artifact, a Ring of Might. Are you by any chance an elementalist Lhillias?~ GOTO 12
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~I have his notes on the forging and restoring of a certain artifact. As your name was mentioned I thought you knew him. Tell me, are you by any chance an elementalist Lhillias?~ GOTO 12
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~Bartlemy lied to me Lhillias, I hope you are not doing the same?~ GOTO 13
  IF ~PartyHasItem("DeRing")~ THEN REPLY ~Bartlemy lied to me Lhillias and now he is dead, so you would be wise to be truthful in your answers.~ GOTO 13
  IF ~!PartyHasItem("DeRing")~ THEN REPLY ~Perhaps if you read his notes you may discover why your name appears in it.~ GOTO 4
  IF ~!PartyHasItem("DeRing")~ THEN REPLY ~Here, read his notes and then tell me you do not know him!~ GOTO 4
  IF ~!PartyHasItem("DeRing")~ THEN REPLY ~I have looked through his notes but most of it is meaningless, a lot of equations and symbols. Some symbols I recognise, the ones that depict the four elements and they seem to appear on most pages. Here, see if you can make any sense of it Lhillias.~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~(*Opens the book*) The writings seem to deal with the construction of an artifact, namely a Ring of Might.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~(*Turning the pages as she speaks*) Bartlemy and his friends must have been either very sure of themselves or very foolish. According to his research, the elementalist mages who forged the original Ring of Might were not only one from each school, but also possibly siblings. He writes that fact was never substantiated. Still they decided to go ahead with the project.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~He then goes on to say... wait... what is this!? The fools... oh the crazy fools! To attempt to modify the artifact before they even knew if they could fashion it!~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~This project was doomed before they started! Or maybe not, oh... (*reading on*)... they were so close... so very close! If only Bartlemy had left well alone, I believe they could have completed the ring. The tragedy as I see it here was due to one man's conceit and overinflated ego.~
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY ~(*Turns another page*) Ah, I see how they got over the possibility that the mages were siblings. Ingenious! What a waste, those students had brilliant minds.~
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY ~(*Looking up at you*) From what I am reading the ring was almost finished when Bartlemy tried his foolhardy scheme. It also details how he intended to complete the task with my help. I still have no idea how he knew of me <GABBER>.~
  IF ~~ THEN REPLY ~Could you construct a Ring of Might for me Lhillias? I believe Bartlemy thought you had the abilities to aid him?~ GOTO 10
  IF ~~ THEN REPLY ~Do you know of anyone that can construct a Ring of Might for me?~ GOTO 10
  IF ~~ THEN REPLY ~What would be the price to construct a Ring of Might Lhillias?~ GOTO 10
  IF ~~ THEN REPLY ~Bartlemy clearly thought that you would help him. Well he is dead, perhaps you will help me. What would it take for you to construct a ring for me instead?~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY ~Oh no <GABBER>! There is no way I or any mage in the Academy would attempt such a feat. The story of Bartlemy and his friends is known throughout Halruaa, reading his notes brought the story to mind. It is forbidden for anyone to attempt another construction of the ring. The Tragedy of Bartlemy and his friends is told to all students as a lesson to dissuade them from trying to reach too far too soon. The penalties for disobedience is very severe <GABBER>. Here take these notes back and keep them safe, if they fall into inexperienced or unscrupulous hands they are a recipe for disaster.~
  IF ~~ THEN REPLY ~Will you at least consider my offer? I will pay for your time?~ GOTO 11
  IF ~~ THEN REPLY ~Come Lhillias, everyone has a price! What is yours?~ GOTO 11
  IF ~~ THEN REPLY ~Perhaps if I give you time to read Bartlemy's notes again you will reconsider. I am prepared to pay whatever you ask?~ GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY ~No, I am sorry <GABBER>, the risk is too great. No amount of inducement on your part will persuade me to change my mind. If you had Bartlemy's ring, I might have considered finishing what he had started, but to undertake the process from the beginning is not something I would do even with his notes. Please take care whom you pass that book onto and do not let it become known that you have it whilst you are on the Academy's grounds. I will take my leave and forget that I have seen it. Farewell <GABBER>.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY ~I am at present studying in the elemental school of water yes, but I know nothing of restoring artifacts.~
  IF ~~ THEN REPLY ~As I thought. It is possible Bartlemy was hoping to seek you out if he could not persuade Delrysia to help him. Perhaps you can help me?~ GOTO 14
  IF ~~ THEN REPLY ~An elementalist, or at least a student, you could be of some use to me.~ GOTO 14
  IF ~~ THEN REPLY ~If Bartlemy knew of you, he must have had faith in your abilities to restore the ring. You should be able to aid me if that is so.~ GOTO 14
  IF ~~ THEN REPLY ~An elementalist eh? I may well have a proposition for you if you are interested Lhillias?~ GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY ~You have no cause to threaten me <GABBER>, I do not know this Bartlemy. I am here as a student of the elemental school of water. I have nothing to conceal from you or anyone else.~
  IF ~~ THEN REPLY ~As I thought. It is possible Bartlemy was hoping to seek you out if he could not persuade Delrysia to help him. Perhaps you can help me?~ GOTO 14
  IF ~~ THEN REPLY ~An elementalist, or at least a student, you could be of some use to me.~ GOTO 14
  IF ~~ THEN REPLY ~If Bartlemy knew of you, he must have had faith in your abilities to restore the ring. You should be able to aid me if that is so.~ GOTO 14
  IF ~~ THEN REPLY ~An elementalist eh? I may well have a proposition for you if you are interested Lhillias?~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY ~That depends on what it is you will have me do. The penalty for breaking Halruaa's rules are severe, so I will not undertake anything that goes against them. I will, however, hear you out and then decide.~
  IF ~~ THEN REPLY ~Bartlemy was looking to restore an artifact, a ring. He and four other mages were almost finished constructing the ring when tragedy struck killing three of them. The ring is now in my possession as is Bartlemy's notes, but all I can understand are the symbols depicting the four elements. Here, see if you can understand more.~ GOTO 15
  IF ~~ THEN REPLY ~I have Bartlemy's ring but have no idea how to restore it. I know it has something to do with the elements because I recognise the symbols in his notes. Here, take the book and see if you can read more.~ GOTO 15
  IF ~~ THEN REPLY ~I am looking for someone to restore a ring that Bartlemy was carrying. I have the ring and his notes mentioning you by name, which led me to believe you would be able to help me. Here, see what you can make of his writings.~ GOTO 15
  IF ~~ THEN REPLY ~I want you to restore Bartlemy's ring for me. Here, I will show you the notes that he kept. I believe they explain the process.~ GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~(*Turning the pages as she speaks*) Bartlemy and his friends must have been either very sure of themselves or very foolish. According to his research, the elementalist mages who forged the original Ring of Might were not only one from each school, but also possibly siblings. He writes that fact was never substantiated. Still they decided to go ahead with the project.~
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY ~He then goes on to say... wait... what is this!? The fools... oh the crazy fools! To attempt to modify the artifact before they even knew if they could fashion it!~
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY ~This project was doomed before they started! Or maybe not, oh... (*reading on*)... they were so close... so very close! If only Bartlemy had left well alone, I believe they could have completed the ring. The tragedy as I see it here was due to one man's conceit and overinflated ego.~
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY ~(*Turns another page*) Ah, I see how they got over the possibility that the mages were siblings. Ingenious! What a waste, those students had brilliant minds.~
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY ~(*Looking up at you*) From what I am reading the ring was almost finished when Bartlemy tried his foolhardy scheme. It also details how he intended to complete the task with my help. I still have no idea how he knew of me <GABBER>.~
  IF ~~ THEN REPLY ~Can you do this for me Lhillias?~ GOTO 20
  IF ~~ THEN REPLY ~If it is too dangerous, please say now Lhillias. The last thing I want is to see another life wasted.~ GOTO 20
  IF ~~ THEN REPLY ~Well, is it within your capabilities or not?~ GOTO 20
  IF ~~ THEN REPLY ~Are you willing to do this for me? Think of the name you would make for yourself if you pulled it off Lhillias.~ GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY ~I am sure I can do this for you <GABBER>, but I will need to find a mage from the other three schools. Whereas I believe only one element needs to be added, I would still prefer to have them with me. It says it took four elementalists to start the process and I would feel safer if there were four at the end. Also, I insist that no-one ever knows of my involvement in this. Students are forbidden to take on such risky tasks and the penalties for disobedience are very severe.~
  IF ~~ THEN REPLY ~Wonderful Lhillias! What do you need from me?~ GOTO 21
  IF ~~ THEN REPLY ~As long as you are quite sure that it is safe. What will you require in order to make a start?~ GOTO 21
  IF ~~ THEN REPLY ~What is this going to cost me Lhillias? I am sure you have your price?~ GOTO 21
  IF ~~ THEN REPLY ~Tell me, what do you expect in return Lhillias? I have come to learn that you get nothing in this world for free, everyone has their price. What is yours?~ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY ~I am a student <GABBER>, and unfortunately I do not have an affluent family to pay for my tuition. Whereas, I will learn much from this endeavour, the cost is beyond my means. I think 5000 gold for each of us should cover the cost and the risk that we will be taking, making 20000 gold in total.~
  IF ~PartyGoldGT(19999)~ THEN REPLY ~You have a deal. Here take the gold and the ring, but please, if at any time you feel things are starting to go wrong, you must abandon the task. It is not worth four more lives.~ GOTO 22
  IF ~PartyGoldGT(19999)~ THEN REPLY ~Here, I wish you and your friends luck Lhillias.~ GOTO 22
  IF ~~ THEN REPLY ~You ask too much! I will give you 5000 gold, and no more.~ GOTO 23
  IF ~~ THEN REPLY ~How much? Forget it. I will find another to do this for me.~ GOTO 24
END

IF ~~ THEN BEGIN 22
  SAY ~I will meet you at the backyard near the rune of my colledge in a day <GABBER> if all goes well. There is very little left for me to do. Farewell for now.~
  IF ~~ THEN DO ~SetGlobal("VP_Restore_Ring","GLOBAL",4) //Lhillias went to restore the ring
SetGlobalTimer("VP_Lhillias_Returns","GLOBAL",ONE_DAY) TakePartyGold(20000) TakePartyItem("DeRing") EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY ~20000 gold or nothing <GABBER>. You will not find another mage to work for less. Not only because of the risk, but to attempt what you ask is forbidden in the Academy. I now remember why the name Bartlemy was familiar to me. He was I believe, banished for the destruction he caused when constructing this very ring. The Tragedy of Bartlemy and his friends is told to all students as a lesson to dissuade them from trying to reach too far too soon. The penalty is very severe for anyone caught trying to do so again. What do you say, will you meet my price or do I walk away?~
  IF ~PartyGoldGT(19999)~ THEN REPLY ~I still say it is an outrageous sum! I expect you to deliver what I am paying for!~ GOTO 22
  IF ~~ THEN REPLY ~I am not prepared to pay that. Farewell Lhillias.~ GOTO 25
END

IF ~~ THEN BEGIN 24
  SAY ~As you wish <GABBER>. Be warned, from what I have read in Bartlemy's notes, only an elementalist mage should be entrusted to do the work. Also It is forbidden to do so on Academy grounds, you may not find another as willing as I to undertake the task.~
  IF ~PartyGoldGT(19999)~ THEN REPLY ~I still say it is an outrageous sum! I expect you to deliver what I am paying for!~ GOTO 22
  IF ~~ THEN REPLY ~I am not prepared to pay that. Farewell Lhillias.~ GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY ~Farewell <GABBER>.~
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~Global("VP_Restore_Ring","GLOBAL",5)~ THEN BEGIN 26
  SAY ~I am sorry <GABBER>, we were unable to restore the ring. Closer examination found it was impossible to unravel the necromantic spells Bartlemy had used in his part of its construction. Without him to undo what he had done, the risk of another accident was too great. My friends would have no part of it.~
  IF ~~ THEN REPLY ~Then I guess there is no more to be done. Thank you for trying Lhillias.~ GOTO 27
  IF ~~ THEN REPLY ~That is ok Lhillias. When you left I had my doubts as to  whether I should have let you do this for me, but you seemed confident in your own ability. I am only glad you took no risk on my behalf.~ GOTO 27
  IF ~~ THEN REPLY ~I am relieved to see you heeded my words and that you are safe Lhillias. I would not have want the deaths of you and your friends on my conscience.~ GOTO 27
  IF ~~ THEN REPLY ~In that case I will have my ring and my gold please!~ GOTO 27
  IF ~~ THEN REPLY ~You and your ego have wasted my time! I will have my ring and my gold, you can be grateful that I do not have your head as well for my inconvenience!~ GOTO 36
END

IF ~~ THEN BEGIN 27
  SAY ~I said we could not restore the ring, however, when I saw the potential in the ring, I took it upon my self to enhance it with my own elemental magic.~
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY ~It is still a wondrous artifact and if you can find elementalists of the other classes willing, it can be made even greater. It might not be as its makers intended, but a Ring of Might it still is. Here see for yourself. I also return the 15000 not spent.~
  IF ~~ THEN REPLY ~You have! Then I thank you Lhillias, I did not expect you to do this much for me.~ GOTO 29
  IF ~~ THEN REPLY ~Thank you, now tell me how do I go about enhancing it further?~ GOTO 29
  IF ~~ THEN REPLY ~Hmph, I suppose that at least makes it worth hanging on to. You said something about enhancing it further...~ GOTO 29
  IF ~~ THEN REPLY ~Not a complete waste of time then. Tell me what else can be done to further empower it?~ GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY ~If it is your plan to ask elementalists here in the academy to enhance the ring, I can suggest a couple of names of those that may aid you.~
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY ~Seek out Genevra, she is a fire elementalist, Aulay an earth specialist if you can find him and Owain is air specialist. None of them are known for their integrity but it makes them the only ones that will risk what you are asking.~
  IF ~~ THEN REPLY ~Why then did you not ask them to aid you in the first place?~ GOTO 31
  IF ~~ THEN REPLY ~I paid you enough gold, why did you not get them to aid you instead of the cowards you call friends?~ GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY ~I have already said that without Bartlemy, who helped construct the ring, I could do nothing more than enhance it. Apart from the danger involved, my friends were not prepared to risk the consequences of being found working on a forbidden artifact.~
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY ~At great risk to myself I have done what I can and I am sure you will agree, I have made a vast improvement to your ring. Just be sure that no one ever knows that I had any part in this. Now, before I take my leave of you, I must know what you intend doing with Bartlemy's notes? They are useless without him but they could still encourage other foolhardy mages if they fall into the wrong hands.~
  IF ~~ THEN REPLY ~I assure you no-one will know from me of your involvement. You may as well keep Bartlemy's notes, I have no use for them.~ GOTO 33
  IF ~~ THEN REPLY ~Thank you for all that you have done Lhillias, be assured that I will tell no-one. As for Bartlemy's notes, I will leave them  with you, they are meaningless to me.~ GOTO 33
  IF ~~ THEN REPLY ~I will take Bartlemy's notes. Be assured they will not  fall into inexperienced or unscrupulous hands, nor will your part in this ever be known. This I promise.~ GOTO 35
  IF ~~ THEN REPLY ~I will take Bartlemy's notes, after all, I paid more than enough for your work Lhillias. Maybe I can  recoup some of my loss, I am sure some mage somewhere will be prepared to pay for them.~ GOTO 35
END

IF ~~ THEN BEGIN 33
  SAY ~I will keep them safe, I promise they will not fall into inexperienced hands again. Bartlemy and his friends may have failed in their bid to construct a Ring of Might, but the ring you now possess is a wonder in its own right.~
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY ~Whereas I could only enhance their work, theirs was the skill that brought the ring into being and all due praise should go to them. It has been a joy to work on such an item. Farewell <GABBER>.~
  IF ~~ THEN DO ~SetGlobal("VP_Restore_Ring","GLOBAL",6) GiveItemCreate("DeRing2",LastTalkedToBy,0,0,0) GiveGoldForce(15000) TakePartyItem("TuBook") EscapeArea()~ EXIT
END //Lhillias is granting the enhanced ring (+water element)
IF ~~ THEN BEGIN 35
  SAY ~Then I bid you farewell <GABBER>, but not without saying take care in whom you pass these documents to, in the wrong hands they are a proven recipe for disaster.~
  IF ~~ THEN DO ~SetGlobal("VP_Restore_Ring","GLOBAL",6) GiveItemCreate("DeRing2",LastTalkedToBy,0,0,0) GiveGoldForce(15000) EscapeArea()~ EXIT
END //Lhillias is granting the enhanced ring (+water element)
IF ~~ THEN BEGIN 36
  SAY ~And alert the academy to you and the ring's presence? I think not <GABBER>.~
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY ~I said I could not restore the ring, but that does not mean I was idle. When I saw the potential in the ring, I took it upon my self to enhance it with my own elemental magic. It is still a wondrous artifact and if you can find elementalists of the other classes willing, it can be made even greater.~
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY ~It might not be as its makers intended, but a ring of might it still is. Here see for yourself. I also return the 15000 gold not spent.~
  IF ~~ THEN REPLY ~Hmph, I suppose that at least makes it worth hanging on to. You said something about enhancing it further...~ GOTO 29
  IF ~~ THEN REPLY ~Not a complete waste of time then. Tell me what else can be done to further empower it?~ GOTO 29
END

IF ~RandomNum(12, 1)~ THEN BEGIN 39 // from:
  SAY ~If I'd known the academy was going to be so hot all the time, I'd have opted to go to Ulcaster!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 2)~ THEN BEGIN 40 // from:
  SAY ~*Sighs*... Sand, sand and yet more sand, everywhere I look I see sand!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 3)~ THEN BEGIN 41 // from:
  SAY ~I can't believe my luck... here I am, studying at the greatest Academy in the land.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 4)~ THEN BEGIN 42 // from:
  SAY ~Yea gods, why did I choose to study enchantment. That Xan is so bloody pessimistic and uninspiring for an enchanter!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 5)~ THEN BEGIN 43 // from:
  SAY ~If you haven't chosen your specialisation yet take a tip from me, avoid conjuration... Mordecai sets more homework than the rest of the tutors put together!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 6)~ THEN BEGIN 44 // from:
  SAY ~You should join Theodoran's classes... he's ace at casting those Invocation spells.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 7)~ THEN BEGIN 45 // from:
  SAY ~Damn this heat! Word is we're in for another blasted sand storm tomorrow.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 8)~ THEN BEGIN 46 // from:
  SAY ~Has anyone else noticed the absence of so many senior staff? Only a few days ago, you couldn't even go to the privy without one on your tail.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 9)~ THEN BEGIN 47 // from:
  SAY ~Sorry no time to chat, I've just discovered I have an exam next and I haven't memorised my spells!~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 10)~ THEN BEGIN 48 // from:
  SAY ~You'll have to excuse me, I've just come from one of Ezekiel's classes and I need to lie down for a bit.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 11)~ THEN BEGIN 49 // from:
  SAY ~Lavallin sure keeps some strange components on the top shelves in his store.~
  IF ~~ THEN EXIT
END

IF ~RandomNum(12, 12)~ THEN BEGIN 50 // from:
  SAY ~I heard from someone, who heard from some one else that there were some pretty big names in the Academy last night... no sign of them today though.~
  IF ~~ THEN EXIT
END