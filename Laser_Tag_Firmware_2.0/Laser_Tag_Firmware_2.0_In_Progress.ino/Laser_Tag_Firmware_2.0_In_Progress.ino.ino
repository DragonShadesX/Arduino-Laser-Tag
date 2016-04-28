/*
 * LazerTag Main Functions
 * Version 1.0
 * Authors: Alan Fernandez, Greg Tighe
 * Last Edited: 26/4/16
 * 
 * Notes:
 * Decoding: DO NOT DECODE THE FIRST TWO BYTES OR THE LAST ONE. These contain team number and ID and should remain as 0-15. 
 */

#include <IRremote.h>

// IR setup
int RECV_PIN = 10;
IRsend irsend;
IRrecv irrecv(RECV_PIN);
decode_results results;

// pins
int triggerPin = 1;
int reloadPin  = 2;
int lightPin   = 3;

//////////////////////////
// Initialize Variables //
//////////////////////////

byte packetA[7];
byte team     = 0x0;
byte set_team = 0x0;
byte hp       = 0x0;
byte maxAmmo  = 0x0;
byte ammo     = 0x0;
byte respawns = 0x0;
byte reloads  = 0x0;
byte damage   = 0x0;
byte ID       = 0x0;
byte amount   = 0x0;

boolean playerDead = false;
int count = 0;
bool receivedPulse = true;
unsigned long value = 31723855; //Remove - For test purposes only


// stats
int fireDelay = 100;

// timers
unsigned long lastShoot;
unsigned long lastReload;
int shootTime = 300;
int reloadTime = 1000;
bool shootReady = true;
bool reloadReady = true;

void setup(){
  Serial.begin(9600);

  //Assign pins
  pinMode(triggerPin, INPUT);
  pinMode(reloadPin, INPUT);
  pinMode(lightPin, OUTPUT);

  //Enable IR reciver
  irrecv.enableIRIn();
}

void loop(){ 
  Serial.println("   ");
  longToArray(value);
  
//*********************************Pulse Received
//  if(irrecv.decode(&results)){
//    longToArray(value);
//    irrecv.resume();
//    receivedPulse = true;
//  }

//*********************************Hit by admin tool
  if(receivedPulse && packetA[0] == 0){
    configureTagger();
  }

//*********************************Hit by non-friendly, non-base
  if(receivedPulse && packetA[0] != 0 && packetA[0] <= 14 && packetA[1] != team){ //Byte 0 is between 1 and 14 indicating a team
    hit();
  }

//*********************************Hit by base
  if(receivedPulse && packetA[1] == 15 && packetA[0] == team){ //Received packet from a friendly base station
    baseRefill();
  }

//*********************************(Prevents user from spamming)
  if (!reloadReady && millis() > lastReload + reloadTime) {
    reloadReady = true;
  }
  
//*********************************Fire Rate
  if (!shootReady && millis() > lastShoot + shootTime) {
    shootReady = true;
  }
  
//*********************************Trigger Pressed
  if(digitalRead(triggerPin) && !playerDead && ammo != 0 && reloadReady && shootReady){ //Fire only if the player is alive and has ammo and is ready to shoot
    shoot();
  }

//*********************************Trigger Pressed
  if(digitalRead(reloadPin) && reloadReady && !dead) {
    reload();
  }

//*********************************Fire Modes

 
//*********************************Reset receivedPulse status
  if(receivedPulse){
    receivedPulse = false; //Already evaluated this hit, look for the next.
  }

  updateDisplays();
  count++;
  if(count == 1){
    value = 575668223; //224FFFFF Shot by Team 2 player, -10hp
    receivedPulse = true;
  }else if(count == 2){
    value = 1432354815; //555FFFFF Shot by Team 5 player, -20hp
    receivedPulse = true;
  }else if(count == 3){
    value = 1609564159; //5FEFFFFF Shot by team 5 player, -100hp
    receivedPulse = true;
  }else{
    value = 1609564159; //5FEFFFFF Shot by team 5 player, -100hp
    receivedPulse = true;
  }
}


///////////////////////////
////SECONDARY FUNCTIONS////
///////////////////////////


void hit(){
  Serial.println("Got hit");
  if(hp < hex_decoder(packetA[2])){
    hp = 0;
  }else{
    hp = hp - hex_decoder(packetA[2]); //Took a hit
  }
  
  if(hp <= 0){
    Serial.println("Dead!");
    dead();
  }
}

void baseRefill(){
  hp = hp - hex_decoder(packetA[3]);
  ammo = ammo + hex_decoder(packetA[4]);
}

void shoot(){
  ammo--;
  playSound("reload");
  lastReload = millis();
  reloadReady = false;
}

void reload(){
  if(reloads != 255){
    ammo = maxAmmo;
    playSound("reload");
    lastReload = millis();
    reloadReady = false;
  }else if(reloads != 0){
    ammo = maxAmmo;
    reloads--;
    playSound("reload");
    lastReload = millis();
    reloadReady = false;
  }
}

void dead(){ 
  if(respawns <= 0){ //If respawns are already at 0, the player is now dead
    playerDead = true;
  }else{
    Serial.println("Respawning!");
    respawns--; //Respawns are not yet 0, player is still alive.
    hp = 100; //Full health again
  }
}

//void noAmmo(){
//  noAmmo = true;
//  ammo = 0;
//}

//Sets all the variables to those given by the admin tool
void configureTagger(){
    team     =  packetA[1];
    hp       =  hex_decoder(packetA[2]);
    maxAmmo  =  hex_decoder(packetA[3]);
      ammo   =  hex_decoder(packetA[3]); //Reload the tagger
    respawns =  hex_decoder(packetA[4]);
    reloads  =  hex_decoder(packetA[5]);
    damage   =  hex_decoder(packetA[6]);
    ID       =  packetA[7];
}



////////////////
////FEEDBACK////
////////////////


//Displays the stats (Ammo & Health)
void updateDisplays(){
  printVars();
}

void playSound(String sfx) {
  // how to deal with sound overlap? Set priority?
  // how many sounds can this audio shield play simultaneously?

  /*
    if (sfx == "shoot")
    // play shoot sound
    else if (sfx == "reload")
    // play reload sound
    else if (sfx == "hit")
    // play hit sound
    else if (sfx == "outOfAmmo")
    //play outOfAmmo sound
  */
}


////////////////
////DECODING////
////////////////


//Bit shifting the individual characters into cells in the array
void longToArray(unsigned long packet){
  packetA[7] = (packet & 0xF);
  packetA[6] = ((packet >> 4) & 0xF);
  packetA[5] = ((packet >> 8) & 0xF);
  packetA[4] = ((packet >> 12) & 0xF);
  packetA[3] = ((packet >> 16) & 0xF);
  packetA[2] = ((packet >> 20) & 0xF);
  packetA[1] = ((packet >> 24) & 0xF);
  packetA[0] = ((packet >> 28) & 0xF);
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
       return                33;
       break;
   }
}

/////////////////
////DEBUGGING////
/////////////////


//For debugging purposes
void printVars(){
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
  Serial.print("Received: ");
  Serial.println(packetA[7]);
  
  Serial.print("Respawns - Stored: ");
  Serial.print(respawns);
  Serial.print(" Received: ");
  Serial.println(packetA[4]);

  Serial.print("Dead: ");
  Serial.print(playerDead);
  Serial.println(" ");
}

