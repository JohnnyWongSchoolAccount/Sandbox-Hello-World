//Gobal variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
String pathway, groove, beatYourCompetition, carDoor, woodDoor;
int currentSong = 0;
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
    //mute button
    if ( songs[currentSong].isMuted() ) {
      songs[currentSong].unmute();
    } else if ( songs[currentSong].position() >= songs[currentSong].length()*6/7 ) {
      songs[currentSong].rewind();
    }
    else{
      songs[currentSong].mute();
    }// else mute
  }//end mute button
}//end keyPressedMusic
//
void mousePressedMusic() {
}//end mousePressedMusic
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
