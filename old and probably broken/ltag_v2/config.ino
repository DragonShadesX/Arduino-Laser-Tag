//---------------------------------------------------------------------------------------------------------------
//libraries

//#include <IRremote2.h>
#include <SPI.h>
#include <SdFat.h>
#include <SdFatUtil.h>
#include <SFEMP3Shield.h>

// Below is needed for non-interrupt driven audio playing
#if defined(USE_MP3_REFILL_MEANS) && USE_MP3_REFILL_MEANS == USE_MP3_Timer1
  #include <TimerOne.h>
#elif defined(USE_MP3_REFILL_MEANS) && USE_MP3_REFILL_MEANS == USE_MP3_SimpleTimer
  #include <SimpleTimer.h>
#endif

//this is the chip select for the sd card, which is pin 9 on the audio shield
//THIS IS STUPID IMPORTANT AND CAUSES ISSUES IF NOT CORRECTLY SET
//IT WILL DIFFER ACROSS DIFFERENT SHIELDS
const uint8_t SdChipSelect = 9;


//---------------------------------------------------------------------------------------------------------------
//pin assignments

//for reference, tagger pin assignments (in order) go;
//gnd, IRLED, fire feedback, trigger, reload, shield, firemode, firemode
//#define left_IR 37
//#define left_FF 39
//#define left_trigger 41
//#define left_reload 43
//#define left_shield 45
//#define left_FM1 47
//#define left_FM2 49
//
//#define right_IR 34
//#define right_FF 32
//#define right_trigger 30
//#define right_reload 28
//#define right_shield 26
//#define right_FM1 24
//#define right_FM2 22
//
//#define vest_haptics 50
//#define reciever 18
//#define SR_clock_pin 14
//#define SR_latch_pin 15
//#define SR_data_pin 16


//---------------------------------------------------------------------------------------------------------------
//variable assignments

//alert length is for alert duration after getting hit
unsigned int alert_length = 500; 
//fire length is for the length of the fire feedback
unsigned int fire_length = 200;

int health = 10;
int ammo = 60;
int mag_size = 60;
boolean reloading = false;
long last_fire = 0L;
long last_hit = 0L;
long last_load = 0L;
boolean fire_ready = true;
boolean buzzer_active = false;
boolean trigger_read = false;
boolean reload_read = false;


//---------------------------------------------------------------------------------------------------------------
//object instantiation
//IRsend tagger;
//IRrecv irrecv(reciever);
//decode_results results;

SdFat sd;

SFEMP3Shield MP3player;
