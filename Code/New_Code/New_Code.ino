/*
   LazerTag Main Functions
   Version 1.0
   Authors: Alan Fernandez, Greg Tighe, Jake Hawes
   Last Edited: 1/5/16

   Notes:
   Decoding: DO NOT DECODE THE FIRST TWO BYTES OR THE LAST ONE. These contain team number and ID and should remain as 0-15.
*/

#include <IRremote.h>
#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>

/////////////////////
// Audio Things :3 //
/////////////////////

AudioPlaySdWav           playWav1;
// Use one of these 3 output types: Digital I2S, Digital S/PDIF, or Analog DAC
//AudioOutputI2S           audioOutput;
//AudioOutputSPDIF       audioOutput;
AudioOutputAnalog      audioOutput;
AudioConnection          patchCord1(playWav1, 0, audioOutput, 0);
AudioConnection          patchCord2(playWav1, 1, audioOutput, 1);
AudioControlSGTL5000     sgtl5000_1;

// Use these with the audio adaptor board
#define SDCARD_CS_PIN    10
#define SDCARD_MOSI_PIN  7
#define SDCARD_SCK_PIN   14

// grabbed these from Greg's code; not sure if pin numbers changed
#define SHIFT_REGISTER_DATA_PIN  2
#define SHIFT_REGISTER_CLOCK_PIN  1
#define SHIFT_REGISTER_LATCHCLOCK  0

// IR setup
int RECV_PIN = 4;
IRsend irsend;
IRrecv irrecv(RECV_PIN);
decode_results results;

// pins
int trigger_pin = 21;
int reload_pin  = 20;
int light_pin   = 17;

//////////////////////////
// Initialize Variables //
//////////////////////////

byte packetA[7];
byte team     = 11;
byte set_team = 11;
byte max_hp   = 25;
byte hp       = 25;
byte max_ammo = 10;
byte ammo     = 10;
byte respawns = 0;
byte reloads  = 255;
byte damage   = 1;
byte ID       = 15;
byte amount   = 25;

unsigned long sendPacket; //This is what the tagger shoots

// stats
int fire_delay = 100;
boolean player_dead = false;
bool received_pulse = true;
bool compatibility_enabled = false;

// timers
unsigned long last_shoot;
unsigned long last_reload;
int shoot_time = 300;
int reload_time = 1000;
bool shoot_ready = true;
bool reload_ready = true;

// displays
// 'b' for bar graph, '7' for 7 segment display
// designed to be modular; support for other display types can be coded in
char health_display_type = 'b';
int health_display_number = 1;
char ammo_display_type = 'b';
int ammo_display_number = 1;
bool team_color[3] = {false, false, false};

// for formatting display info to shift registers
byte low_hp[9] = {0x00000000, 0x00000001, 0x00000011, 0x00000111, 0x00001111, 0x00011111, 0x00111111, 0x01111111, 0x11111111};
byte high_hp[3] = {0x00000000, 0x00000001, 0x00000011};
byte low_ammo[9] = {0x00000000, 0x00000001, 0x00000011, 0x00000111, 0x00001111, 0x00011111, 0x00111111, 0x01111111, 0x11111111};
byte high_ammo[3] = {0x00000000, 0x00000001, 0x00000011};
byte red_byte = 0x001000000;
byte green_byte = 0x01000000;
byte blue_byte = 0x10000000;
byte first_out;
byte second_out;
byte third_out;
byte fourth_out;
byte fifth_out;

/////////////////////////////////
////FOR DEBUGGING AND TESTING////
/////////////////////////////////
 
//unsigned long results.value = 38076239; //Simulates the "results.value" variable that IRRecv returns after decoding the received packet
int count = 0;
  
/////////////////////////////////



void setup() {
  Serial.begin(9600);

  //Assign pins
  pinMode(trigger_pin, INPUT);
  pinMode(reload_pin, INPUT);
  pinMode(light_pin, OUTPUT);

  //Enable IR reciver
  irrecv.enableIRIn();
}

void loop() {
  delay(5);
  
  //Pulse Received
    if(irrecv.decode(&results)){
      Serial.println("received pulse");
      irrecv.resume();
      received_pulse = true;
      print_vars();
    }

  //Compatibility 
  if(received_pulse && (results.value == 1067460051)){
      Serial.println("Hit lol!");
      hit(true);
  }
  

  //Shoot
  //Only if the player is alive and is ready to shoot
  if (digitalRead(trigger_pin) && !player_dead && reload_ready && shoot_ready) {
    shoot();
  }

//  //Reload
  if (digitalRead(reload_pin) && reload_ready && !player_dead) {
    reload();
  }
//
  //Reset received_pulse status
  if (received_pulse) {
    received_pulse = false; //Already evaluated this hit, look for the next.
  }

}


///////////////////////////
////SECONDARY FUNCTIONS////
///////////////////////////


void hit(bool compatibility){
  if(hp <= 0){
    //dead();
  }else{
    hp--;
  }
  
  playFile("RELOAD.WAV");
  update_displays(hp, ammo, team);
}

 
void baseRefill(){
  hp = hp + hex_decoder(packetA[3]);
  ammo = ammo + hex_decoder(packetA[4]);
  //playFile("REFILL.WAV");
  update_displays(hp, ammo, team);
}

void shoot() {
  Serial.println("Shooting!");
  if (ammo > 0) {
    irsend.sendRC6(sendPacket, 32);
    irrecv.enableIRIn();
    ammo--;
    update_displays(hp, ammo, team);
    playFile("SHOOT.WAV");
//    last_shoot = millis();
//    shoot_ready = false;
  }
  else {
    playFile("OOA.WAV");
  }
}

void reload() {
  Serial.println("Reloading!");
 
if (reloads != 0) {
    ammo = max_ammo;
    reloads--;
    playFile("RELOAD.WAV");
    last_reload = millis();
    reload_ready = false;
    update_displays(hp, ammo, team);
  }
  else {
    playFile("OOA.WAV");
  }
}

void dead() {
  if (respawns <= 0) { //If respawns are already at 0, the player is now dead
    player_dead = true;
    playFile("DEAD.WAV");
    update_displays(0, 0, team);
  }
 
  else{
    Serial.println(" ");
    Serial.println("Respawning!");
    Serial.println(" ");
    respawns--; //Respawns are not yet 0, player is still alive.
    hp = 100; //Full health again
    update_displays(hp, ammo, team);
    playFile("RESPAWN.WAV");
  }
}


////////////////
////FEEDBACK////
////////////////

void update_displays(int d_hp, int d_ammo, byte d_team) {
  // user can add support for 7 segs and other types of displays
  // base code supports 1 bar graph for health and 1 for ammo

  digitalWrite(SHIFT_REGISTER_LATCHCLOCK, HIGH);

  // update health
  if (health_display_type == 'b') {
    // remap hp to a scale of 10 for bar graph
    d_hp = map(d_hp, 0, max_hp, 0, 10);
    byte first_out = high_hp[constrain(d_hp - 8, 0, 2)];
    byte second_out = low_hp[constrain(d_hp, 0, 8)];
  }

  else if (health_display_type == '7') {
    // update health with 7 seg
    // dependent on number of displays
  }

  // update ammo
  if (ammo_display_type == 'b') {
    // remap ammo to a scale of 10 for bar graph
    d_ammo = map(d_ammo, 0, max_ammo, 0, 10);
    byte third_out = high_ammo[constrain(d_ammo - 8, 0, 2)];
    byte fourth_out = low_ammo[constrain(d_ammo, 0, 8)];
  }

  else if (ammo_display_type == '7') {
    // update ammo count with 7 seg
    // dependent on number of displays
  }

  // update team color
  // set up fifth_out
  team_color_decoder(d_team);
  boolean red = team_color[0];
  boolean green = team_color[1];
  boolean blue = team_color[2];

  if (red) {
    fifth_out = fifth_out | red_byte;
  }
  if (green) {
    fifth_out = fifth_out | green_byte;
  }
  if (blue) {
    fifth_out = fifth_out | blue_byte;
  }

  // send out all data to fill shift registers
  shiftOut(SHIFT_REGISTER_DATA_PIN, SHIFT_REGISTER_CLOCK_PIN, MSBFIRST, first_out);
  shiftOut(SHIFT_REGISTER_DATA_PIN, SHIFT_REGISTER_CLOCK_PIN, MSBFIRST, second_out);
  shiftOut(SHIFT_REGISTER_DATA_PIN, SHIFT_REGISTER_CLOCK_PIN, MSBFIRST, third_out);
  shiftOut(SHIFT_REGISTER_DATA_PIN, SHIFT_REGISTER_CLOCK_PIN, MSBFIRST, fourth_out);
  shiftOut(SHIFT_REGISTER_DATA_PIN, SHIFT_REGISTER_CLOCK_PIN, MSBFIRST, fifth_out);

  // push data out of shift registers to update displays
  digitalWrite(SHIFT_REGISTER_LATCHCLOCK, LOW);
  delayMicroseconds(5);
  digitalWrite(SHIFT_REGISTER_LATCHCLOCK, HIGH);
  delayMicroseconds(5);

  print_vars();
}

void playFile(const char *filename)
{
  Serial.print("Playing audio file: ");
  Serial.println(filename);

  // Start playing the file.  This sketch continues to
  // run while the file plays.
  playWav1.play(filename);

  // A brief delay for the library read WAV info
  delay(5);

  // Simply wait for the file to finish playing.
  //while (playWav1.isPlaying()) {
    // uncomment these lines if you audio shield
    // has the optional volume pot soldered
    //float vol = analogRead(15);
    //vol = vol / 1024;
    // sgtl5000_1.volume(vol);
  //}
}


////////////////
////DECODING////
////////////////

void team_color_decoder(byte i_team) {
  switch (i_team) {
    case 0:                             //Admin Tagger: White
      color_assigner(true, true, true);
      break;
    case 1:                             //Team 1: Red
      color_assigner(true, false, false);
      break;
    case 2:                             //Team 2: Green
      color_assigner(false, true, false);
      break;
    case 3:                             //Team 3: Blue
      color_assigner(false, false, true);
      break;
    case 4:                             //Team 4: Yellow
      color_assigner(true, true, false);
      break;
    case 5:                             //Team 5: Magenta
      color_assigner(true, false, true);
      break;
    case 6:                             //Team 6: Cyan
      color_assigner(false, true, true);
      break;
    case 7:                             //Team 7: White
      color_assigner(true, true, true);
      break;
    case 8:                             //Team 8: Red (repeat :/)
      color_assigner(true, false, false);
      break;
    case 9:                             //Free for All: White
      color_assigner(true, true, true);
      break;
    case 10:                            //Human: Blue
      color_assigner(false, false, true);
      break;
    case 11:                             //Infected: Green
      color_assigner(false, true, false);
      break;
    case 12:                             //Phoenix Free for All: White
      color_assigner(true, true, true);
      break;
    case 13:                             //Phoenix Team 1: Red
      color_assigner(true, false, false);
      break;
    case 14:                             //Phoenix Team 2: Green
      color_assigner(false, true, false);
      break;
    case 15:                             //Phoenix Team 3: Blue
      color_assigner(false, false, true);
      break;
    default:                             //Turn off if failed :/
      color_assigner(false, false, false);
      break;
  
  }
}

//Hack fix to change less lines of code in the above function
void color_assigner(bool first, bool second, bool third){
  team_color[0] = first;
  team_color[1] = second;
  team_color[2] = third;
}

long hex_decoder(byte inc_hex){
   switch(inc_hex){
     case 0:
       return                0;
       break;
     case 1:
       return                1;
       break;
     case 2:
       return                3;
       break;
     case 3:
       return                5;
       break;
     case 4:
       return               10;
       break;
     case 5:
       return               20;
       break;
     case 6:
       return               25;
       break;
     case 7:
       return               30;
       break;
     case 8:
       return               40;
       break;
     case 9:
       return               50;
       break;
     case 10:
       return               60;
       break;
     case 11:
       return               70;
       break;
     case 12:
       return               80;
       break;
     case 13:
       return               90;
       break;
     case 14:
       return              100;
       break;
     case 15:
       return              255;
       break;
     default:
       return                0;
       break;
   }
  
}

/////////////////
////DEBUGGING////
/////////////////


//For debugging purposes

void print_vars(){
  Serial.println(" ");
  
  Serial.print("Team - Stored: ");
  Serial.print(team);
  Serial.print(" Received: ");
  Serial.println(packetA[1]);

  Serial.print("Ammo - Stored: ");
  Serial.print(ammo);
  Serial.print(" Received: ");
  Serial.println(packetA[3]);

  Serial.print("HP - Stored: ");
  Serial.print(hp);
  Serial.print(" Received: ");
  Serial.println(packetA[2]);

  Serial.print("Reloads - Stored: ");
  Serial.print(reloads);
  Serial.print(" Received: ");
  Serial.println(packetA[5]);

  Serial.print("Damage - Stored: ");
  Serial.print(damage);
  Serial.print(" Received: ");
  Serial.println(packetA[6]);

  Serial.print("ID - Stored: ");
  Serial.print(ID);
  Serial.print(" Received: ");
  Serial.println(packetA[7]);

  Serial.print("Respawns - Stored: ");
  Serial.print(respawns);
  Serial.print(" Received: ");
  Serial.println(packetA[4]);

  Serial.print("Dead: ");
  Serial.print(player_dead);
  Serial.println(" ");

  Serial.print("Compatibility: ");
  Serial.print(compatibility_enabled);
  Serial.println(" ");

  Serial.print("sendPacket: ");
  Serial.print(sendPacket);
  Serial.println(" ");

  Serial.print("receivedPacket: ");
  Serial.print(results.value);
  Serial.println(" ");
}
