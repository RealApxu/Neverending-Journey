BEGIN ~TUCOORD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY ~Well what do we have here, I am guessing, new students. Then well met and  welcome to the Academy of Halruaa! I am Cario De Vince', a junior tutor here at Halruaa.~
  IF ~~ THEN REPLY ~I am <CHARNAME>, well met, Cario. Please, tell me more about the Academy.~ GOTO 1
  IF ~~ THEN REPLY ~Hello, Cario, I am <CHARNAME>. Could you give me a short tour around the Academy?~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~ That is indeed why I am here. One of my many duties is to welcome new students, show them around and to advise them on the various aspects of the specialist schools.~
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~The Academy plays host to many young and inexperienced wizards, who come to learn and then graduate from one of the many schools.~
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY ~At Halruaa, we know that there is no greater knowledge than that which comes through specialisation. As you may already know there are at present five schools of magic but it is certain that others exist. Schools that may have been lost in the mists of time or that await discovery; who knows it may be your destiny to found a new school.~
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY ~Each school at present consists of several colleges, and each school has an opposing one. Those who choose to specialise in one school, forfeit the ability to learn spells from the the opposing one.~
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY ~The complex and delicate balance between the different types of magic, and the interactions between them, is what gives rise to life, in all its complexity and mystery.~
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY ~Be very cautious in your studies and research, young students, lest in your dabbling you waken that which is best left sleeping... that which is beyond your  powers of control. Remember the slightest error in casting any of the major incantations may lead to unforeseen, and off times unfortunate results.~
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY ~Still enough of the warnings, lest I scare you away before you have even started you studies. So to begin, let me show you the runes that symbolise each school and college... and please for your own safety try not to step on them. Now if you will follow me, note well what I am about to tell you and please, no interruptions whilst I am speaking.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",1)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",1)~ THEN BEGIN 8
  SAY ~The first four runes I'll show you belong to the *Meta* school of magic, and this particular rune symbolises the college of *Divination*, which concerns itself with the gathering of knowledge through magical means, much of which would otherwise remain secret or hidden. As well as revealing the existence of creatures and objects, divination spells also reveal the secrets of the past, present and future... as exciting as it may appear to know what the future holds, a huge responsibility falls on the shoulders of the wizard who chooses to look ahead.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",2)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",2)~ THEN BEGIN 9
  SAY ~This is the rune of the *White Necromancy* college, which specialises in the positive energy affecting the life forces of a creature... it is magic of a benign and beneficial nature. It includes spells which restore and fortify the living body or the life force of creatures; the wizard may well have to draw upon his own life force to fuel the casting if these spells.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",3)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",3)~ THEN BEGIN 10
  SAY ~The college of *Abjuration* specialises in learning spells that counter magic effects. There are three general types of abjuration spells... they are, *protective*, *dispelling* and *dismissal* . Protection spells come in three types... protection from creatures, from weapons and protection from magic itself.  Dispelling will remove many magical effects present and dismissal will remove certain creatures at the casters discretion. Very useful tactics when in combat I'm sure you will agree.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",4)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",4)~ THEN BEGIN 11
  SAY ~The last college of the Meta school is *Black Necromancy*, this specialises in the effects of negative energy upon the life forces of  creatures. These spells deal with death the dead and the undead... many of which drain the life forces from the living and restore or imbue life functions to unliving creatures... not a specialisation for the faint hearted or those with ah...um...a traditional view of morality shall we say!~
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY ~Now let's proceed to the *Elemental* school, which deals with the material plane energy. It includes two sub-schools tentatively called *Conjuration* and *Summoning*. Conjuration and summoning, although two different types of magic, they both involve bringing in matter from another place.~
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY ~Conjuration spells produce different forms of non-living matter, whereas Summoning spells entice or compel creatures to come to the caster. It also allows the mage to channel forces from other planes. Since both require the same casting techniques, conjuration and summoning are considered two parts of the same school and are taught as such.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",5)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",5)~ THEN BEGIN 14
  SAY ~Whereas the elemental wizard is a fairly new specialisation, elementalism is not a school in itself but an area of specialisation, focusing on spells of the four prime elements. We at Halruaa embrace all forms of specialisation and therefore include it as a school.~
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY ~The college of *Earth* holds spells which manipulate the first elemental material, that of earth and stone.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",6)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",6)~ THEN BEGIN 16
  SAY ~The college of *Air* manipulates the energy of the second elemental material, that of air and wind.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",7)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",7)~ THEN BEGIN 17
  SAY ~The college of *Fire* specialises in learning spells that manipulate the third elemental material, that of fire and heat.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",8)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",8)~ THEN BEGIN 18
  SAY ~The college of *Water* specialises in learning spells that manipulate the fourth elemental material, that of water and ice.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",9)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",9)~ THEN BEGIN 19
  SAY ~And finally we come to the symbol of the college of *Summoning*, which contains spells that concern the summoning of creatures of progressive power. Now I know how impressive that sounds to a new student, but the practising wizard must always be aware that certain summoned creatures, will not be too happy at having been yanked out of their own environment... I am sure I need say no more about summoning spells my young friend.~
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY ~Now let's move onto the *Mental* school of magic, which specialises in enchantment and charm magic. There are only two colleges in this school, the college of *Nature* and the college of *Enchantment*.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",10)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",10)~ THEN BEGIN 21
  SAY ~This is the rune of the college of *Enchantment*. This college specialises in the learning of *enchantment* and *charm* type spells. Both of which imbue the subject with magical energy in order to create specific effects.~
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY ~First there are the *enchantment* spells which invest non-living objects with magical powers. Then there are the *charm* spells which influence and control a creature's behaviour by altering its  mental or emotional state... obviously, these spells have no effect on creatures that are mindless or undead. Also elves have a high innate resistance to this type of magic.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",11)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",11)~ THEN BEGIN 23
  SAY ~This rune symbolises the college of *Nature*, which specialises in learning spells that control plants, animals, and natural forces. The wizard who can call on the forces of nature herself, holds very powerful allies and magic in his hands!~
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY ~The next school is the school of *Alteration*, also called *Transmutation*, which has four colleges. Please follow me... remembering once again to take care where you walk.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",12)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",12)~ THEN BEGIN 25
  SAY ~This is the symbol of the *Temporal* college which concerns spells that control the flow of time. There isn't a lot I can say about the spells of this college, but I will say, be careful when using these spells, lest you suddenly find the years have slipped away quicker than you would like.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",13)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",13)~ THEN BEGIN 26
  SAY ~We then have the college of *Illusion*. Whereas illusion spells bend reality to create apparent changes in the environment, in the caster or in other creatures, they do not cause real change as do alteration spells, but instead, they alter the way creatures perceive reality... what we know as illusion. We do however, still include it as a college in the school of Alteration here at Halruaa.~
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY ~There are illusionary spells which simulate reality, creating artificial conditions of light, colour, sound and scent. Then there are illusions which focus on extradimensional forces to alter the physical form of the wizard... often used to protect him from a variety of attack forms. Also included is Phantasm spells, these spells do not create images, instead they directly manipulate the perception of the target in order to induce varied responses.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",14)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",14)~ THEN BEGIN 28
  SAY ~The college of *Conveyance* holds spells that deal with motion and transportation. Myself... I have always considered this a most useful subject to study, especially if the wizard is of the type who moves house frequently.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",15)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",15)~ THEN BEGIN 29
  SAY ~And the last college of the *Alteration* school is the college called *Morph* which deals with energy that changes the substance of the target, whether they are creature or object. These spells can effect... weight, location, form, abilities and in the instance of a living target, its well being.~
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY ~Now let's move to the last rune which symbolises the school and the college of *Invocation*, also called *Evocation*.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",16)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",16)~ THEN BEGIN 31
  SAY ~This rune we call *Force*, and it represents the only college of the *Invocation* school, which manipulates and directs the pure energy of substance. Once again there are two types of spells in this specialist magic.~
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
  SAY ~*Invocation* spells call on the intervention of powerful extradimensional beings. Whereas *evocation* spells use the natural magical forces of the planes.~
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY ~Now let's proceed to the ancient fountain, and I'll show you the symbols of the schools.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",17)~ EXIT
END

IF ~Global("VP_HalruaaTour","GLOBAL",17)~ THEN BEGIN 34
  SAY ~Here you see the five runes surrounding the ancient fountain dating the foundation of the Academy. The upper rune symbolises the school of *Alteration*, and then clockwise are the symbols of the *Mental*, *Invocation*, *Meta* and *Elemental* schools.~
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35
  SAY ~Now you may meditate upon your choices for a short time, choose the school that most suits your personality, temperament and nature. Your choice will affect the rest of your life, and indeed, your suitability for your chosen school may well mean the difference between life or death in the future! All that remains is for me to wish you good luck in your studies and I hope to see you soon within our quarters. Farewell <CHARNAME>.~
  IF ~~ THEN DO ~SetGlobal("VP_HalruaaTour","GLOBAL",18) EscapeArea()~ EXIT
END