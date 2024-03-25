BEGIN ~TuConj~

IF ~True()~ THEN BEGIN 0
  SAY #41240 // ~Hello there, friend. Something I can do for you?~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY ~Hello, <GABBER>. I thought I would begin this introduction with a brief description of conjuration and summoning magic. Now, I know most of the new students know these facts already but it will do you no harm to listen.~
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~Conjuration and summoning, although two different types of magic, they both involve bringing in matter from another place. Conjuration spells produce different forms of non-living matter, whereas Summoning spells entice or compel creatures to come to the caster. It also allows the mage to channel forces from other planes. Since both require the same casting techniques, conjuration and summoning are considered two parts of the same school and are taught as such.~
  IF ~~ THEN REPLY ~Hello Ghiala, nice to meet you. Your introduction has been very informative.~ EXTERN ~TUMORD~ 8
  IF ~~ THEN REPLY ~Hello Ghiala, you drew the short straw did you?~ EXTERN ~TUMORD~ 8
  IF ~~ THEN REPLY ~(*Not looking at Ghiala*) Are you sure she won't be offended?~ EXTERN ~TUMORD~ 9
END

IF ~~ THEN BEGIN 3
  SAY ~Hello, <GABBER>. I thought I would begin this introduction with a brief description of conjuration and summoning magic. Now, I know most of the new students know these facts already but it will do you no harm to listen.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~Conjuration and summoning, although two different types of magic, they both involve bringing in matter from another place. Conjuration spells produce different forms of non-living matter, whereas Summoning spells entice or compel creatures to come to the caster. It also allows the mage to channel forces from other planes. Since both require the same casting techniques, conjuration and summoning are considered two parts of the same school and are taught as such.~
  IF ~~ THEN REPLY ~Hello Ghiala, nice to meet you. Your introduction has been very informative.~ EXTERN ~TUMORD~ 13
  IF ~~ THEN REPLY ~Hello Ghiala, you drew the short straw did you?~ EXTERN ~TUMORD~ 13
  IF ~~ THEN REPLY ~(*Not looking at Ghiala*) Are you sure she won't be offended?~ EXTERN ~TUMORD~ 14
END

IF ~~ THEN BEGIN 5
  SAY ~I think I will have to start charging a fee Mordecai. I seem to be at a loss for words quite frequently of late... (*smiling*)... then again, maybe I will get my pay back when it is my turn to set the tests.~
  IF ~~ THEN EXTERN ~TUMORD~ 29
END

IF ~~ THEN BEGIN 6
  SAY ~Farewell, Mordecai.~
  IF ~~ THEN DO ~SetGlobal("VP_Ghiala_Escapes","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY ~Well Mordecai, as long as the students you keep testing to silence me keep failing, my students get the benefit of uninterrupted lectures. (*Smiles at Mordecai*) Which is more than can be said for yours when I get to set the tests.~
  IF ~~ THEN EXTERN ~TUMORD~ 36
END