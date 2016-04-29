/*

   This code is for the Admin tool for Lazer Tag.
   Code by Greg Tighe (DragonShadesX)
   This is for an ISP at Worcester Polytechnic Institute, D-2016

    Phoenix LTX send values
    ffa - 3FA025D3
    t1  - A6E654CD
    t2  - 79186E41
    t3  - 80B71B5D

Default byte to number code/decoding
(0=0, 1=1, 2=3, 3=5, 4=10, 5=20, 6=25, 7=30, 8=40, 9=50, A=60, B=70, C=80, D=90, E=100 F=infinite/all)

*/

//LCD Library
#include <LiquidCrystal.h>

//IR Library
#include <IRremote.h>

//pin assignments for the button pad
#define dir_up 16
#define dir_dwn 14
#define dir_left 17
#define dir_right 15
#define choose 18

//pin assignment for the ir receiver (sender is bound to pin 5 automatically)
#define ir_sig 21

//IR receive object
IRrecv irrecv(ir_sig);

//IR send object
IRsend irsend;

//data from irrecv
decode_results results;

//used to store last direction button pushed to stop constant scrolling
char last_dir = 'o';

//stores place in menu system
int menu_loc = 0;
//used to change values in the menu system
int val_change = 0;

//components of the output byte to send
byte team = 0x0;
byte set_team = 0x0;
byte hp = 0x0;
byte ammo = 0x0;
byte respawns = 0x0;
byte reloads = 0x0;
byte damage = 0x0;
byte ID = 0x0;

//used to keep display from constnantly updating, saves processor power and time
boolean update_displays = true;

// initialize the library, RS (4), EN(6), D4-D7 (11-14)
LiquidCrystal lcd(0, 2, 7, 8, 9, 10);

void setup() {

  //it was easier to wire pin 1 to an LCD pin than to ground.
  //it doesn't sink current, just sets read/write mode on the LCD
  pinMode(1, OUTPUT);
  digitalWrite(1, LOW);  

  //start the LCD with 16 columns and 2 rows
  lcd.begin(16, 2);

  //set pinmodes
  pinMode(dir_up, INPUT);
  pinMode(dir_dwn, INPUT);
  pinMode(dir_left, INPUT);
  pinMode(dir_right, INPUT);
  pinMode(choose, INPUT);

  //enable ir reading  
  irrecv.enableIRIn();

  //blinks led with IRLED for visual feedback
  //irrecv.blink13(true);

}

void loop() {

  //if it detects a pulse, save results and update the display
  if(irrecv.decode(&results)){
    update_displays = true;
    irrecv.resume();
  }
  
  //read input pins and set variables accordingly for the case statement
  if ((last_dir != 'u') && !digitalRead(dir_up)) {
    menu_loc--;
    update_displays = true;
    last_dir = 'u';
    if (menu_loc <= -1) {
      menu_loc = 7;
    }
  }
  if ((last_dir != 'd') && !digitalRead(dir_dwn)) {
    menu_loc++;
    update_displays = true;
    last_dir = 'd';
    if (menu_loc >= 8) {
      menu_loc = 0;
    }
  }
  if ((last_dir != 'l') && !digitalRead(dir_left)) {
    val_change = -1;
    update_displays = true;
    last_dir = 'l';
  }
  if ((last_dir != 'r') && !digitalRead(dir_right)) {
    val_change = 1;
    update_displays = true;
    last_dir = 'r';
  }
  if ((last_dir != 'c') && !digitalRead(choose)){
    update_displays = true;
    last_dir = 'c';
  }
  if ( digitalRead(dir_up) && digitalRead(dir_dwn) && digitalRead(dir_left) && digitalRead(dir_right) && digitalRead(choose) ) {
    last_dir = 'o';
  }

  //if a button was pressed, do something
  if (update_displays) {
    update_displays = false;
    switch (menu_loc) {
      case 0:
        lcd.clear();
        lcd.print("DIAGNOSTIC");
        lcd.setCursor(0, 1);
        lcd.print(results.value, HEX);
        break;
      case 1:
        lcd.clear();
        lcd.print("Team");
        lcd.setCursor(0, 1);
        team = constrain(team + val_change, 0x0, 0xf);
        lcd.print(hex_to_team(team));
        break;
      case 2:
        lcd.clear();
        lcd.print("Health");
        lcd.setCursor(0, 1);
        hp = constrain(hp + val_change, 0x0, 0xf);
        lcd.print(hex_decoder(hp));
        break;
      case 3:
        lcd.clear();
        lcd.print("Clip Size");
        lcd.setCursor(0, 1);
        ammo = constrain(ammo + val_change, 0x0, 0xf);
        lcd.print(hex_decoder(ammo));
        break;
      case 4:
        lcd.clear();
        lcd.print("Respawns");
        lcd.setCursor(0, 1);
        respawns = constrain(respawns + val_change, 0x0, 0xf);
        lcd.print(hex_decoder(respawns));
        break;
      case 5:
        lcd.clear();
        lcd.print("Reloads");
        lcd.setCursor(0, 1);
        reloads = constrain(reloads + val_change, 0x0, 0xf);
        lcd.print(hex_decoder(reloads));
        break;
      case 6:
        lcd.clear();
        lcd.print("Damage");
        lcd.setCursor(0, 1);
        damage = constrain(damage + val_change, 0x0, 0xf);
        lcd.print(hex_decoder(damage));
        break;
      case 7:
        lcd.clear();
        lcd.print("Tagger ID");
        lcd.setCursor(15, 1);
        ID = constrain(ID + val_change, 0x0, 0xf);
        lcd.print(ID, HEX);
        break;
      default:
        lcd.clear();
        lcd.print("the menu broke");
        lcd.setCursor(0, 1);
        lcd.print("  :(");
        break;
    }
    //reset the change value
    val_change = 0;

    if (last_dir == 'c'){
      irsend.sendRC6( ((team << 28) | (set_team << 24) | (hp << 20) | (ammo << 16) | (respawns << 12) | (reloads << 8) | (damage << 4) | ID), 32);
      irrecv.enableIRIn();
    }
  }
}


//takes a hex value and returns a string of the corresponding integer it stands for in the laser tag firmware
//NOT A HEX TO ASCII CONVERSION
//this is what it outputs, as this is what the taggers use for programming
//(0=0, 1=1, 2=3, 3=5, 4=10, 5=20, 6=25, 7=30, 8=40, 9=50, A=60, B=70, C=80, D=90, E=100 F=infinite/all)
String hex_decoder(byte inc_hex){
   switch(inc_hex){
     case 0:
       return "               0";
       break;
     case 1:
       return "               1";
       break;
     case 2:
       return "               3";
       break;
     case 3:
       return "               5";
       break;
     case 4:
       return "              10";
       break;
     case 5:
       return "              20";
       break;
     case 6:
       return "              25";
       break;
     case 7:
       return "              30";
       break;
     case 8:
       return "              40";
       break;
     case 9:
       return "              50";
       break;
     case 10:
       return "              60";
       break;
     case 11:
       return "              70";
       break;
     case 12:
       return "              80";
       break;
     case 13:
       return "              90";
       break;
     case 14:
       return "             100";
       break;
     case 15:
       return "        Infinite";
       break;
     default:
       return " decode fail :( ";
       break;
   }
}

String hex_to_team(byte inc_hex){
  switch(inc_hex){
     case 0:
       return "           ADMIN";
       break;
     case 1:
       return "          TEAM 1";
       break;
     case 2:
       return "          TEAM 2";
       break;
     case 3:
       return "          TEAM 3";
       break;
     case 4:
       return "          TEAM 4";
       break;
     case 5:
       return "          TEAM 5";
       break;
     case 6:
       return "          TEAM 6";
       break;
     case 7:
       return "          TEAM 7";
       break;
     case 8:
       return "          TEAM 8";
       break;
     case 9:
       return "    FREE FOR ALL";
       break;
     case 10:
       return "           HUMAN";
       break;
     case 11:
       return "        INFECTED";
       break;
     case 12:
       return "     PHOENIX FFA";
       break;
     case 13:
       return "  PHOENIX TEAM 1";
       break;
     case 14:
       return "  PHOENIX TEAM 2";
       break;
     case 15:
       return "  PHOENIX TEAM 3";
       break;
     default:
       return " decode fail :( ";
       break;
   }
}




















