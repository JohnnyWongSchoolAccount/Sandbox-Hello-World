/*this code is a work in progress 
  - mouse pressed interface
*/
//Gobal variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
String pathway, groove, beatYourCompetition, carDoor, woodDoor, eureka; // the songs/SFX
float rand;//random variable
int currentSong = 0; // current song
boolean autoPlayOn = false; //setting autoPlayOn off
boolean wentBack = false; //setting the forward button
boolean pauseAutoStop = false;//setting the boolean false
//
void setupMusic() {
  minim = new Minim (this); //load from data directory
  /* set the directory or pathway to music
  pathway: data / music or sound effect files
  reminder: finish Operating System code to auto read pathway and files (see operating system) */
  concatenationOfMusicFiles();
  songs[0] = minim.loadFile( pathway + groove ); //song
  songs[1] = minim.loadFile( pathway + beatYourCompetition ); //song
  //songs[2] = minim.loadFile( pathway + eureka ); //song
  soundEffects[0] = minim.loadFile( pathway + carDoor ); //SFX
  soundEffects[1] = minim.loadFile( pathway + woodDoor ); //SFX
  background( background );//background color
  strokeJoin( ROUND ); //the outlines of the shapes
  //fullScreen();//display width and height
  //
  // ERROR: CANVAS is bigger than display
  // ERROR: stating display geometry (i.e. landscape, portrait)
}//end setupmusic
//
void drawMusic() { // debugging in consol
  println( "Current Song Position:", songs[currentSong].position() );//songs position
  println( "End of Song:", songs[currentSong].length() );//songs length
  println( "Muted:", songs[currentSong].isMuted() );//whether the song is muted or not
  println( "Random:", rand );
  println( "Current song:", currentSong );// song being played
  autoPlayMusic();
}//end drawMusic
//
void keyPressedMusic() {
  //pause-play button
  if ( key == 'P' || key == 'p' ) { pausePlay(); }// end pause-play button keybind
  //Shuffle button
  if (key == 'W' || key == 'w') { Shuffle(); }//end shuffle keybind
  /* forward and reverse button
  forward button */
  if ( key == 'F' || key == 'f'){ forward(); }//end forward keybind
  //reverse button
  if ( key == 'R' || key == 'r'){ rewind(); }//end reverse keybind
  /* Loop Buttons
  single loop button */
  if ( key == '1' ) { loop1(); }//end single loop keybind
  //loop infinite button
  if ( key <= '9' && key !='1' ) { loopInf(); }// end loop infinite keybind
  //stop button
  if ( key == 'S' || key == 's' ) { Stop(); }//end stop keybind
  //mute button
  if (key == 'M' || key == 'm') { mute(); }//end mute button keybind
  //Autoplay button
  if ( key == 'A' || key == 'a' ) { autoPlay(); } //end Autoplay Button keybind
  //next button
  // * very simple next button, needs to be smarter *
  if ( key == 'G' || key == 'g' ) { next(); }//end next button keybind
  /* previous song button, back button
  students to develop, based on next button 'g'
  previous button */
  if ( key == 'H' || key == 'h' ) { previous(); }//end previous button keybind
}//end keyPressedMusic
//
void mousePressedMusic(){}//end mousePressedMusic
//
void concatenationOfMusicFiles(){
  pathway = "data/";
  beatYourCompetition = "Beat_Your_Competition.mp3"; //song
  groove = "FreeWare Music_MusicDownload_groove.mp3"; //song
  eureka = "Eureka.mp3";//song
  carDoor = "FreeWare Music_SoundEffect_Car_Door_Closing.mp3"; //SFX
  woodDoor = "FreeWare Music_SoundEffect_Wood_Door_Open_and_Close_Series.mp3"; //SFX
}//end concatenation
// all the music button funcitons ;)
void autoPlay() {//autoPlay -> turning autoplay on or off
  if ( autoPlayOn == false ){
    autoPlayOn = true;//turns autoplay on
  } else {//if autoplay is on turns the boolean off
    autoPlayOn = false;//turns autoplay off
  }//end autoplay button
}//end autoPlay
void autoPlayMusic() { //auto-Play button -> automatically plays through the playlist
  if ( autoPlayOn ) {//empty if -> does nothing
    if ( autoPlayOn == true ) {//empty if -> does nothing
    } if ( songs[currentSong].isPlaying() ) {//empty if -> does nothing
    } else {//if song != playing then exicutes skipping the song -> so delay() is not used
      if ( currentSong == songs.length - 1 ) { //ERROR catch:
        songs[currentSong].mute();//ERROR catch -> so that songs do not play on top of eachother
        currentSong = songs.length - songs.length; // intention is zero -> switches song
        songs[currentSong].unmute();//plays the desired the song
        repapla();//.rewind(), .pause(), .play()
        wentBack = true;//ERROR catch
        // if at the end of playlist this sets it to zero
      } else {
        wentBack = false;//turning ERROR catch off
      } 
      if ( wentBack == false ) {//plays the next song
        songs[currentSong].mute();//ERROR catch -> so that songs do not play on top of eachother
        currentSong++;//switches song
        songs[currentSong].unmute();//plays desired song
        repapla();//.rewind(), .pause(), .play()
      }
    }
  }//end autoPlayOn button
}//end autoPlayMusic
/*
ex#1: .postion() >= .length(), then rewind(), currentSong+=1, .play()
ex#2: .isPlaying(), when false rewind(), currentSong+1, .play()
*/
void mute() { //mute button
  if ( songs[currentSong].isMuted() ) {//button works when song is not playing
    songs[currentSong].unmute();//switches off .mute()
  } else {//if song is not muted
    songs[currentSong].mute();//mutes song
    /*
    ERROR: Only works when song is playing
    ERROR FIX: unmute or rewind when song is not playing (ie. unmute next song) */
  }//end mute button
}//end mute
void Shuffle() { //shuffle button
  rand = random(songs.length);//picks a random #
  if ( rand >= songs.length ) { //ERROR catch
    rand = songs.length - 1;//if the song picked is the highest # in array plays the top song in playlist
  } else {//if the song is below the array #
    songs[currentSong].mute();//prevents songs playing ontop of eachother
    currentSong = int(rand);//changes to the song chosen
    songs[currentSong].unmute();//plays desired song
    repapla();//.rewind(), .pause(), .play()
  }//end shuffle button
}// end shuffle()
void forward() { //forward button
  if ( songs[currentSong].position() <= songs[currentSong].length() * 7.5/10) {//prevents the song being skipped too far
    songs[currentSong].skip(3000); //paramiters in milliseconds -> skips song 3 seconds
  }// end forward //if else () {}//end forward
}//end forward button
void rewind() {//rewind button
  if ( songs[currentSong].position() <= songs[currentSong].length() * 9/10 ) {//prevents song being rewinded too far
    songs[currentSong].skip(-3000);//paramiters in milliseconds -> goes back 3 seconds
    //if the song is at the very beginning the reverse button will skip the the previous song paused
  } if ( songs[currentSong].position() == songs.length - songs.length ) {//intention is zero
    if( songs[currentSong].isPlaying() ) {
      if ( currentSong <= songs.length - songs.length ) { //ERROR catch:
        songs[currentSong].mute();//so songs do not play ontop of eachother
        currentSong = songs.length - 1; //moves to top of the playlist
        songs[currentSong].unmute();//plays desired song
        songs[currentSong].rewind();
        songs[currentSong].pause();
        wentBack = true;//ERROR catch
        // if at the end of playlist this sets it to zero
      } else {
        wentBack = false;
      } 
      if ( wentBack == false ) {
        songs[currentSong].mute();//so songs do not play ontop of eachother
        currentSong--;//switiches to the previous song
        songs[currentSong].unmute();//plays desired song
        songs[currentSong].rewind();
        songs[currentSong].pause();
      }
    }
  }//end rewind button
}//end rewind
void loop1() {//loop1
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].loop(0);//loops song 1 time
    songs[currentSong].play();
  } else {//loop the song at the end of the track -> so that delay() != used
    songs[currentSong].loop(0);//loops song 1 time
  }//end loop 1 button
  /*
 delay( songs[currentSong].length() - songs[currentSong].position() ); //finishes the song
 //ERROR: delay stops all player functions, comp doesn't recognize if song is playing
 songs[currentSong].loop(0);
 */
}//end loop1
void loopInf() {//loop inf
//delay( songs[currentSong].length() - songs[currentSong].position() ); //finishes the song
//ERROR: delay stops all player functions, comp doesn't recognize if song is playing
  if ( songs[currentSong].isPlaying() ) {//empty if
    songs[currentSong].pause();
    songs[currentSong].play();
  } else {//if song != playing song replays -> so delay() != used
    songs[currentSong].loop(-1);//plays the song infinitely
  }//end loop inf button
}//end loopInf
  void Stop() {//Stop
  if ( songs[currentSong].isPlaying() ) {//stops the song from playing
    if (autoPlayOn == true) {//ERROR catch -> when auto play was on if the song != playing it would switch the song preventing stop from working
      autoPlayOn = false;
      pauseAutoStop = true;//ERROR catch -> so that autoPlayOn could be turned on again when desired from user
    }
    songs[currentSong].pause(); //stops the song from playing
    songs[currentSong].rewind();
  } else { 
    songs[currentSong].rewind(); 
    if (pauseAutoStop == true){//ERROR catch -> so that autoPlayOn could be turned on again when desired from user
      autoPlayOn = true;
      pauseAutoStop = false;
    }
  }//end stop button
}//end Stop
void pausePlay() {//pause-play button
  if ( songs[currentSong].isPlaying() ) {//if song was playing then pauses the song
    if ( autoPlayOn == true ){//ERROR catch
      autoPlayOn = false;
      pauseAutoStop = true;
    }
    songs[currentSong].pause();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*9/10 ) {
    songs[currentSong].rewind();
    /* 
    student to finish
    .pause(), rewind(), then cue the next song */
  } else {//if the song was already paused/'not playing' then starts playing the song again
    songs[currentSong].play();//plays the song
    if ( pauseAutoStop == true ) {//ERROR catch
      autoPlayOn = true;
      pauseAutoStop = false;
    }
  }//end pause button
}//end pause-play
void next() {//next
  if( songs[currentSong].isPlaying() ){
    if ( currentSong == songs.length - 1 ) { //ERROR catch:
      songs[currentSong].mute();//so that songs do not play on top of eachother
      currentSong = songs.length - songs.length; // intention is zero
      songs[currentSong].unmute();//plays desired song
      repapla();//.rewind(), .pause(), .play()
      wentBack = true;//ERROR catch
      // if at the end of playlist this sets it to zero
    } else {
      wentBack = false;
    } 
    if ( wentBack == false ) {
      songs[currentSong].mute();//stops the song from playing ontop of eachother
      currentSong++;//switches the song
      songs[currentSong].unmute();//plays desired song
      repapla();//.rewind(), .pause(), .play()
    }
  } else { //if the song was not playing the song would be looped
    songs[currentSong].loop(0);//song looped 1 time
  }//end next button
}//end next
void previous() {//previous
  if( songs[currentSong].isPlaying() ) {
    if ( currentSong <= songs.length - songs.length ) { //ERROR catch:
      songs[currentSong].mute();//stops songs from playing ontop of eachother
      currentSong = songs.length - 1; //moves to top of the playlist
      songs[currentSong].unmute();//plays the desired song
      repapla();//.rewind(), .pause(), .play()
      wentBack = true;//ERROR catch
      // if at the end of playlist this sets it to zero
    } else {
      wentBack = false;//ERROR catch
    } 
    if ( wentBack == false ) {
      songs[currentSong].mute();//stops songs from playing ontop of eachother
      currentSong--;//plays the previous song
      songs[currentSong].unmute();//plays desired song
      repapla();//.rewind(), .pause(), .play()
    }
  } else {//if the song is not playing then the song is looped
    songs[currentSong].loop(0);//loop song
  }//end previous button
}//end previous
void repapla() {//.rewind(), .pause(), .play()
  songs[currentSong].rewind();
  songs[currentSong].pause();
  songs[currentSong].play();
}//end repapla
//end MusicPlayer232 subProgram
