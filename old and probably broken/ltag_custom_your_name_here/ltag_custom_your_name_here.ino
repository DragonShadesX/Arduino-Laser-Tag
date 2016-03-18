/*
 * Original File by: Greg Tighe (dragonshadesx)
 * Modified by: name_here
 * For tagger used by: name_here
 * 
 * Hello!
 * 
 * If you are reading this then you are modifying code for a custom laser tag tagger.
 * There will be sections of code you should not modify and sections that you can.
 * Any sections of code you should not modify will be marked as such.
 * Any variables you are not allowed to modify are marked as such in the config file.
 * If you are not clear on whether something is allowed or not, ask an admin. (only current admin is Greg Tighe)
 * If you don't know what part of this code does, don't modify it.
 * Other than that, everything is fair game.  
 * 
 * To get this working you will need to assign the correct physical pin numbers on your arduino to
 *    the corresponding variables in the config file.  You will also need to change alert_length to
 *    whatever duration you want it to be.
 * 
 * This build currently supports:
 *  - "shooting" (semi-auto, locked at 5 per second)
 *  - being hit with LED alert
 *  - overheat-style reloading with LED Overheat Alert
 *  - free-for-all game mode ONLY
 * 
 * Tagger hardware requirements:
 *  - Trigger (push-button)
 *  - IR LEDs (LED, potentially powered through a relay and additional batteries)
 *  - Overheat Indicator (LED)
 *  - Hit Indicator (LED)
 *  - IR Receiver (38KHz)
 * 
 * Potential Issues and Cause
 *  - Firing may stop an incoming shot from being regocnized.  This is due to the tagger turning off IR Reads
 *    while firing to stop the tagger from being able to hit itself.  This is built into the library and cannot be changed easily.
 * 
 * This project was designed using the IRremote library from:
 * http://www.righto.com/2009/08/multi-protocol-infrared-remote-library.html
 * 
 * A version that works with more arduinos can be found here:
 * http://www.pjrc.com/teensy/td_libs_IRremote.html
 * 
 * This code has no warranties or anything at all really.  
 * It's provided as is and if it breaks anything it's not my fault.
 * You are free to use this code how you want so long as:
 *  You do not make money on it
 *  You credit me and the libraries/makers of those libraries in your code.
 * So yeah.  Have fun.
 */
