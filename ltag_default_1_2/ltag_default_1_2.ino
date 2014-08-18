// LazerTag Code V1.2
// Written by Gregory Tighe
// This build for tagger used by: DEFAULT
// This version removes the need for the crystal setup on tagger
// May also break PWM and millis functions though

// NOTE ON FIRING SPEED:
// In ideal circumstances (only constraint is muscle signal travel time) a human can fire ~12 rounds per second (one weapon)
// Trained agents/soldiers with modified weapons clock at ~6-10 rounds per second (single weapon)
// Untrained civilians clock in at ~2-3 rounds per second (single weapon)
// Rate of fire for most automatic weapons is 600-1000 rounds per minute
// This code is set at ten flashes per second, or 600 flashes per minute


//------------------------USER CUSTOMIZATION------------------------------------------------------------------------------------

// const means it is a constant and is read only, ie it cannot be changed period

// DO NOT CHANGE THIS IS THE FREQUENCY OF THE LIGHT AND MUST REMAIN CONSTANT across all taggers
const int carrier_freq = 38000  // The frequency at which the light should flash

// Choose tagger characteristics
const int mag_size = 12  // anything under 30 is fair
const int health = 10 // don't change this
const char fire_type = s // s = semi, b = 3 round burst, a = auto.
const int burst_size = 3 // number of shots to be fired per burst

// Interactive pins
const int trigger_pin = XX // pin for the trigger
const int target_pin = XX // must be interrupt 1, attached to your hit/target point (3 for an uno)
const int ir_send_pin = XX // the pin for the IR sender, or flashlight
const int reload_pin = XX // the pin for the reload button/switch

// Feedback pins
// Put pins for user feedback here

// Display pins
const boolean custom_displays = false // change this to true if you have health/ammo displays
//put pins for the display here

//--------------------------SETUP ROUTINE---------------------------------------------------------------------------------------

// volatile allows the variable to be changed inside an interrupt by storing it in RAM, not a register

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
    }
  }
}


// Helper function for updating displays
void update_displays(int in_ammo, int in_health){
  // put code for a custom display here
  // for a 10 led bar graph I would suggest mapping in_ammo from mag_size-0 to 10-0 and displaying the output
  // for health just display the in_health
  // for 7 segment displays you'll need to make a multiplexing table for your display and then write the ammo/health to it
}
