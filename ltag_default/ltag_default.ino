// LazerTag Code V1
// Written by Gregory Tighe
// This build for tagger used by: DEFAULT(REPLACE ME WITH YOUR NAME)

//------------------------USER CUSTOMIZATION------------------------------------------------------------------------------------

// Choose tagger characteristics
const int mag_size = 12  // anything under 30 is fair
const int health = 10 // don't change this
const char fire_type = s // s = semi, b = 3 round burst, a = auto, only semi currently supported

// Choose haptics and user feedback
const boolean feedback = false // change to true if you want feedback
const boolean shoot_feel = false // if you have haptics for shooting make this true
const boolean hit_feel = false // if you have haptics for being hit make this true
const boolean shoot_sound = false // if you have audio for shooting make this true
const boolean hit_sound = false // if you have audio for being hit make this true
const boolean shoot_light = false // if you have lights for shooting uncomment this
const boolean hit_light = false // if you have lights for being hit uncomment this

// Interactive pins
const int trigger_pin = 2 // must be interrupt 0, attached to trigger
const int target_pin = 3 // must be interrupt 1, attached to your hit/target point
const int ir_send_pin = XX // the pin for the IR sender, or flashlight

// Feedback pins
const int light_shoot_pin = XX // for the lights for shooting
const int light_hit_pin = XX // for the lights for getting hit
const int speaker_pin = XX // for the speaker, will need to change if a sound shield used
const int haptics_shoot_pin = XX // for the haptics for shooting
const int haptics_hit_pin = XX // for the haptics for being hit

const boolean custom_displays = false // change this to true if you have health/ammo displays
                                      // YOU WILL NEED TO EDIT THE update_displays FUNCTION IF THIS IS TRUE
const int display_pin_1 = XX
//make more of these or setup a shift register

//--------------------------SETUP ROUTINE---------------------------------------------------------------------------------------

// These allow nicer grouping of user customization as well as allowing us to check against the original values
// Would be useful for mapping health/ammo onto LED displays
// volatile allows the variable to be changed inside an interrupt
volatile int current_mag = mag_size // stores the user's current rounds in their mag
volatile int current_health = health // stores the user's current health

volatile boolean shoot_flag = false // 
volatile boolean hit_flag = false

void setup(){
  // just attach interrupts, nothing to see here...
  attachInterrupt(0, fire(), RISING); // attach interrupt for firing
  attachInterrupt(1, hit(), RISING); // attach interrupt for getting hit
}

void loop(){
  // code for haptics, lights and sound
  // basically this section will run and be intterupted by firing and getting hit
  // this flag type construct allows for the interrupts to have as little code as possible in them
  ATOMIC_BLOCK(RESTORE_STATE){} // put code here to make sure it doesn't get interrupted by the fire/hit interrputs
  if(shoot_flag){
    if(shoot_feel){digitalWrite(haptics_shoot_pin, HIGH)}; // turn on the haptics
    if(shoot_sound){tone(speaker_pin, 100)}; // change the frequency to what you want
    if(shoot_light){digitalWrite(light_shoot_pin, HIGH)}; // turn on the lights
    digitalWrite(ir_send_pin, HIGH); // turn on the flashlight
    delay(95); 
    digitalWrite(ir_send_pin, LOW); // turn off flashlight
    // btw in ideal circumstances (only constraint is muscle signal travel time) a human can fire ~24 rounds per second
    // trained agents/soldiers clock at ~6-10 rounds per second, untrained at ~2-3 (single weapon)
    // this is set at ten flashes per second, or 600 flashes per minute
    // could replace delays with a for loop that changes the pitch of tone for a pew sound
    noTone(); // kill the noise
    digitalWrite(haptics_shoot_pin, LOW); // kill the haptics
    digitalWrite(light_shoot_pin, LOW); // kill the lights
    shoot_flag = false;
    delay(5); // for stability on an auto system
  }
  if(hit_flag && feedback){
    if(hit_feel){digitalWrite(haptics_hit_pin, HIGH)}; // turn on the haptics
    if(hit_sound){tone(speaker_pin, 100)}; // change the frequency to what you want
    if(hit_light){digitalWrite(light_hit_pin, HIGH)}; // turn on the lights
    delay(95);  // could replace this with a for loop that changes the pitch of tone for a buzz sound
    noTone(); // kill the noise
    digitalWrite(haptics_hit_pin, LOW); // kill the haptics
    digitalWrite(light_hit_pin, LOW); // kill the lights
    hit_flag = false;
    delay(5); // for stabilty
  }
  if(custom_displays){
    update_displays(current_mag, current_health); // calls the display function (YOU WRITE THAT)
  }
}

//--------------------------HELPER FUNCTIONS AND INTERRUPTS---------------------------------------------------------------------

void fire(){
  // this is the interrupt for pressing the trigger
  if(current_mag > 0){
    shoot_flag = true;
    current_mag--;
  }
}

void hit(){
  // this is the interrupt for getting hit
  current_health--;
  if(current_health == 0){
    detachInterrupt(0); // detaches firing interrupt so tagger is now useless
    // add more stuffs here if you want more of a heads-up you're out of the match
  }
}

void update_displays(int in_ammo, int in_health){
  // make sure you added pins for the displays
  // add code here
  // for a 10 led bar graph I would suggest mapping in_ammo from mag_size-0 to 10-0 and displaying the output
  // for health just display the in_health
  // for 7 segment displays you'll need to make a multiplexing table for your display and then write the ammo/health to it
}
