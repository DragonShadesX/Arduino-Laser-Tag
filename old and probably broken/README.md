Arduino-Laser-Tag
=================

A repository for my arduino laser tag files

The idea is to create a laser tag system comparable to commercial grade systems found at arenas.

ltag_simple_tagger is a proof of concept build and is for debugging.

ltag_ fire/hit _test are also mainly for debugging.

ltag_custom_your_name_here is the only working full system code.
It is very limited and works, but it doesn't do a whole lot.  Documentation for it is in it's files.

ltag_custom_dragonshadesx is a working build of my tagger.  
So far so good.  There's a lot of comments removed right now because it's still a work in progress and I don't like sorting through it all.
Also because it's 5 in the morning and I want a backup so I can sleep well knowing my code is saved.

libraries is the local libraries you'll need for the files, the only library there right now is from:
http://www.pjrc.com/teensy/td_libs_IRremote.html
This is a modified version of the library originally found at
http://www.righto.com/2009/08/multi-protocol-infrared-remote-library.html
You'll need to replace whatever libraries you have (IRRemoteRobot or whatever) with this if you're using a standard arduino (uno, due, etc).
If you're using a teensy it should come with it's own libraries, just make sure to install them when you run the teensyduino addon.
