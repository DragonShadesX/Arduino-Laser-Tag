/*
 * If you have any other hardware requiring physical pins, assign the pins here.
 * You will need to add the pinMode() for those pins in the setup() function in the main_code file
 * This file is also where you should initialize any random variables you wish to have control over.
 */

// include the libraries
#include <IRremote.h>
//#include <Audio.h>
//#include <Wire.h>
//#include <SPI.h>
//#include <SD.h>
//#include <SerialFlash.h>

#define LED_PIN  5 //has to be 5 for a teensy
#define RECV_PIN  4
// #define TRIGGER_PIN  20
// #define RELOAD_PIN  21
#define HAPTICS_VIBRATE_PIN  16
#define HAPTICS_SOLENOID_PIN  17
#define SHIFT_REGISTER_DATA_PIN  0
#define SHIFT_REGISTER_CLOCK_PIN  2
#define SHIFT_REGISTER_LATCHCLOCK  1
#define SHIFT_INPUT_DATA_PIN  XX
#define SHIFT_INPUT_CLOCK_PIN  XX
#define SHIFT_INPUT_LATCH_PIN  XX
#define SDCARD_CS_PIN    10
#define SDCARD_MOSI_PIN  7
#define SDCARD_SCK_PIN   14

unsigned int alert_length = 500; 
unsigned int slide_length = 200;

//------------------------------DO NOT MODIFY VARIABLES BELOW------------------------------

/*
 * These variables/classes etc. are used in vital functions of the tagger.
 * YOU MAY NOT MODIFY THEM OR THEIR VALUES ANYWHERE IN THE CODE.
 * That would be cheating.
 * And cheating is not acceptable.
 */

////audio shield setup stuffs
//AudioPlaySdWav           playWav1;
//// Use one of these 3 output types: Digital I2S, Digital S/PDIF, or Analog DAC
//AudioOutputI2S           audioOutput;
////AudioOutputSPDIF       audioOutput;
////AudioOutputAnalog      audioOutput;
//AudioConnection          patchCord1(playWav1, 0, audioOutput, 0);
//AudioConnection          patchCord2(playWav1, 1, audioOutput, 1);
//AudioControlSGTL5000     sgtl5000_1;

IRsend irsend;
IRrecv irrecv(RECV_PIN);
decode_results results;

int health = 10;
int ammo = 10;
int mag_size = 10;
boolean reloading = false;
long last_fire = 0L;
long last_hit = 0L;
long last_load = 0L;
boolean fire_ready = true;
boolean solenoid_active = false;
boolean buzzer_active = false;
booelan trigger_read = false;
boolean reload_read = false;






















