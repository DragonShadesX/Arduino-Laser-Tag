/*
 * This is the main code section.  
 */

//------------------------------DO NOT MODIFY CODE BELOW------------------------------

void setup() {
  pinMode(TRIGGER_PIN, INPUT_PULLUP);
  pinMode(RELOAD_PIN, INPUT_PULLUP);
  pinMode(HAPTICS_VIBRATE_PIN, OUTPUT);
  pinMode(HAPTICS_SOLENOID_PIN, OUTPUT);
  pinMode(SHIFT_REGISTER_DATA_PIN, OUTPUT);
  pinMode(SHIFT_REGISTER_CLOCK_PIN, OUTPUT);
  pinMode(SHIFT_REGISTER_LATCHCLOCK, OUTPUT);
  irrecv.enableIRIn();
  Serial.begin(9600);
  //audio setup
//  AudioMemory(8);
//  sgtl5000_1.enable();
//  sgtl5000_1.volume(0.5);
//  SPI.setMOSI(SDCARD_MOSI_PIN);
//  SPI.setSCK(SDCARD_SCK_PIN);
//  if (!(SD.begin(SDCARD_CS_PIN))) {
//    //fail out
//  }
  update_displays(health, ammo, false, false, false);
//------------------------------DO NOT MODIFY CODE ABOVE------------------------------
  
  
}

void loop() {

  if(!digitalRead(TRIGGER_PIN) && fire_ready && !reloading){
    irsend.sendRC6(0xffffffff, 32);
    Serial.println("fire");
    irrecv.enableIRIn();
    last_fire = millis(); 
    fire_ready = false; 
    ammo--;
//    digitalWrite(HAPTICS_SOLENOID_PIN, HIGH);
    solenoid_active = true;
//    playWav1.play(filename);  //need to check if this will break timing things unikitty
//    delay(5);  //may be necessary to not break timing things unikitty
    update_displays(health, ammo, millis() - last_hit < alert_length, false, true);
  }

  // if player is hit ( & sign to pass the pointer to the function instead of the value, may be changed with new libraries)
  if(irrecv.decode(&results)){
    health--;
    Serial.println("hit");
    digitalWrite(HAPTICS_VIBRATE_PIN, HIGH); 
    buzzer_active = true;
    last_hit = millis();
    irrecv.resume();
    //playWav1.play(filename);  //check if this breaks timing unikitty
//    delay(5);
    update_displays(health, ammo, true, false, millis() - last_fire < slide_length);
  }

  // turn off vibration motor 
  if(millis() - last_hit > alert_length && buzzer_active){
    digitalWrite(HAPTICS_VIBRATE_PIN, LOW);
    update_displays(health, ammo, false, false, millis() - last_fire < slide_length);
    buzzer_active = false;
  }

  // release solenoid
  if(millis() - last_fire > slide_length && solenoid_active){
//    digitalWrite(HAPTICS_SOLENOID_PIN, LOW);   
    update_displays(health, ammo, millis() - last_hit < alert_length, false, false);
    solenoid_active = false; 
  }

  // if reload button pushed
  if(!reloading && !digitalRead(RELOAD_PIN) && (ammo < mag_size) ){
    reloading = true;
    Serial.println("reloading");
  }

  //ammo replenish system
  if(reloading && (millis() - last_load > 200 ) ){
    ammo++;
    Serial.println(ammo);
    last_load = millis();
    if (ammo >= mag_size){
      reloading = false;
    }
    update_displays(health, ammo, millis() - last_hit < alert_length, false, millis() - last_fire < slide_length);
  }

  //kill tagger if at 0 health (takes care of issue that fire ready changed in fire function only)
  if((health <= 0)) {
    fire_ready = false; 
    update_displays(0, 0, false, false, false);
  }

  // run checks to tell if tagger is ready to fire again
  if( digitalRead(TRIGGER_PIN) && !fire_ready && (health > 0) && (ammo > 0) && (millis() - last_fire > 200)){
    fire_ready = true;
  }

}
















