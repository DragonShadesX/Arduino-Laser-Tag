/*
 * This is the section for creating helper functions.
 * If something requires more than a few lines of code and is repeated, consider making it a helper function.
 */

byte low_health[9] = {B00000000, B00000001, B00000011, B00000111, B00001111, B00011111, B00111111, B01111111, B11111111};
byte high_health[3]= {B00000000, B00000001, B00000011};
byte low_ammo[7] = {B00000000, B00000100, B00001100, B00011100, B00111100, B01111100, B11111100};
byte high_ammo[5] = {B00000000, B00000001, B00000011, B00000111, B00001111};
byte red_byte = B00100000;
byte green_byte = B01000000;
byte blue_byte = B10000000;

//due to the tri color LED attached to the end, the first few bits to go out have to be something
void update_displays(int hp, int eng, boolean red, boolean green, boolean blue){
  digitalWrite(SHIFT_REGISTER_LATCHCLOCK, HIGH);
  // this is yucky math but it should work
  byte first_out = high_ammo[constrain(eng-6, 0, 4)] ;  //6 because array is 0 indexed
  if(red){
    first_out = first_out | red_byte;
  }
  if(green){
    first_out = first_out | green_byte;
  }
  if(blue){
    first_out = first_out | blue_byte;
  }
  byte second_out = low_ammo[constrain(eng, 0, 6)] | high_health[constrain(hp - 8, 0, 2)];
  byte third_out = low_health[constrain(hp, 0, 8)];
  shiftOut(SHIFT_REGISTER_DATA_PIN, SHIFT_REGISTER_CLOCK_PIN, MSBFIRST, first_out);
  shiftOut(SHIFT_REGISTER_DATA_PIN, SHIFT_REGISTER_CLOCK_PIN, MSBFIRST, second_out);
  shiftOut(SHIFT_REGISTER_DATA_PIN, SHIFT_REGISTER_CLOCK_PIN, MSBFIRST, third_out);
  digitalWrite(SHIFT_REGISTER_LATCHCLOCK, LOW);
  delayMicroseconds(5);
  digitalWrite(SHIFT_REGISTER_LATCHCLOCK, HIGH);
  delayMicroseconds(5);
}

