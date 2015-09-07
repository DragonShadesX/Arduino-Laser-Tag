/*
 * If you have any other hardware requiring physical pins, assign the pins here.
 * You will need to add the pinMode() for those pins in the setup() function in the main_code file
 * This file is also where you should initialize any random variables you wish to have control over.
 */

// include the library 
#include <IRremote.h>

// pin that controlls the IR LEDs 
// this should be a PWM capable pin, and on an arduino teensy must be pin 5
int LED_PIN = XX;

// pin that the IR Receiver data pin is connected to
// no special requirements
int RECV_PIN = XX;

// pin that connects to the trigger button
// button must read logic high when pressed, logic low when released
int TRIGGER_PIN = XX;

// pin that connects to the overheat LED
// LED should have appropriae resistor so the LED will not burn out
int OVERHEAT_ALERT_LED_PIN = XX;

// pin that connects to the you-are-hit LED
// LED should have appropriae resistor so the LED will not burn out
int HIT_ALERT_LED_PIN = XX;

// length of time in milliseconds that the hit alert LED should stay lit after being hit
int alert_length = XX;

//------------------------------DO NOT MODIFY VARIABLES BELOW------------------------------

/*
 * These variables/classes etc. are used in vital functions of the tagger.
 * YOU MAY NOT MODIFY THEM OR THEIR VALUES ANYWHERE IN THE CODE.
 * That would be cheating.
 * And cheating is not acceptable.
 */

// these are variables and setup functions for the IRremote library
IRsend irsend;
IRrecv irrecv(RECV_PIN);
decode_results results;
 
// player health
int health = 10;

// used to track current tagger heat
int heat = 0;

// max heat allowed before overheat
int overheat = 10;

// stores last time fired, used for overheat and fire-rate tracking
long last_fire = 0L;

// stores last time hit, used for indicator LED
long last_hit = 0L;

// stores last cooldown for cooldown over time functionality
long last_cooldown = 0L;

// stores if tagger is overheated, used to disable tagger if overheated
boolean overheated = false;

// stores if trigger has been released since it was pressed
// used for semi-auto functionality
boolean fire_ready = true;
