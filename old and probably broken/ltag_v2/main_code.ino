void setup() {

  // needed for due only, pin 4 defaults to input_pullup which changes shield to real-time MIDI mode which is not what we want.
  // actually not needed, you need to clip the jumpers for the IRLED to work anyway
  //pinMode(4, OUTPUT);
  //digitalWrite(4, LOW);

  //Initialize the SdCard.
  if(!sd.begin(SdChipSelect, SPI_FULL_SPEED)) sd.initErrorHalt();
  // depending upon your SdCard environment, SPI_HAVE_SPEED may work better.
  if(!sd.chdir("/")) sd.errorHalt("sd.chdir");

  //start player object
  MP3player.begin();
  //set volumes L/R (to max?)
  MP3player.setVolume(10,10);

  
}

void loop() {
  // Below is only needed
  #if defined(USE_MP3_REFILL_MEANS) \
    && ( (USE_MP3_REFILL_MEANS == USE_MP3_SimpleTimer) \
    ||   (USE_MP3_REFILL_MEANS == USE_MP3_Polled)      )
    MP3player.available();
  #endif

  MP3player.playTrack(1);
  delay(10000);
}
