BEGIN ~DSOTH~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~My name is Soth.  Is there something I can help you with?~
  IF ~~ THEN REPLY ~May I ask you some questions?~ GOTO 2
  IF ~~ THEN REPLY ~Not at this time.  Farewell.~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY ~Greetings.  Its good to see you again.  What can I help you with?~
  IF ~~ THEN REPLY ~I would like to ask you some questions.~ GOTO 2
  IF ~Global("Slaves_Free_1","GLOBAL",0)
Global("Bridge_Broken","GLOBAL",1)
Global("Got_BookEng","GLOBAL",0)~ THEN REPLY ~There is a rope bridge near here in danger of collapsing.  Could I learn to repair it using some of the books here?~ DO ~AddexperienceParty(8500)
GiveItem("BookEng",Player1)
SetGlobal("Got_BookEng","GLOBAL",1)~ GOTO 16
  IF ~Global("Slaves_Free_1","GLOBAL",1)
Global("Bridge_Broken","GLOBAL",1)
Global("Got_BookEng","GLOBAL",0)~ THEN REPLY ~There is a rope bridge near here in danger of collapsing.  Could I learn to repair it using some of the books here?~ DO ~AddexperienceParty(8500)
SetGlobal("Got_BookEng","GLOBAL",1)~ GOTO 18
  IF ~~ THEN REPLY ~Nothing at this time, farewell.~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY ~Certainly, what do you want to know?~
  IF ~~ THEN REPLY ~Who are you again?~ GOTO 3
  IF ~~ THEN REPLY ~What are you doing here? ~ GOTO 6
  IF ~~ THEN REPLY ~How did you come to be here, Soth?~ GOTO 13
  IF ~~ THEN REPLY ~Have you examined most of the books here?~ JOURNAL ~Wyrm�s Tooth.

We talked to a scholar named Soth who has been studying the books in the Wyrm�s Tooth library. He says that they are works dedicated to dwarven engineering.~ GOTO 15
  IF ~~ THEN REPLY ~Farewell for now, Soth.~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY ~My name is Soth.  No last name, just Soth. ~
  IF ~~ THEN REPLY ~Why is that?~ GOTO 4
  IF ~~ THEN REPLY ~Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~Farewell for now, Soth.~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY ~It�s a custom of my people.  A man earns his last name rather than having it given to him.  I haven�t earned my name yet.~
  IF ~~ THEN REPLY ~Interesting custom.  Where are you from?~ GOTO 5
  IF ~~ THEN REPLY ~I see.  Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~Farewell for now, Soth.~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY ~I hail from a small village outside of Auckney... Auckney�s located at the other end of the Spine of the World mountains.  Anyway, my village is a small place.  I don�t think its made it on the maps yet...~
  IF ~~ THEN REPLY ~I see.  Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~Farewell for now, Soth.~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY ~Well...  I fancy myself to be a bit of a scholar so I�m trying to go through some of these books and learn a bit about this place.~
  IF ~~ THEN REPLY ~Have you had any luck?~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~Yes.  It� hard reading, but I�ve pieced a few things together. ~
  IF ~~ THEN REPLY ~What have you learned?~ JOURNAL ~Wyrm�s Tooth.

We talked to a scholar named Soth.  He says that the Wyrm�s Tooth buildings are a temple complex dedicated to Dugmaren Brightmane, the dwarven god of scholars and explorers. ~ GOTO 8
  IF ~~ THEN REPLY ~Farewell for now, Soth.~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY ~It seems that this entire complex is a temple dedicated to Dugmaren Brightmantle...~
  IF ~~ THEN REPLY ~I am not familiar with that name.  Who is he?~ GOTO 9
  IF ~Race(Player1, Dwarf)~ THEN REPLY ~Dugmaren... He is the dwarven god of scholars, inventors, and explorers.~ GOTO 10
  IF ~Class(Player1, Cleric)
!Race(Player1, Dwarf)~ THEN REPLY ~If memory serves me right, he is the dwarven god of scholars, inventors, and explorers.~ GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY ~From what I can gather he is the dwarven god of scholars, inventors, and explorers.  He�s not well known and frowned upon by some of the other gods.  They consider him to be a bit... whimsical, I guess you�d say.  Anyway, Dugmaren felt that the dwarves should get out and explore the world more. ~
  IF ~~ THEN REPLY ~I see.  What else can you tell me about this place?~ GOTO 11
  IF ~~ THEN REPLY ~Let me ask you something else.~ GOTO 2
END

IF ~~ THEN BEGIN 10
  SAY ~Yes, quite right.  He�s not well known and frowned upon by some of the other gods.  They consider him to be a bit... whimsical, I guess you�d say.  Anyway, Dugmaren felt that the dwarves should get out and explore the world more.~
  IF ~~ THEN REPLY ~I see.  What else can you tell me about this place?~ GOTO 11
  IF ~~ THEN REPLY ~Let me ask you something else.~ GOTO 2
END

IF ~~ THEN BEGIN 11
  SAY ~A brilliant architect known as Alkonos the Visionary built this complex.  He was a devout follower of Dugmaren and took offense that his deity had no formal temple.  So, he petitioned the king and was granted permission to construct one.  During the construction he became known as Alkonos the Mad.~
  IF ~~ THEN REPLY ~Why did they call him that?~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY ~Well, apparently most of the dwarves wanted to just bore a tunnel through this glacier and build a small temple in the mountain on the other side.  Alkonos would hear nothing of it.  Instead he began construction on a grandiose scale... and here is the result.~
  IF ~~ THEN REPLY ~I see.  Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~If the dwarves thought him mad, why did they not stop him?~ GOTO 17
  IF ~~ THEN REPLY ~Farewell for now, Soth.~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY ~I was on my way from Auckney to Easthaven.  Raiders waylaid the caravan I was with, and I was knocked unconscious. When I awoke, I was here.~
  IF ~~ THEN REPLY ~I have never heard of Auckney.~ GOTO 14
  IF ~~ THEN REPLY ~I see.  Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~Farewell for now, Soth.~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY ~Auckney�s located at the other end of the Spine of the World mountains. It�s a small place. I don�t think it has made it on the maps yet...~
  IF ~~ THEN REPLY ~I see.  Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~Farewell for now, Soth.~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY ~Yes, I have.  It didn�t take as long as you would think because most of them are so damaged as to be unreadable. It�s a shame too, because the few that are readable are excellent works on dwarven engineering.~
  IF ~Global("Slaves_Free_1","GLOBAL",0)
Global("Bridge_Broken","GLOBAL",1)
Global("Got_BookEng","GLOBAL",0)~ THEN REPLY ~There is a rope bridge near here in danger of collapsing. Could I learn to repair it using some of the books here?~ DO ~AddexperienceParty(8500)
GiveItem("BookEng",Protagonist)
SetGlobal("Got_BookEng","GLOBAL",1)~ JOURNAL ~Wyrm�s Tooth.

The scholar Soth gave us a book on dwarven engineering. With it we hope to repair the rope bridge that spans the southwest chasm.~ GOTO 16
  IF ~Global("Slaves_Free_1","GLOBAL",1)
Global("Bridge_Broken","GLOBAL",1)
Global("Got_BookEng","GLOBAL",0)~ THEN REPLY ~There is a rope bridge near here in danger of collapsing. Could I learn to repair it using some of the books here?~ DO ~AddexperienceParty(8500)
SetGlobal("Got_BookEng","GLOBAL",1)~ JOURNAL ~Wyrm�s Tooth.

The scholar Soth gave us a book on dwarven engineering. With it we hope to repair the rope bridge that spans the southwest chasm.~ GOTO 18
  IF ~~ THEN REPLY ~I see.  Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~Farewell for now, Soth.~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY ~I don�t rightly know... I suppose it�s worth a try though.  Let me see... bridges...  Yes, here you go. This one covers the basics of suspension and such... Good luck.~
  IF ~~ THEN REPLY ~Thank you, Soth.  Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~Farewell for now, Soth.~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY ~Oh, they tried...  Now, I may not have the lineage exactly right, but it appears that Alkonos was related to the king at the time. He was either a nephew or a cousin. I don�t know which. In any case, the king couldn�t admit that one of his relatives was a brick shy upstairs.  It would be a bad reflection on him.~
  IF ~~ THEN REPLY ~Interesting.  Let me ask you something else.~ GOTO 2
  IF ~~ THEN REPLY ~Farewell for now, Soth.~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY ~I don�t rightly know... I suppose it�s worth a try though.  Let me think... bridges...  Yes, I had a book on bridges now that I think about it. I left it in the corner over there by the spiral stairs.  I have no need for it.~
  IF ~~ THEN REPLY ~Farewell for now, Soth.~ EXIT
END
