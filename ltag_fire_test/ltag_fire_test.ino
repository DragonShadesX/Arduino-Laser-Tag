#include <IRremote.h>

int LED_PIN = 12;

IRsend irsend;

void setup() {
  Serial.begin(9600);
}

void loop() {
  irsend.sendRC6(0xffffffff, 32);
  delay(1000);
}
