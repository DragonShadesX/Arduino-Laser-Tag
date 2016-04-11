/*

   This code is for the Admin tool for Lazer Tag.
   Code by Greg Tighe (DragonShadesX)
   This is for an ISP at Worcester Polytechnic Institute, D-2016

   TODO: ADD IR SUPPORT
   TODO: Implement IR Diag Readout
   TODO: Add Comments

*/

//LCD Library
#include <LiquidCrystal.h>

#define dir_up 12
#define dir_dwn 11
#define dir_left 10
#define dir_right 8
#define choose 9

char last_dir = 'o';

int menu_loc = 0;
int val_change = 0;

byte team = 0x0;
byte set_team;
byte hp;
byte ammo;
byte respawns = 0x0;
byte reloads = 0x0;
byte damage = 0x0;
byte ID = 0x0;

boolean update_displays = true;

// initialize the library, RS (4), EN(6), D4-D7 (11-14)
LiquidCrystal lcd(19, 17, 23, 22, 21, 20);

void setup() {

  //start the LCD with 16 columns and 2 rows
  lcd.begin(16, 2);
  
  pinMode(dir_up, INPUT);
  pinMode(dir_dwn, INPUT);
  pinMode(dir_left, INPUT);
  pinMode(dir_right, INPUT);
  pinMode(choose, INPUT);

}

void loop() {

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
  if ( digitalRead(dir_up) && digitalRead(dir_dwn) && digitalRead(dir_left) && digitalRead(dir_right) && digitalRead(choose) ) {
    last_dir = 'o';
  }

  if (update_displays) {
    update_displays = false;
    switch (menu_loc) {
      case 0:
        lcd.clear();
        lcd.print("DIAGNOSTIC");
        lcd.setCursor(0, 1);
        lcd.print("INCOMING DATA");
        break;
      case 1:
        lcd.clear();
        lcd.print("Team");
        lcd.setCursor(15, 1);
        team = constrain(team + val_change, 0x0, 0xf);
        lcd.print(team, HEX);
        break;
      case 2:
        lcd.clear();
        lcd.print("Health");
        lcd.setCursor(15, 1);
        hp = constrain(hp + val_change, 0x0, 0xf);
        lcd.print(hp, HEX);
        break;
      case 3:
        lcd.clear();
        lcd.print("Ammunition");
        lcd.setCursor(15, 1);
        ammo = constrain(ammo + val_change, 0x0, 0xf);
        lcd.print(ammo, HEX);
        break;
      case 4:
        lcd.clear();
        lcd.print("Respawns");
        lcd.setCursor(9, 1);
        lcd.print("LOCKED");
        break;
      case 5:
        lcd.clear();
        lcd.print("Reloads");
        lcd.setCursor(9, 1);
        lcd.print("LOCKED");
        break;
      case 6:
        lcd.clear();
        lcd.print("Damage");
        lcd.setCursor(9, 1);
        lcd.print("LOCKED");
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
    val_change = 0;
  }
}
























