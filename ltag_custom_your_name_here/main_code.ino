/*
 * This is the main code section.  
 */

//------------------------------DO NOT MODIFY CODE BELOW------------------------------

void setup() {
  pinMode(LED_PIN, OUTPUT);
  pinMode(RECV_PIN, INPUT);
  pinMode(TRIGGER_PIN, INPUT);
  pinMode(OVERHEAT_ALERT_LED_PIN, OUTPUT);
  pinMode(HIT_ALERT_LED_PIN, OUTPUT);
  irrecv.enableIRIn();
//------------------------------DO NOT MODIFY CODE ABOVE------------------------------
  
  
}

void loop() {

  // if trigger pressed and tagger not overheated and     trigger released and 200ms passed since last fire
  if(digitalRead(TRIGGER_PIN) && !overheated      &&       fire_ready && (millis() - last_fire > 200) ){
    // fire
    irsend.sendRC6(0xffffffff, 32);
    // re-enable the receiver (it was disabled to stop tagger from reflecting and tagging itself)
    irrecv.enableIRIn();
    // add heat for overheat function
    heat+=2;
    // update last time fired
    last_fire = millis(); 
    // change ready to fire state for semi-auto functionality
    fire_ready = false;
  }

  // if trigger is not pressed and was pressed in last time through the loop
  if( !digitalRead(TRIGGER_PIN) && !fire_ready){
    // update variable accordingly
    fire_ready = true;
  }

  // if player is hit ( & sign to pass the pointer to the function instead of the value, may be changed with new libraries)
  if(irrecv.decode(&results)){
    // subtract a hitpoint
    health--;
    // light the hit alert LED
    digitalWrite(HIT_ALERT_LED_PIN, HIGH);
    // update last time hit
    last_hit = millis();
  }

  // if the alert duration has passed 
  if(millis() - last_hit > alert_length){
    // turn off the alert LED
    digitalWrite(HIT_ALERT_LED_PIN, LOW);
  }

  // if 200ms has passed since last cooldown action and tagger heat is above zero
  if((millis() - last_cooldown > 200 ) && heat > 0){
    // cooldown one unit
    heat--;
    // update last cooldown time
    last_cooldown = millis();
  }

  // if tagger is overheated
  if(heat >= 10){
    // update variable accordingly
    overheated = true;
    // turn on overheat alert LED
    digitalWrite(OVERHEAT_ALERT_LED_PIN, HIGH);
  }
  
  // if tagger was overheated and is now cool
  if(overheat && heat == 0){
    // update variables accordingly
    overheated = false;
    // turn off overheat alert LED
    digitalWrite(OVERHEAT_ALERT_LED_PIN, LOW);
  }
}
