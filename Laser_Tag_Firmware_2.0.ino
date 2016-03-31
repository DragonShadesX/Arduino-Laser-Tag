#include <IRremote.h>
// need to include audio shield library


// look into audio library/audio functions
// replace delays with timer function millis()
// prevent holding down fire/reload


//////////////////////////
// Initialize Variables //
//////////////////////////

// IR setup
int RECV_PIN = 10;
IRsend irsend;
IRrecv irrecv(RECV_PIN);
decode_results results;

// pins
int triggerPin = 1;
int reloadPin = 2;
int lightPin = 3;
int rumblePin = 4;

// stats
int health = 100;
int damage = 10;
int fireDelay = 100;
int maxAmmo = 12;
int ammo = maxAmmo;

// timers
unsigned long lastShoot;
unsigned long lastReload;
int shootTime = 300;
int reloadTime = 1000;
bool shootReady = true;
bool reloadReady = true;


void setup() {
  // Serial.begin(9600);
  // ^^ We'll need this for testing later on.

  // assign pins
  pinMode(triggerPin, INPUT);
  pinMode(reloadPin, INPUT);
  pinMode(lightPin, OUTPUT);
  pinMode(rumblePin, OUTPUT);

  // enable IR reciver
  irrecv.enableIRIn();
}

void loop() {

  // prevent user from spamming 
  if (!reloadReady && millis() > lastReload + reloadTime) {
    reloadReady = true;
  }

  if (!shootReady && millis() > lastShoot + shootTime) {
    shootReady = true;
  }

  if (health > 0) {
    // shoot
    if (digitalRead(triggerPin) && reloadReady && shootReady) {
      shoot();
    }
    
    // reload
    if (digitalRead(reloadPin) && reloadReady) {
      reload();

    }
    // hit
    if (irrecv.decode(&results)) {
      hit();
    }
  }
}

////////////////////
// Core Functions //
////////////////////

void shoot() {
  if (ammo > 0) {
    irsend.sendRC6(0xffffffff, 32);   //incorporate amt of damage into this in future
    irrecv.enableIRIn();
    ammo -= 1;
    playSound("shoot");
    lastShoot = millis();
    shootReady = false;
  }
  else {
    playSound("outOfAmmo");
  }
}

void reload() {
  ammo = maxAmmo;
  playSound("reload");
  lastReload = millis();
  reloadReady = false;
}

void hit() {
  health -= 10; //potentially grab damage amt from IR data?
  blinkLight();
  playSound("hit");
  irrecv.resume();
}

/////////////////////////
// Secondary Functions //
/////////////////////////

void blinkLight() {
  //replace delays
  /*
  digitalWrite(lightPin, HIGH);
  delay(300);
  digitalWrite(lightPin, LOW);
  delay(300);
  digitalWrite(lightPin, HIGH);
  delay(300);
  digitalWrite(lightPin, LOW);
  delay(300);
  digitalWrite(lightPin, HIGH);
  delay(300);
  digitalWrite(lightPin, LOW);
  delay(300);
  */
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

void rumble() {
  // enable pager motor for a bit
  /*
    digitalWrite(rumblePin, HIGH);
    delay (500); //replace delay
    digitalWrite(rumblePin, LOW);
  */
}

