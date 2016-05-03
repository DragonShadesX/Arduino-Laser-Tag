//this is the last minute "I just need it to work" version of the code
//it only does FFA but it also works with the Phoenix LTX taggers

#include <IRremote.h>
#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>

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

int RECV_PIN = 4;
IRsend irsend;
IRrecv irrecv(RECV_PIN);
decode_results results;

int trigger_pin = 21;
int reload_pin  = 20;
int light_pin   = 17;

int SHIFT_REGISTER_DATA_PIN = 2;
int SHIFT_REGISTER_CLOCK_PIN = 1;
int SHIFT_REGISTER_LATCHCLOCK = 0;

int hp = 25;
int max_hp = 25;
int ammo = 10;
int max_ammo = 10;

unsigned long last_shoot;
unsigned long last_reload;
int shoot_time = 200;
int reload_time = 100;
bool shoot_ready = true;
bool reload_ready = true;

byte low_hp[9] = {0b0000000, 0b00000001, 0b00000011, 0b00000111, 0b00001111, 0b00011111, 0b00111111, 0b01111111, 0b11111111};
byte high_hp[3] = {0b00000000, 0b00000010, 0b00000011};
byte low_ammo[9] = {0b0000000, 0b00000001, 0b00000011, 0b00000111, 0b00001111, 0b00011111, 0b00111111, 0b01111111, 0b11111111};
byte high_ammo[3] = {0b00000000, 0b00000010, 0b00000011};
byte red_byte = 0b00100000;
byte green_byte = 0b01000000;
byte blue_byte = 0b10000000;
byte first_out;
byte second_out;
byte third_out;
byte fourth_out;
byte fifth_out = 0x00;

unsigned long send_packet = 0x3FA025D3;

void setup() {
  Serial.begin(9600);
  // put your setup code here, to run once:
  pinMode(trigger_pin, INPUT_PULLUP);
  pinMode(reload_pin, INPUT_PULLUP);
  pinMode(light_pin, OUTPUT);
  pinMode(SHIFT_REGISTER_DATA_PIN, OUTPUT);
  pinMode(SHIFT_REGISTER_CLOCK_PIN, OUTPUT);
  pinMode(SHIFT_REGISTER_LATCHCLOCK, OUTPUT);
  irrecv.resume();
  //Audio setup
  AudioMemory(8);

  // Comment these out if not using the audio adaptor board.
  // This may wait forever if the SDA & SCL pins lack
  // pullup resistors
  sgtl5000_1.enable();
  sgtl5000_1.volume(0.5);

  SPI.setMOSI(SDCARD_MOSI_PIN);
  SPI.setSCK(SDCARD_SCK_PIN);
  if (!(SD.begin(SDCARD_CS_PIN))) {
  // stop here, but print a message repetitively
    while (1) {
      Serial.println("Unable to access the SD card");
      delay(500);
    }
  }
  playWav1.play("RESPAWN.WAV");
  delay(5);
  update_displays(hp, ammo);

}

void loop() {
  // put your main code here, to run repeatedly:
  if (irrecv.decode(&results)) {
    if (results.value == send_packet) {
      hp--;
      update_displays(hp, ammo);
      playWav1.play("HIT.WAV");
      delay(5);
    }
    irrecv.resume();
  }

  if (!digitalRead(trigger_pin) && shoot_ready ) {
    if (ammo > 0) {
      ammo--;
      //irsend.sendRC6(send_packet, 32);
      //unsigned int test_buffer[16] = {-6050, 2900, -2100, 950, -2050, 950, -2050, 900, -2050, 1000, -2000, 950, -2050, 900, -2100, 1000};
      unsigned int test_buffer[16] = {6050, 2900, 2100, 950, 2050, 950, 2050, 900, 2050, 1000, 2000, 950, 2050, 900, 2100, 1000};
      irsend.sendRaw(test_buffer, 16, 38); 

      irrecv.enableIRIn();
      last_shoot = millis();
      shoot_ready = false;
      update_displays(hp, ammo);
      playWav1.play("SHOOT.WAV");
      delay(5);
    }
    else {
      shoot_ready = false;
      playWav1.play("OOA.WAV");
      delay(5);    
    }
  }

  if (!digitalRead(reload_pin) && reload_ready ) {
    ammo = max_ammo;
    last_reload = millis();
    reload_ready = false;
    update_displays(hp, ammo);
    playWav1.play("RELOAD.WAV");
    delay(5);
  }

  //Prevents spamming reload
  if (!reload_ready && millis() > last_reload + reload_time) {
    reload_ready = true;
  }

  //Prevents spamming shooting
  if (!shoot_ready && millis() > last_shoot + shoot_time) {
    shoot_ready = true;
  }
  
  if(hp <= 0 && ((shoot_ready == true) || (reload_ready == true) ) ){
    shoot_ready = false;
    reload_ready = false;
    playWav1.play("DEAD.WAV");
    delay(5);
  }
}


void update_displays(int d_hp, int d_ammo) {
  // user can add support for 7 segs and other types of displays
  // base code supports 1 bar graph for health and 1 for ammo

  digitalWrite(SHIFT_REGISTER_LATCHCLOCK, HIGH);

  // update health
  // remap hp to a scale of 10 for bar graph
  d_hp = map(d_hp, 0, max_hp, 0, 10);
  byte first_out = high_hp[constrain(d_hp - 8, 0, 2)];
  byte second_out = low_hp[constrain(d_hp, 0, 8)];

  // update ammo
  // remap ammo to a scale of 10 for bar graph
  d_ammo = map(d_ammo, 0, max_ammo, 0, 10);
  byte third_out = high_ammo[constrain(d_ammo - 8, 0, 2)];
  byte fourth_out = low_ammo[constrain(d_ammo, 0, 8)];

  fifth_out = !(fifth_out | red_byte);
  fifth_out = !(fifth_out | green_byte);
  fifth_out = !(fifth_out | blue_byte);

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
}
