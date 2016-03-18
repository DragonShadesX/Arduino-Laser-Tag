/*
  file WebRadio.ino
 
  author Jean-Michel Gallego - 23/06/2013
  
  This sketch allows to listen to web radios.
  It needs an Arduino DUe, an Ethernet shield and a Sparkfun
    MP3 shield
  Ethernet shield should be replaced by a WIZ820io to increase bitrate and
    listen radio with a rate higher than 64 kb/s
    
  Pin 4 of Ethernet shield is not connected to pin 4 of Arduino Due
    but to pin 3V3 as SD card from that shield is not used
    
  Pins 11 (MOSI), 12 (MISO) and 13 (SCK) of MP3 shield are connected
    to SPI connector of Arduino Due
    
  Pin 6 (MP3-CS) of MP3 shield is connected to pin 4 of Arduino Due
 
  This sketch use SFEMP3Shield library by Bill Porter and Michael P. Flaga
  Download forked version at
    https://github.com/gallegojm/Sparkfun-MP3-Player-Shield-Arduino-Library/tree/Due
  Be sure USE_MP3_REFILL_MEANS is defined as USE_MP3_Polled
    in file SFEMP3ShieldConfig.h at line 202

  Use SdFat library from Bill Greiman
  Need to modify SdFatConfig.h near line 50:
    #define USE_ARDUINO_SPI_LIBRARY 0
   to
    #define USE_ARDUINO_SPI_LIBRARY 1

  In order to use WIZ820io with w5200 chip you must modify Ethernet library.
  See http://forum.arduino.cc/index.php?topic=139147.0
  Download W5200 library by Jinbuhm Kim at
    https://github.com/jbkim/W5200-Arduino-Ethernet-library

  The sketch assume pre-compiled patches for VS1053b chip are loaded in the
    main directory of the SD card
  
  While listening to a radio, somes statistics are printed every second:
   - smallest numbers of bytes in buffer
   - greatest numbers of bytes in buffer
   - number of bytes readed from internet stream
   - number of bytes sent to VS1053b chip
       (bit rate in bit/s, multiply by 8/1000 to get byte rate in kb/s)
   - time spent by reading and sending the stream
       (in micro seconds, compare to 1.000.000 = 1 second) 
*/

#include <Streaming.h>
#include <SPI.h>
#include <SdFat.h>
#include <SdFatUtil.h>
#include <SFEMP3Shield.h>  // the MP3 Shield Library
#include <Ethernet.h>
#include "Radio.h"

#define CS_SDCARD 9

// principal object for handling all SdCard functions.
SdFat sd;

// principal object for handling all members for the library.
SFEMP3Shield mp3;

// objects for handling ethernet connexion
byte mac[] = { 0x90, 0xA2, 0xDA, 0x0D, 0xA3, 0xA0 };
IPAddress localIp( 192, 168, 128, 224 );
EthernetClient client;

// size of buffer
#define MP3BUF_SIZE 65536 // must be a multiple of 32
// max numbers of bytes read from internet stream
#define CHUNK_SIZE 128 // 1024
// buffer where stream readed from internet is stored before beind sent to MP3 chip
uint8_t mp3Buf[ MP3BUF_SIZE ];

// list of radios
Radio listRadio[] =
{
  { "France Info (32 kb/s)", "95.81.147.3", "/franceinfo/all/franceinfo-32k.mp3", 80 },
  { "Solo piano - SKY FM (40 kb/s)", "pub1.sky.fm", "/sky_solopiano_aacplus", 80 },
  { "Absolutly Smooth Jazz (40 kb/s)", "pub1.sky.fm", "/sky_smoothjazz_aacplus", 80 },
  { "Radio Samba dos Gemeos (46 kb/s)", "streaming03.maxcast.com.br", "/live", 8236 },
//  { "A Radio Rock (64 kb/s)", "174-120-158-115.webnow.net.br", "/89rock64k.aac", 80 },
  { "RFI Monde (64 kb/s)", "95.81.147.3", "/rfimonde/all/rfimonde-64k.mp3", 80 },
  { "WRCJ 90.9 FM (64 kb/s)", "ice2.securenetsystems.net", "/WCJR", 80 },
  { "Latin Jazz Radio (96 kb/s)", "96.56.32.46", "/", 8002 },
//  { "Giant of Jazz (128 kb/s)", "stardust.wavestreamer.com", "/GiantsofJazzRadio", 1889 },
  { "Jazz Radio (128 kb/s)", "84.16.67.144", "/jazz-wr01-128.mp3", 80 },
  { "D2R Jazz (160 kb/s)", "81.7.160.152", "/d2r.mp3", 8000 },
  { "4U Classic Rock (320 kb/s)", "str4uice.streamakaci.com", "/4uclassicrock.mp3", 80 }
};

/*******************************************************************************
**                                                                            **
**                                   SETUP                                    **
**                                                                            **
*******************************************************************************/

void setup()
{
  // Control Select of SD card of MP3 shield set to high 
  pinMode( 9, OUTPUT );
  digitalWrite( 9, HIGH );

  Serial.begin( 115200 );
  delay(1000);
  #ifdef __arm__
    Serial.println( "Arm processor" );
  #endif
  #if defined(USE_MP3_REFILL_MEANS)
    #if USE_MP3_REFILL_MEANS == USE_MP3_Polled
      Serial << "MP3 shield data request is polled" << endl ; 
    #endif
  #endif

  //Initialize the SdCard.
  Serial << "Initializing SD card ( CS = " << CS_SDCARD << " )" << endl;
  if( ! sd.begin( CS_SDCARD, SPI_HALF_SPEED ))
    sd.initErrorHalt();
  if( ! sd.chdir( "/" ))
    sd.errorHalt( "sd.chdir" );
  
  //Initialize the MP3 Player Shield
  Serial << "Initializing MP3 player ( CS = " << MP3_XCS << " )" << endl;
  uint8_t ret = mp3.begin();
  if( ret != 0 )
  {
    Serial << "Error " << ret << " trying to start MP3 player" << endl;
    //while( true ) ;
  }

  // Initialize the ethernet chip  
  Serial << "Initializing Ethernet ( CS = 10 )" << endl;
  // Ethernet.begin( mac ); // , localIp );
  if( Ethernet.begin( mac ) == 0 )
  {
    Serial << "Failed to configure Ethernet using DHCP" << endl;
    while( true ) ;
  };
  
  visRadios();
}

/*******************************************************************************
**                                                                            **
**                                 MAIN LOOP                                  **
**                                                                            **
*******************************************************************************/

void loop()
{
  char r;
  
  if( Serial.available())
  {
    r = Serial.read();
    Serial << r << endl;
    r -= '0';
    Serial.flush();
    if( r >= 0  && r < sizeof( listRadio ) / sizeof( Radio ) )
    {
      listenRadio( listRadio[ r ] );
      visRadios();
    }
  }
}

/*******************************************************************************
**                                                                            **
**                            PRINT LIST OF RADIOS                            **
**                                                                            **
*******************************************************************************/

void visRadios()
{
  for( uint8_t i = 0; i < sizeof( listRadio ) / sizeof( Radio ); i ++ )
    Serial << " " << i << " - " << listRadio[ i ].name << endl;
  Serial << "Enter number of radio you want to listen: ";
}

/*******************************************************************************
**                                                                            **
**                        FUNCTION TO LISTEN THE RADIO                        **
**                                                                            **
*******************************************************************************/

// code to determine number of bytes actually in buffer
#define FILLED ( p_write - p_read >= 0 ? p_write - p_read : MP3BUF_SIZE - p_read + p_write )

void listenRadio( Radio radio )
{
  int32_t p_read, p_write, nb_fill, nb_read, tnb_fill;
  int32_t filled, min_filled, max_filled, t_fill, t_read;
  int32_t m_sec, m_emptyBuf;
  uint32_t micros0, t_micros;
  uint8_t n_tryConnect;
  boolean refill, listen;

  // try to connect to server 5 times
  Serial << "Connecting to " << radio.name << endl;
  n_tryConnect = 0;
  while( ! connectServer( radio ) )
  {  
    if( n_tryConnect++ == 5 )
    {
      Serial << "Unable to connect to " << radio.server << endl << "Stopped" << endl;
      return;
    }
    Serial << "Retrying to connect in 3 s" << endl;
    delay( 3000 );
  }
  Serial << "Connected to " << radio.server << endl;

  // start playback
  mp3.setVolume( 10, 10 );
  mp3.playStream();

  // set pointers
  p_read = 0;
  p_write = fillBuf( 0 );  // never fill if p_write == p_read
  
  min_filled = MP3BUF_SIZE;
  max_filled = 0;
  t_read = 0;
  t_fill = 0;
  t_micros = 0;
  refill = true;
  listen = true;
  m_emptyBuf = 0;
  m_sec = millis();

  do
  {
    // feed the VS10xx chip
    tnb_fill = 0;
    micros0 = micros();
    do
      // less than 32 bytes in buffer?
      if( refill  ||  FILLED < 32 )
      // yes. Start time counter m_emptyBuf if not yet started to know time
      //  ellapsed with empty buffer
      {
        nb_fill = 0;
        if( m_emptyBuf == 0 )
        {
          m_emptyBuf = millis();
          refill = true;
        }
      }
      // no. Fill mp3 buffer if needed
      // Variable tnb_fill store number of bytes sent to MP3 chip in this loop
      else 
      {
        m_emptyBuf = 0;
        nb_fill = mp3.fillFromStream( mp3Buf + p_read );
        if( nb_fill != 0 )
        {
          // Serial << "-";
          // Serial << " > " << p_read << " " << nb_fill << " " << p_read + nb_fill - 1 << " > ";
          tnb_fill += nb_fill;
          p_read += nb_fill;
          if( p_read >= MP3BUF_SIZE )
            p_read = 0;
        }
      }
    while( nb_fill > 0 );
    
    // feed the buffer
    nb_read = 0;
    if( listen  &&  FILLED < MP3BUF_SIZE - CHUNK_SIZE )
    {
      nb_read = fillBuf( p_write );
      if( nb_read != 0 )
      {
        // Serial << "+";
        // Serial << " < " << p_write << " " << nb_read << " " << p_write + nb_read - 1 << " <";
        p_write += nb_read;
        if( p_write >= MP3BUF_SIZE )
          p_write = 0;
      }
      // buffer enough filled to begin playing?
      if( refill  &&  ( FILLED >= ( MP3BUF_SIZE / 2 ) ) )
        refill = false;
    }

    // calculate statistics
    if( tnb_fill != 0  ||  nb_read != 0 )
      t_micros += micros() - micros0;
    filled = FILLED;
    if( filled < min_filled )
      min_filled = filled;
    if( filled > max_filled )
      max_filled = filled;
    t_read += nb_read;
    t_fill += tnb_fill;

    // print statistics every second
    if( (uint32_t) ( millis() - m_sec ) > 1000 )
    {
      m_sec = millis();
      Serial << min_filled << "  " << max_filled << "  " << t_read << "  " << t_fill
             << "  " << t_micros << endl;
      min_filled = MP3BUF_SIZE;
      max_filled = 0;
      t_read = 0;
      t_fill = 0;
      t_micros = 0;
    }
      
    // Want to stop?
    if( Serial.available() )
      listen = false;
  }
  while( listen  &&  
         ( m_emptyBuf == 0  || (uint32_t) ( millis() - m_emptyBuf ) < 20000 ) );

  // stop playing
  mp3.stopStream();
  client.flush();
  client.stop(); 
  Serial << "Stop playing" << endl << endl;
}

/*******************************************************************************
**                                                                            **
**                  FUNCTION TO READ STREAM FROM W5100 CHIP                   **
**                                                                            **
*******************************************************************************/

/*
  Input parameter p point to memory where bytes must be written
  Output is number of written bytes 
*/

int32_t fillBuf( int32_t p )
{
  if( ! client.available() )
    return 0;
  return client.read( (uint8_t *) mp3Buf + p, min( CHUNK_SIZE, MP3BUF_SIZE - p ) );
}

/*******************************************************************************
**                                                                            **
**                       FUNCTION TO CONNECT TO RADIO                         **
**                                                                            **
*******************************************************************************/

/*
  Output true if connected
*/

boolean connectServer( Radio radio )
{
  boolean ok;
  
  ok = client.connect( radio.server, radio.port );
  if( ok )
  {
    client << "GET " << radio.url << " HTTP/1.1\r\n";
    client << "Host: " << radio.server << ":" << radio.port << "\r\n";
    client << "Range: bytes=0-\r\n";
    client << "Accept: audio/" << "*; q=0.2, audio/basic\r\n";
    client << "Connection: close\r\n\r\n";
  }
  
  uint16_t nc = 0;
  uint32_t millis0 = millis();
  // Wait for an answer during 2 secondes
  while( ok )
  {
    if( (uint32_t) ( millis() - millis0 ) > 2000 )
    {
      ok = false;
      break;
    }
    if( client.available())
    {
      char c = client.read();
      Serial << c ;
      if( c != '\r' )
        if( c != '\n' )
          nc ++;
        else
        {
          // empty line? This the end of the server reponse
          if( nc == 0 )
            break;
          nc = 0;
        }
    }
  }
  if( ! ok )
  {
    client.flush();
    client.stop();
  }
  return ok;
}
