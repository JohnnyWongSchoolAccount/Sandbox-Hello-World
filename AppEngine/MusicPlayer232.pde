/*this code is a work in progress */
//Gobal variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
String pathway, groove, beatYourCompetition, carDoor, woodDoor, eureka; //the songs/SFX
int currentSong = 0; //current song
boolean autoPlayOn = false; //setting defult - auto-play
boolean wentBack = false; //setting defult - auto-play ERROR catch
boolean pauseAutoStop = false;//setting defult - auto-play ERROR catch
boolean nit = false;//setting defult - night mode
boolean ONOFF_MUSICPLAYER = false;//setting defult - MusicPlayer
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
  // ERROR: CANVAS is bigger than display
  // ERROR: stating display geometry (i.e. landscape, portrait)
}//end setupMusic()
//
void drawMusic() { 
  debugging();//debugging in consol
  if (ONOFF_MUSICPLAYER){ hoverOverMusicButtons(); }
}//end drawMusic()
void mousePressedMusic(){ 
  if (ONOFF_MUSICPLAYER) { mousePressedMusicButtons(); } 
}//end mousePressedMusic
void keyPressedMusic() {//keybinds
  if (ONOFF_MUSICPLAYER) { keyPressedMusicButtons(); }
}//end keyPressedMusic
//
void concatenationOfMusicFiles(){
  pathway = "data/";
  beatYourCompetition = "Beat_Your_Competition.mp3"; //song
  groove = "Music_groove.mp3"; //song
  eureka = "Eureka.mp3";//song
  carDoor = "FreeWare Music_SoundEffect_Car_Door_Closing.mp3"; //SFX
  woodDoor = "Sound Effects_Wood_Door_Open_and_Close_Series"; //SFX
}//end concatenation
//all the mouse pressed/Hoverover features for music player
void hoverOverMusicButtons() {
  //MUSIC BUTTON / MOUSE PRESSED AND HOVER OVER */
  background( background );//background color
  strokeJoin( ROUND ); //the outlines of the shapes
  strokeWeight(4);
  population();//Popululation subProgram
  autoPlayMusic();
  drawhitboxes();
  drawTextMusic(0,0,":");//text subProgram
  timeline(10, 0, 0, 0);
  //pause-play button
  if ( mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight)
  {
    if (songs[currentSong].isPlaying()){
      drawPBPBcoverer();//Popululation subProgram
      fill(hoverOver); stroke(purp);
      drawPauseButton();//Popululation subProgram
    } else {
      drawPBPBcoverer();
      fill(hoverOver); stroke(purp);
      drawPlayButton();//Popululation subProgram
    } //stroke(background);
  } else if ( songs[currentSong].isPlaying() ) { //play button
      drawPBPBcoverer();//Popululation subProgram
      fill(black); stroke(purp);
      drawPauseButton();//Popululation subProgram
  } else { //pause button
      drawPBPBcoverer();//Popululation subProgram
      fill(black); stroke(purp);
      drawPlayButton();//Popululation subProgram
  }
  //rewind button
  if ( mouseX>=skipbX2 && mouseX<=skipbX2+pauseHeight && mouseY>=skipbY3 && mouseY<=skipbY3+BOXW )
  { fill(hoverOver); } else { fill(black); }
  drawSkipBButton();//Popululation subProgram
  //forward buton
  if ( mouseX>=skipfX32 && mouseX<=skipfX32+pauseHeight && mouseY>=skipfY3 && mouseY<=skipfY3+BOXW )
  { fill(hoverOver); } else { fill(black); }
  drawSkipFButton();//Popululation subProgram
  //previous button
  if ( mouseX>=skipBarX1 && mouseX<=skipBarX1+pauseHeight && mouseY>=skipY3 && mouseY<=skipY3+pauseHeight ) 
  {fill(hoverOver);} else {fill(black);}
  drawPreviousButton();//Popululation subProgram
  //next button
  if ( mouseX>=skipX12 && mouseX<=skipX12+pauseHeight && mouseY>=skipY32 && mouseY<=skipY32+pauseHeight ) 
  {fill(hoverOver);} else {fill(black);}
  drawNextButton();//Popululation subProgram
  //mute button
  if ( mouseX>=muteX && mouseX<=muteX+pauseHeight && mouseY>=muteY2 && mouseY<=muteY2+pauseHeight )
  { fill(hoverOver); } else if( songs[currentSong].isMuted() ){fill(toggleOn);} else {fill(black);}
  drawMuteButton();//Popululation subProgram
  //stop button
  if ( mouseX>=stopX && mouseX<=stopX+pauseHeight && mouseY>=stopY && mouseY<=stopY+pauseHeight )
  { fill(hoverOver); } else {fill(black);}
  drawStopButton();//Popululation subProgram
  //loop button
  if ( mouseX>=loopX1 && mouseX<=loopX1+pauseHeight && mouseY>=loopY1 && mouseY<=loopY1+pauseHeight )
  { fill(hoverOver); } else {fill(black);}
  drawLoopButton();//Popululation subProgram
  if ( mouseX>=loopX1 && mouseX<=loopX1+pauseHeight && mouseY>=loopY1 && mouseY<=loopY1+pauseHeight )
  { fill(hoverOver); } else {fill(black);}
  drawLoopTButton();//Popululation subProgram
  textDraw( height, purpInk, CENTER, CENTER, Font, text, loopX1, loopY1/1.3, loopWidth, loopHeight);
  //loop infinite button
  if ( mouseX>=loopiX1 && mouseX<=loopiX1+pauseHeight && mouseY>=loopiY1 && mouseY<=loopiY1+pauseHeight )
  { fill(hoverOver); } else {fill(black);}
  drawLoopButtonInf();//Popululation subProgram
  if ( mouseX>=loopiX1 && mouseX<=loopiX1+pauseHeight && mouseY>=loopiY1 && mouseY<=loopiY1+pauseHeight )
  { fill(hoverOver); } else {fill(black);}
  drawLoopTButtonInf();//Popululation subProgram
  textDraw( height, purpInk, CENTER, CENTER, Font, text2, loopiX1, loopiY1/1.3, loopWidth, loopHeight );
  //shuffle button
  if ( mouseX>=shuffleX3 && mouseX<=shuffleX3+pauseHeight && mouseY>=shuffleY12 && mouseY<=shuffleY12+pauseHeight )
  { fill(hoverOver); } else {fill(black);}
  drawShuffleButton();//Popululation subProgram
  //autoplay
  if ( mouseX>=autoX1 && mouseX<=autoX1+pauseHeight && mouseY>=autoY1 && mouseY<=autoY1+pauseHeight )
  { fill(hoverOver); } else if ( autoPlayOn == true ) {fill(toggleOn);} else {fill(black);}
  drawAutoPlayButton();//Popululation subProgram
  if ( mouseX>=autoX1 && mouseX<=autoX1+pauseHeight && mouseY>=autoY1 && mouseY<=autoY1+pauseHeight )
  { fill(hoverOver); } else if ( autoPlayOn == true ) {fill(toggleOn);} else {fill(black);}
  drawAutoPlayTButton();//Popululation subProgram
  textDraw( height, purpInk, CENTER, CENTER, Font, text3, autoX1, autoY1/1.18, autoWidth, autoHeight );
  if ( mouseX>=musicX1 && mouseX<=musicX1+musicWidth && mouseY>=musicY1 && mouseY<=musicY1+musicHeight )
  {fill(hoverOver);} else {fill(black);}
  music();//Population subProgram
  textDraw( height, purpInk, CENTER, CENTER, Font, textPortAlt, pauseWidth, pauseHeight*6.7, appWidth/6, pauseHeight);
}//end hoverOverMusicButtons
void mousePressedMusicButtons() {
  //pause button
  if ( mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight )
  { pausePlay(); }
  //rewind button
  if ( mouseX>=skipbX2 && mouseX<=skipbX1+BOXW && mouseY>=skipbY3 && mouseY<=skipbY3+BOXW )
  { rewind(-3000); }
  //forward button
  if ( mouseX>=skipfX32 && mouseX<=skipfX1+pauseHeight && mouseY>=skipfY3 && mouseY<=skipfY3+BOXW )
  { forward(3000); }
  //previous track button
  if ( mouseX>=skipBarX1 && mouseX<=skipBarX1+pauseHeight && mouseY>=skipY3 && mouseY<=skipY3+pauseHeight )
  { previous(); }
  //next track button
  if ( mouseX>=skipX12 && mouseX<=skipX12+pauseHeight && mouseY>=skipY32 && mouseY<=skipY32+pauseHeight )
  { next(); }
  //mute button
  if ( mouseX>=muteX && mouseX<=muteX+pauseHeight && mouseY>=muteY2 && mouseY<=muteY2+pauseHeight )
  { mute(); }
  //stop button
  if ( mouseX>=stopX && mouseX<=stopX+pauseHeight && mouseY>=stopY && mouseY<=stopY+pauseHeight )
  { Stop(); }
  //loop button
  if ( mouseX>=loopX1 && mouseX<=loopX1+pauseHeight && mouseY>=loopY1 && mouseY<=loopY1+pauseHeight )
  { loop1(1,0); }
  if ( mouseX>=loopiX1 && mouseX<=loopiX1+pauseHeight && mouseY>=loopiY1 && mouseY<=loopiY1+pauseHeight )
  { loopInf(-1); }
  if ( mouseX>=shuffleX3 && mouseX<=shuffleX3+pauseHeight && mouseY>=shuffleY12 && mouseY<=shuffleY12+pauseHeight )
  { Shuffle(0); }
  if ( mouseX>=autoX1 && mouseX<=autoX1+pauseHeight && mouseY>=autoY1 && mouseY<=autoY1+pauseHeight )
  { autoPlay(); }
}//end mousePressedMusicButtons
void keyPressedMusicButtons() {
  //pause-play button
  if ( key == 'P' || key == 'p' ) { pausePlay(); }//end pause-play button keybind
  //rewind button
  if ( key == 'R' || key == 'r'){ rewind(-3000); }//end reverse keybind
  //forward button
  if ( key == 'F' || key == 'f'){ forward(3000); }//end forward keybind
  //previous button
  if ( key == 'H' || key == 'h' ) { previous(); }//end previous button keybind
  //next button
  if ( key == 'G' || key == 'g' ) { next(); }//end next button keybind
  //mute button
  if (key == 'M' || key == 'm') { mute(); }//end mute button keybind
  //stop button
  if ( key == 'S' || key == 's' ) { Stop(); }//end stop keybind
  //single loop button
  if ( key == '1' ) { loop1(1,0); }//end single loop keybind
  //loop infinite button
  if ( key <= '9' && key !='1' ) { loopInf(-1); }//end loop infinite keybind
  //Shuffle button
  if (key == 'W' || key == 'w') { Shuffle(0); }//end shuffle keybind
  //Autoplay button
  if ( key == 'A' || key == 'a' ) { autoPlay(); }//end Autoplay Button keybind
}//end keyPressedMusicButtons
// all the music button funcitons ;)
void pausePlay() {//pause-play button
  if ( songs[currentSong].isPlaying() ) {//if song was playing then pauses the song
    if ( autoPlayOn == true ){//ERROR catch
      autoPlayOn = false;
      pauseAutoStop = true;
    }
    songs[currentSong].pause();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*9.5/10 ) {
    songs[currentSong].rewind();
    songs[currentSong].play();
  } else {//if the song was already paused/'not playing' then starts playing the song again
    songs[currentSong].play();//plays the song
    if ( pauseAutoStop == true ) {//ERROR catch
      autoPlayOn = true;
      pauseAutoStop = false;
    }
  }//end pause button
}//end pause-play
void rewind(int rewindV) {//rewind button - rewindV = -3000
  songs[currentSong].skip(rewindV);//paramiters in milliseconds -> goes back 3 seconds
  //if the song is at the very beginning the reverse button will skip the the previous song paused
  if ( songs[currentSong].position() == songs.length - songs.length ) {//intention is zero
    previous();
    songs[currentSong].pause();
  }
}//end rewind
void forward( int forwardV ) { //forward button - forwardV = 3000
  if ( songs[currentSong].length()-songs[currentSong].position()>=forwardV+1  ){
    songs[currentSong].skip(forwardV);//paramiters in milliseconds -> skips song 3 seconds
  }//end forward 
}//end forward button
void mute() { //mute button
  if ( songs[currentSong].isMuted() ) {//button works when song is not playing
    songs[currentSong].unmute();//switches off .mute()
  } else {//if song is not muted
    songs[currentSong].mute();//mutes song
  }//end mute button
}//end mute
void Stop() {//Stop
  if (autoPlayOn == true) {//ERROR catch -> when auto play was on if the song != playing it would switch the song preventing stop from working
    autoPlayOn = false;
    pauseAutoStop = true;//ERROR catch -> so that autoPlayOn could be turned on again when desired from user
  }
  songs[currentSong].pause(); //stops the song from playing
  songs[currentSong].rewind();
}//end stop()
void loop1(int loop1, int loop12) {//loop1
  if ( songs[currentSong].isPlaying() ) {
  songs[currentSong].pause();//substitute for delay() does not break the rest of code
  songs[currentSong].loop(loop1);
  } else {//loop the song at the end of the track -> so that delay() != used
    songs[currentSong].loop(loop12);//loops song 1 time
  }//end loop 1 button
}//end loop1
void loopInf(int loopInf) {//loop inf
  songs[currentSong].pause();//substitute for delay() does not break the rest of code
  songs[currentSong].loop(loopInf);
}//end loopInf
void previous() {//previous
  if ( currentSong <= songs.length - songs.length ) { //ERROR catch:
    songs[currentSong].pause();//stops songs from playing ontop of eachother
    currentSong = songs.length - 1; //moves to top of the playlist
    repapla();//.rewind(), .pause(), .play() -> plays desired song
    wentBack = true;//ERROR catch
    // if at the end of playlist this sets it to zero
  } else { 
    wentBack = false;//ERROR catch
  }
  if ( wentBack == false ) {
    songs[currentSong].pause();//stops songs from playing ontop of eachother
    currentSong--;//plays the previous song
    repapla();//.rewind(), .pause(), .play() -> plays desired song
  }//end previous button
}//end previous
void next() {//next
  if ( currentSong == songs.length - 1 ) { //ERROR catch:
    songs[currentSong].pause();//so that songs do not play on top of eachother
    currentSong = songs.length - songs.length; // intention is zero
    repapla();//.rewind(), .pause(), .play() -> plays desired song
    wentBack = true;//ERROR catch
    // if at the end of playlist this sets it to zero
  } else {
    wentBack = false;
  } 
  if ( wentBack == false ) {
    songs[currentSong].pause();//stops the song from playing ontop of eachother
    currentSong++;//switches the song
    repapla();//.rewind(), .pause(), .play() -> plays desired song
  }//end next button
}//end next
void Shuffle(float rand) { //shuffle button
  rand = random(songs.length);//picks a random #
  if ( rand >= songs.length ) { //ERROR catch
    rand = songs.length - 1;//if the song picked is the highest # in array plays the top song in playlist
  } else {//if the song is below the array #
    songs[currentSong].pause();//prevents songs playing ontop of eachother
    currentSong = int(rand);//changes to the song chosen
    repapla();//.rewind(), .pause(), .play() -> plays desired song
  }//end shuffle button
}// end shuffle()
void autoPlay() {//autoPlay -> turning autoplay on or off
  if ( autoPlayOn == false ){
    autoPlayOn = true;//turns autoplay on
  } else {//if autoplay is on turns the boolean off
    autoPlayOn = false;//turns autoplay off
  }//end autoplay button
}//end autoPlay
void autoPlayMusic() { //auto-Play button -> automatically plays through the playlist
  if ( autoPlayOn ) {//empty if -> does nothing 
    if ( songs[currentSong].isPlaying() ) {//empty if -> does nothing
    } else {//if song != playing then exicutes skipping the song -> so delay() is not used 
      next();
    }
  }//end autoPlayOn button
}//end autoPlayMusic 
void repapla() {//.rewind(), .pause(), .play()
  songs[currentSong].rewind();
  songs[currentSong].pause();
  songs[currentSong].play();
  songs[currentSong].unmute();
}//end repapla
void timeline(int HeightTL, int WidthTL, float time, float duration ) {
  duration = songs[currentSong].length();
  time = songs[currentSong].position();
  float progress = time/duration;
  fill(purp); stroke(purp);
  rect(WidthTL, HeightTL, HeightTL * appWidth, - appHeight);
  fill(hoverOver); stroke(hoverOver);
  rect(WidthTL, HeightTL, progress*appWidth, - appHeight);
}//end timeline
//DEBUGGING
void debugging() { //debugging in consol 
  println( "Current Song Position:", songs[currentSong].position() );//songs position
  println( "end of Song:", songs[currentSong].length() );//songs length
  println( "Muted:", songs[currentSong].isMuted() );//whether the song is muted or not
  println( "Current song:", currentSong );// song being played
  println( "musicPlayer:", ONOFF_MUSICPLAYER );// song being played
  println( "port:", Port );// song being played
}//end debugging */
void drawhitboxes() { //debugging
  //rect(pauseX1, pauseY1, BOXW, pauseHeight);  //pause-play button
  //rect(skipbX2, skipbY3, pauseHeight, BOXW);   //rewind button
  //rect(skipfX32, skipfY3, pauseHeight, BOXW);   //forward button
  //rect(skipBarX1, skipY3, pauseHeight, pauseHeight);  //previous track button
  //rect(skipX12, skipY32, pauseHeight, pauseHeight);  //next track button
  //rect(muteX, muteY2, pauseHeight, pauseHeight);  //mute button
  //rect(stopX, stopY, pauseHeight, pauseHeight);  //stop button
  //rect(loopX1, loopY1, pauseHeight, pauseHeight);  //loop button
  //rect(loopiX1, loopiY1, pauseHeight, pauseHeight);  //loop Infinite button
  //rect(shuffleX3, shuffleY12, pauseHeight, pauseHeight);  //shuffle
  //rect(autoX1, autoY1, pauseHeight, pauseHeight);  //auto-play
}//end drawhitboxes
//end MusicPlayer232 subProgram
