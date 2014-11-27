// LazerTag Code V1.3
// Written by Gregory Tighe
// This build for tagger used by: PROTOTYPE
// This version removes the need for the crystal setup on tagger
// May also break PWM on some arduinos

// NOTE ON FIRING SPEED:
// In ideal circumstances (only constraint is muscle signal travel time) a human can fire ~12 rounds per second (one weapon)
// Trained agents/soldiers with modified weapons clock at ~6-10 rounds per second (single weapon)
// Untrained civilians clock in at ~2-3 rounds per second (single weapon)
// Rate of fire for most automatic weapons is 600-1000 rounds per minute
// This code is set at ten flashes per second, or 600 flashes per minute
// Unfortunately, the tone() function can only be running on one pin at a time
// This means that any sound thing will not run while the tagger is flashing
// The tagger must be alowed to flash for 50ms before another call to tone() is made


//------------------------USER CUSTOMIZATION------------------------------------------------------------------------------------

// const means it is a constant and is read only, ie it cannot be changed period

// Choose tagger characteristics
const int mag_size = 30  // anything under 30 is fair
const int health = 10 // don't change this
const char fire_type = b // s = semi, b = 3 round burst, a = auto.
const int burst_size = 3 // number of shots to be fired per burst

// Interactive pins
const int trigger_pin = XX // pin for the trigger
const int target_pin = XX // must be interrupt 1, attached to your hit/target point (3 for an uno)
const int ir_send_pin = XX // the pin for the IR sender, or flashlight
const int reload_pin = XX // the pin for the reload button/switch

// Feedback pins
// Put pins for user feedback here
// Remember that some analog inputs can be used as digital I/O pins
const int speaker_pin = XX  // the pin for the speaker

// Display pins
const boolean custom_displays = true // change this to true if you have health/ammo displays
//put pins for the display here
// this is a very pin hungry method but it's cheap and this is a prototype
const int h_display_1 = XX
const int h_display_2 = XX
const int h_display_3 = XX
const int h_display_4 = XX
const int h_display_5 = XX
const int h_display_6 = XX
const int h_display_7 = XX
const int h_display_8 = XX
const int h_display_9 = XX
const int h_display_10 = XX

//--------------------------SETUP ROUTINE---------------------------------------------------------------------------------------

// volatile allows the variable to be changed inside an interrupt by storing it in RAM, not a register

// DO NOT CHANGE THIS IS THE FREQUENCY OF THE LIGHT AND MUST REMAIN CONSTANT across all taggers
const int carrier_freq = 38000  // The frequency at which the light should flash

// These allow nicer grouping of user customization as well as allowing us to check against the original values
// Would be useful for mapping health/ammo onto LED displays
volatile int current_mag = mag_size // stores the user's current rounds in their mag
volatile int current_health = health // stores the user's current health
volatile int old_mag = current_mag // used to keep the displays from updating continuously
volatile int old_health = current_health // used to keep the displays from updating continuously

volatile boolean enabled = true // flag to stop tagger functions on zero health
volatile boolean shoot_flag = true // used to create semi functionality in semi and burst modes
volatile boolean hit_flag = false // tells the tagger to take a hit on the next main loop
volatile boolean reload_flag = true // a means to stop constant reloading on reload button push

void setup(){
  // just attach interrupts, nothing to see here...
  pinMode(trigger_pin, INPUT); // set trigger pin to an input
  pinMode(target_pin, INPUT); // set target pin to an input
  pinMode(ir_send_pin, OUTPUT); // set flashlight pin to an output
  attachInterrupt(1, hit(), RISING); // attach interrupt for getting hit
  pinMode(h_display_1, OUTPUT);
  pinMode(h_display_2, OUTPUT);
  pinMode(h_display_3, OUTPUT);
  pinMode(h_display_4, OUTPUT);
  pinMode(h_display_5, OUTPUT);
  pinMode(h_display_6, OUTPUT);
  pinMode(h_display_7, OUTPUT);
  pinMode(h_display_8, OUTPUT);
  pinMode(h_display_9, OUTPUT);
  pinMode(h_display_10, OUTPUT);
}

//------------------------MAIN LOOP----------------------------------------------------------------------------------------------

void loop(){
  // main code
  // basically this section will run and be intterupted getting hit
  // this flag type construct allows for the interrupt to have as little code as possible in it
  // ATOMIC_BLOCK(RESTORE_STATE){} // put code here to make sure it doesn't get interrupted by the hit interrput
  
  // FIRE CODE ----------------------------------------------------------------
  
  if(digitalRead(trigger_pin) && shoot_flag && enabled){
    if(fire_type == 's'){
      fire();
      shoot_flag = false;
    }
    if(fire_type == 'b'){
      for(int i = burst_size, i > 0, i--){
        fire();
      }
      shoot_flag = false;
    }
    if(fire_type == 'a'){
      fire();
    }
  }
  if(!digitalRead(trigger_pin) && !shoot_flag){
    shoot_flag = true;
  }
  
  // HIT CODE -----------------------------------------------------------------
  
  if(hit_flag){
    hit_flag = false;
    // add code here for feedback on being hit
  }
  
  // DISPLAY CODE -------------------------------------------------------------
  
  if(custom_displays){
    if((current_mag != old_mag) || (current_health != old_health)){
      old_mag = current_mag;
      old_health = current_health;
      update_displays(current_mag, current_health); // calls the display function (YOU WRITE THAT)
    }
  }
  
  // RELOAD CODE --------------------------------------------------------------
  
  if(digitalRead(reload_pin) && reload_flag){
    current_mag = mag_size;
    reload_flag = false;
  }
  if(!digitalRead(reload_pin) && !reload_flag){
    reload_flag = true;
  }
}

//--------------------------HELPER FUNCTIONS AND INTERRUPTS---------------------------------------------------------------------

// Helper function for sending a flash
void fire(){
  if(current_mag > 0){
    current_mag--;
    // add code somewhere in here for firing feedback
    tone(ir_send_pin, carrier_freq, 50);
    delay(50);
    // the tone function is now free for use
    //delay(50);
    for(int i = 1100, i > 700, i = i-8){
      tone(speaker_pin, i, 1);
    }
  }
}


// Interrupt for being hit
void hit(){
  if(enabled){
    current_health--;
    hit_flag = true;
    if(current_health <= 0){
      enabled = false; // turn off tagger functions by setting this to false
      // add more stuffs here if you want more of a heads-up you're out of the match
      tone(speaker_pin, 200, 50);  // this will kill a flash and the noise from a flash
    }
  }
}


// Helper function for updating displays
void update_displays(int in_ammo, int in_health){
  // put code for a custom display here
  // for a 10 led bar graph I would suggest mapping in_ammo from mag_size-0 to 10-0 and displaying the output
  // for health just display the in_health
  // for 7 segment displays you'll need to make a multiplexing table for your display and then write the ammo/health to it
  digitalWrite(h_display_10, (in_health > 9));
  digitalWrite(h_display_9, (in_health > 8));
  digitalWrite(h_display_8, (in_health > 7));
  digitalWrite(h_display_7, (in_health > 6));
  digitalWrite(h_display_6, (in_health > 5));
  digitalWrite(h_display_5, (in_health > 4));
  digitalWrite(h_display_4, (in_health > 3));
  digitalWrite(h_display_3, (in_health > 2));
  digitalWrite(h_display_2, (in_health > 1));
  digitalWrite(h_display_1, (in_health > 0));
}
