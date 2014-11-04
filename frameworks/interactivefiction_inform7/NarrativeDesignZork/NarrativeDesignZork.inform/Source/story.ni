"NarrativeDesignZork" by csongor baranyai

[Version 2014-10-27]
[See below for credits.]

Part 1 - General

The story headline is "An exercise in Narrative Design". 

[This is only visible on the website, no paragraphs allowed.]
The story description is "A small example of interactive fiction (IF). Rather intended as a tutorial for Inform 7 and as an exercise in Narrative Design & Interactive Writing than as a complete game. Please read the source code for further information and instructions."

The release number is 1.
The story creation year is 2014.

Release along with source text, a website, an interpreter, cover art, an introductory postcard.

When play begins:
	say "[example description]"

To say example description:
	say "A small example of interactive fiction (IF). Rather intended as a tutorial for Inform 7 and as an exercise in Narrative Design & Interactive Writing than as a complete game. [line break]Please read the source code for further information and instructions.[paragraph break]"

Use no scoring.

Part 2 - The Exercise

[Write / author / make an interactive story with the help of the here / in this example introduced tools / commands in Inform 7.

This are mainly the following functions:
	- rooms / regions / doors
	- objects / items / inventory
	- object-interactions / object-combinations
	- descriptions

What kind of stories can be told with this structure?

Inform 7 is clearly capable of much more than described in this example.
Additional functions may be used, but only after permission of / consultation with the tutor:
	- characters / speech
	- variables / scenes
	- etc.]

Part 3 - The Code

The player carries the silver key.

[Inform 7 offers some / many / a lot of predefined object-types (rooms, items, containers, etc.), that are easily useable / placeable. Once instantiated, they produce / generate automatical (and mainly logical) answers at play.]

[Define a room...]
A room called West of House is a room.
[...and its description.]
"You are in an open field on the west side of a white house with a boarded front door."

[Define an object...]
A rubber welcome mat is here. 
[...and its 1st description (entering the room).]
"A rubber mat saying 'Welcome to Zork' lies by the door."
[...and its 2nd description (examining (x)).]
The description of the mat is "The mat says 'Welcome to Zork'."

[Is there no defined description for an object, Inform 7 offers contextual system-responses.]
The small mailbox is a container in West of House.
[...depending on the defened context.]
The mailbox is fixed in place, closed, and openable. 
Understand "box" and "mail box" and "mail-box" as the mailbox.

A leaflet is in the mailbox. 
The description of the leaflet is "[leaflet text]".

To say leaflet text:
say "Zork is a game of adventure, danger, and low cunning. In it you will explore some of the most amazing territory ever seen by mortal man. Hardened adventurers have run screaming from the terrors contained within.[paragraph break]";
say "In Zork, the intrepid explorer delves into the forgotten secrets of a lost labyrinth deep in the bowels of the earth, searching for vast treasures long hidden from prying eyes, treasures guarded by fearsome monsters and diabolical traps![paragraph break]";
say "No PDP-10 should be without one![paragraph break]";
say "Zork was created at the MIT Laboratory for Computer Science by Tim Anderson, Marc Blank, Bruce Daniels, and Dave Lebling."

[==============================================]

[Rooms are spatially related to each other.]
A room called North of House is northeast of West of House.
"You are facing the north side of a white house. There is no door here, and all the windows are barred."

[A scenery generates no automatic contextual system-response.]
The boarded windows is here. It is scenery.
The description is "The windows are barred."

[Additional rules can be easily defined, offering more diverse / special interactions.]
Understand "window" as windows.
Check opening windows: say "There is no chance getting off the barrels." instead.
[(Try to open the door at "North of House"!)]

[All system-responses can be overwriten.]
Check going north in North of House: say "The forest is closely spaced. You can't go through." instead.
Check going south in North of House: say "There is no door at this side of the house." instead.

[==============================================]

A room called South of House is southeast of West of House.
"You are facing the south side of a white house. There is no door here, and all the windows are barred."

[Objects can only appear once in a game. Similar objects must be differentiated through IDs.]
The boarded windows 2 is here. It is scenery.
The description is "The windows are barred."
Understand "window" as windows 2.

[Slight variations are allowed.]
Check going south in South of House: say "The forest is closely spaced. You can't go through." instead.
Instead of going north in South of House, say "There is no door at this side of the house.".

[==============================================]

A room called Behind of House is southeast of North of House and northeast of South of House.
"You are behind the white house. In one corner of the house is a window that is [if the window is closed]slightly ajar. [otherwise]open." 

[Doors are always between two rooms.]
The window is a door. 
The window is west of Behind House and east of Kitchen.
The window is closed and openable.
The window is scenery.

[==============================================]

The description of Kitchen is "This is the kitchen of the white house. A table seems to have been used recently for the preparation of food. A wooden door leads to the west and to the east is a small window which is [if the window is open]open. [otherwise]closed."

The sack is in Kitchen. 
"On the table is an enlongated brown sack." 
The sack is a closed openable container.

Inside the sack is a lunch and a cyanide pill.
The lunch and the pill are edible.

After eating the cyanide pill: end the story.

A closed openable transparent container called a bottle is in Kitchen.
"Sitting on the table is a small bottle." 

Check going east in Behind of House: say "The forest is closely spaced. You can't go through." instead.

A door called the wooden door is a door.
The wooden door is west of Kitchen and east of Main Hall. The wooden door is scenery.
The wooden door is closed and locked. The silver key unlocks the wooden door.

[==============================================]

Forest is a region.
Northwest Forest, Northeast Forest, and Southwest Forest are in Forest.

Every turn when the player is in the Forest: 
if a random chance of 1 in 5 succeeds, say "You hear in the distance the chirping of a song bird.".

Instead of going nowhere in Forest, say "The ground is tightly covered with vegatation. There is no chance getting through.".

[==============================================]

A room called Northwest Forest is north of West of House and west of North of House.
"This is a dimly lit forest, with large trees all around. The white house is slightly visible on the southeast."

[==============================================]

A room called Northeast Forest is north of Behind of House and east of North of House.
"This is a dimly lit forest, with large trees all around. One particularly large tree with some low branches stands here."

Up a Tree is a room.
The description of Up a Tree is "You are about ten feet above the ground nestled among some large branches. The nearest branch above you is beyond your reach."

A door called the tree is a door.
The description of the tree is "A very large tree with a lot of low branches."
The tree is scenery.
The tree is open and not openable.
The tree is up from Northeast Forest and down from Up a Tree.

Check climbing the tree: try entering the noun instead.

A container called a birds nest is here.
"On the branch is a small birds nest.". 

A closed unopenable container called a jewel-encrusted egg is in the nest.
The initial appearance of the jewel-encrusted egg is "In the bird's nest is a large egg encrusted with precious jewels, apparently scavenged somewhere by a childless songbird. The egg is covered with fine gold inlay and ornamented in lapis lazuli and mother-of-pearl. Unlike most eggs, this one is hinged and has a delicate looking clasp holding it closed."
The description of the egg is "The egg is covered with fine gold inlay and ornamented in lapis lazuli and mother-of-pearl.  Unlike most eggs, this one is hinged and has a delicate looking clasp holding it closed."

[==============================================]

A room called Southwest Forest is south of West of House and west of South of House.
"This is a dimly lit forest, with large trees all around. The white house is on the northeast."

[==============================================]

[There is no "Southeast Forest". Move the player instead.]

Check going south in Behind of House: instead move player to South of House.
Check going east in South of House: instead move player to Behind of House.

[==============================================]

Every turn:
	if the Main Hall is visited for the first time: 
		say "Yeah!";
		say "This is the end of this small example!";
		say "Play again and read the source code for further information and instructions.";
		end the story.

[==============================================]

Understand "help" or "hint" or "hints" or "about" or "info" as asking for help.
Asking for help is an action out of world.
Carry out asking for help:
say "[example description]"

Part 4 - Credits

Understand "credits" as asking for credits.
Asking for credits is an action out of world.
Carry out asking for credits:
say "This exercise was created / prepared by csongor baranyai.[line break]";
say "csongorb (at) gmail (dot) com[line break]";
say "http://www.csongorb.com[paragraph break]";
say "Inform 7 is the work of Graham Nelson.[line break]";
say "Zork was created by Tim Anderson, Marc Blank, Bruce Daniels and Dave Lebling.[line break]";
say "Zork was ported to Inform 7 by Dean Menezes.[paragraph break]";
[http://i7-dungeon.sourceforge.net/index.html]
say "Thanks to Emily Short, generally.[line break]"
