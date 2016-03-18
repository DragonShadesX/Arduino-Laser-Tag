#include <IRremote.h>

//int LED_PIN = XX;  //supposedly only works on pin 5
int RECV_PIN = 10;

IRsend irsend;
IRrecv irrecv(RECV_PIN);
decode_results results;

int trigger_pin = 19;
int light_pin = 3;

void setup() {
  //Serial.begin(9600);
  pinMode(trigger_pin, INPUT);
  pinMode(light_pin, OUTPUT);
  irrecv.enableIRIn();
}

void loop() {
  if(digitalRead(trigger_pin)){
    irsend.sendRC6(0xffffffff, 32);
    delay(100);
    irrecv.enableIRIn();
  }
  if(irrecv.decode(&results)){
    digitalWrite(light_pin, HIGH);
    delay(1000);
    digitalWrite(light_pin, LOW);
    irrecv.resume();
  }  
}
