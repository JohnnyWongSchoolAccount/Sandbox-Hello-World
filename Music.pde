//Gobal variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
String pathway, groove, beatYourCompetition, carDoor, woodDoor;
int currentSong = 1;
//
void setupMusic() {
  //
  minim = new Minim (this); //load from data directory
  //
  //set the directory or pathway to music
  //pathway: data / music or sound effect files
  //reminder: finish Operating System code to auto read pathway and files (see operating system)
  concatenationOfMusicFiles();
  songs[0] = minim.loadFile( pathway + groove ); //song
  songs[1] = minim.loadFile( pathway + beatYourCompetition ); //song
  soundEffects[0] = minim.loadFile( pathway + carDoor ); //SFX
  soundEffects[1] = minim.loadFile( pathway + woodDoor ); //SFX
}//end setupmusic
//
void drawMusic() {
}//end drawMusic
//
void keyPressedMusic(){
  //
  if (key == 'm' || key == 'M') {//mute button
  //ERROR: Only works when song is playing
  //ERROR FIX: unmute or rewind when song is not playing (ie. unmute next song)
    if ( songs[currentSong].isMuted() ) {
      songs[currentSong].unmute();
    } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/6 ) {
      songs[currentSong].rewind();
    }
    else{
      songs[currentSong].mute();
    }// else mute
  }//end mute button
  //
  //forward and reverse button
  //forward
  if ( key == 'F' || key == 'f') {
    songs[currentSong] .skip(3000); //paramiters in milliseconds
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*9/10 ) {
  }// end forward //if else () {}//end forward
  //reverse
  if ( key == 'R' || key == 'r') {
     songs[currentSong] .skip(-3000);//paramiters in milliseconds
  }//end reverse
  //
  //single loop
  if ( key == '1' ){
   delay( songs[currentSong].length() - songs[currentSong].position() ); //finishes the song
   //ERROR: delay stops all player functions, comp doesn't recognize if song is playing
   songs[currentSong].loop(0);
  }
  //
  // loop infinite
  if ( key <= '9' && key !='1' ){
   delay( songs[currentSong].length() - songs[currentSong].position() ); //finishes the song
   //ERROR: delay stops all player functions, comp doesn't recognize if song is playing
   songs[currentSong].loop(-1);
  }// end loop infinite
  //
  //stop button
  if () {}//end stop
  if ( songs[currentSong].isPlaying() ) { .pause(); .rewind(); } else{ .rewind(); }
  //
  //play pause
}//end keyPressedMusic
//
void mousePressedMusic(){}//end mousePressedMusic
//
void concatenationOfMusicFiles() {
  pathway = "data/";
  beatYourCompetition = "Beat_Your_Competition.mp3"; //song
  groove = "FreeWare Music_MusicDownload_groove.mp3"; //song
  carDoor = "FreeWare Music_SoundEffect_Car_Door_Closing.mp3"; //SFX
  woodDoor = "FreeWare Music_SoundEffect_Wood_Door_Open_and_Close_Series.mp3"; //SFX
}//end concatenation
//
//end Music subProgram
