/*this code is a work in progress */
//Gobal variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[3]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
String pathway, groove, beatYourCompetition, carDoor, woodDoor, eureka; // the songs/SFX
float rand;
int currentSong = 0; // current song
boolean autoPlayOn = false; //setting autoPlayOn off
boolean wentBack = false; //setting the forward button
boolean pauseAutoStop = false;
//
void setupMusic() {
  //
  minim = new Minim (this); //load from data directory
  /*
  set the directory or pathway to music
  pathway: data / music or sound effect files
  reminder: finish Operating System code to auto read pathway and files (see operating system)
  */
  concatenationOfMusicFiles();
  songs[0] = minim.loadFile( pathway + groove ); //song
  songs[1] = minim.loadFile( pathway + beatYourCompetition ); //song
  songs[2] = minim.loadFile( pathway + eureka ); //song
  soundEffects[0] = minim.loadFile( pathway + carDoor ); //SFX
  soundEffects[1] = minim.loadFile( pathway + woodDoor ); //SFX
}//end setupmusic
void drawMusic() {
  //debugging in consol
  println( "Current Song Position:", songs[currentSong].position() );//songs position
  println( "End of Song:", songs[currentSong].length() );//songs length
  println( "Muted:", songs[currentSong].isMuted() );//whether the song is muted or not
  println( "Random:", rand );
  //AutoPlay
  println( "Current song:", currentSong );// song being played
  autoPlayMusic();
}//end drawMusic
void keyPressedMusic() {
  //Shuffle button
  if (key == 'W' || key == 'w') {
    rand = random(songs.length);
    if ( rand >= songs.length ) { //ERROR catch
      rand = songs.length - 1;
    } else {
      songs[currentSong].mute();
      currentSong = int(rand);
      songs[currentSong].unmute();
      songs[currentSong].rewind();
      songs[currentSong].pause();
      songs[currentSong].play();
    }
  }// end shuffle
  //mute button
  if (key == 'M' || key == 'm'){
  mute();
  }//end mute button
  /*
  forward and reverse button
  forward  */
  if ( key == 'F' || key == 'f'){
    if ( songs[currentSong].position() <= songs[currentSong].length() * 7.5/10) {
      songs[currentSong].skip(3000); //paramiters in milliseconds
    }// end forward //if else () {}//end forward
  }//end forward
  //reverse
  if ( key == 'R' || key == 'r'){
    if ( songs[currentSong].position() <= songs[currentSong].length() * 9/10 ) {
      songs[currentSong].skip(-3000);//paramiters in milliseconds
      //if the song is at the very beginning the reverse button will skip the the previous song paused
    } if ( songs[currentSong].position() == songs.length - songs.length ) {
      if( songs[currentSong].isPlaying() ) {
        if ( currentSong <= songs.length - songs.length ) { //ERROR catch:
          songs[currentSong].mute();
          currentSong = songs.length - 1; //moves to top of the playlist
          songs[currentSong].unmute();
          songs[currentSong].rewind();
          songs[currentSong].pause();
          wentBack = true;
          // if at the end of playlist this sets it to zero
        } else {
          wentBack = false;
        } 
        if ( wentBack == false ) {
          songs[currentSong].mute();
          currentSong--;
          songs[currentSong].unmute();
          songs[currentSong].rewind();
          songs[currentSong].pause();
        }
      }
    }
  }//end reverse
  //single loop
  if ( key == '1' ) {
    if ( songs[currentSong].isPlaying() ) {
      songs[currentSong].pause();
      songs[currentSong].loop(0);
      songs[currentSong].play();
    } else {
      songs[currentSong].loop(0);
    }
    /*
   delay( songs[currentSong].length() - songs[currentSong].position() ); //finishes the song
   //ERROR: delay stops all player functions, comp doesn't recognize if song is playing
   songs[currentSong].loop(0);
   */
  }// end single loop
  // loop infinite
  if ( key <= '9' && key !='1' ) {
    //delay( songs[currentSong].length() - songs[currentSong].position() ); //finishes the song
    //ERROR: delay stops all player functions, comp doesn't recognize if song is playing
    if ( songs[currentSong].isPlaying() ) {
      songs[currentSong].pause();
      songs[currentSong].play();
    } else {
      songs[currentSong].loop(-1);
    }
  }// end loop infinite
  //stop button
  if ( key == 'S' || key == 's' ) {
    if ( songs[currentSong].isPlaying() ) {
      songs[currentSong].pause(); 
      songs[currentSong].rewind();
    } else { 
      songs[currentSong].rewind(); 
    }
  }//end stop
  //play pause
  if ( key == 'P' || key == 'p' ) {
    if ( songs[currentSong].isPlaying() ) {
      if ( autoPlayOn == true ){
        autoPlayOn = false;
        pauseAutoStop = true;
      }
      songs[currentSong].pause();
    } else if ( songs[currentSong].position() >= songs[currentSong].length()*9/10 ) {
      songs[currentSong].rewind();
      /* 
      student to finish
      .pause(), rewind(), then cue the next song */
    } else {
      songs[currentSong].play();
      if ( pauseAutoStop == true ) {
        autoPlayOn = true;
        pauseAutoStop = false;
      }
    }
  }// end play-pause button
  //Autoplay button
  if ( key == 'A' || key == 'a' ){ // turning autoPlayOn false or true
    if ( autoPlayOn == false ){
      autoPlayOn = true;
    } else {
      autoPlayOn = false;
    }
  } //end Autoplay Button
  //next button
  // * very simple next button, needs to be smarter *
  if ( key == 'G' || key == 'g' ){
    if( songs[currentSong].isPlaying() ){
      if ( currentSong == songs.length - 1 ) { //ERROR catch:
        songs[currentSong].mute();
        currentSong = songs.length - songs.length; // intention is zero
        songs[currentSong].unmute();
        songs[currentSong].rewind();
        songs[currentSong].pause();
        songs[currentSong].play();
        wentBack = true;
        // if at the end of playlist this sets it to zero
      } else {
        wentBack = false;
      } 
      if ( wentBack == false ) {
        songs[currentSong].mute();
        currentSong++;
        songs[currentSong].unmute();
        songs[currentSong].rewind();
        songs[currentSong].pause();
        songs[currentSong].play();
      }
    } else {
      songs[currentSong].loop(0);
    }
  }//end next button
  /*
  //previous song button, back button
  //students to develop, based on next button 'g'
  previous button */
  if ( key == 'H' || key == 'h' ) {
    if( songs[currentSong].isPlaying() ) {
      if ( currentSong <= songs.length - songs.length ) { //ERROR catch:
        songs[currentSong].mute();
        currentSong = songs.length - 1; //moves to top of the playlist
        songs[currentSong].unmute();
        songs[currentSong].rewind();
        songs[currentSong].pause();
        songs[currentSong].play();
        wentBack = true;
        // if at the end of playlist this sets it to zero
      } else {
        wentBack = false;
      } 
      if ( wentBack == false ) {
        songs[currentSong].mute();
        currentSong--;
        songs[currentSong].unmute();
        songs[currentSong].rewind();
        songs[currentSong].pause();
        songs[currentSong].play();
      }
    } else {
      songs[currentSong].loop(0);
    }
  }//end previous button
}//end keyPressedMusic
void mousePressedMusic(){}//end mousePressedMusic
void concatenationOfMusicFiles(){
  pathway = "data/";
  beatYourCompetition = "Beat_Your_Competition.mp3"; //song
  groove = "FreeWare Music_MusicDownload_groove.mp3"; //song
  eureka = "Eureka.mp3";//song
  carDoor = "FreeWare Music_SoundEffect_Car_Door_Closing.mp3"; //SFX
  woodDoor = "FreeWare Music_SoundEffect_Wood_Door_Open_and_Close_Series.mp3"; //SFX
}//end concatenation
void autoPlayMusic() {
  if ( autoPlayOn ) {
    if ( autoPlayOn == true ) {
    } if ( songs[currentSong].isPlaying() ) {
    } else {
      if ( currentSong == songs.length - 1 ) { //ERROR catch:
        songs[currentSong].mute();
        currentSong = songs.length - songs.length; // intention is zero
        songs[currentSong].unmute();
        songs[currentSong].rewind();
        songs[currentSong].pause();
        songs[currentSong].play();
        wentBack = true;
        // if at the end of playlist this sets it to zero
      } else {
        wentBack = false;
      } 
      if ( wentBack == false ) {
        songs[currentSong].mute();
        currentSong++;
        songs[currentSong].unmute();
        songs[currentSong].rewind();
        songs[currentSong].pause();
        songs[currentSong].play();
      }
    }
  }//end autoPlayOn
}//end autoPlayMusic
    /*
    ex#1: .postion() >= .length(), then rewind(), currentSong+=1, .play()
    ex#2: .isPlaying(), when false rewind(), currentSong+1, .play()
    */
void mute() {
  if ( songs[currentSong].isMuted() ) {
    songs[currentSong].unmute();
  } else {
    songs[currentSong].mute();
    /*
    ERROR: Only works when song is playing
    ERROR FIX: unmute or rewind when song is not playing (ie. unmute next song) */
  }
}//end mute
//end MusicPlayer232 subProgram
