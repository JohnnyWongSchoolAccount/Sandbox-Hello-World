/*this code is a work in progress */
//Gobal variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV,AIFF,AU,SND,and MP3
String pathway, groove, beatYourCompetition, carDoor, woodDoor, eureka; //the songs/SFX
float rand;//random variable
int currentSong = 0; //current song
boolean autoPlayOn = false; //setting defult - auto-play
boolean wentBack = false; //setting defult - auto-play ERROR catch
boolean pauseAutoStop = false;//setting defult - auto-play ERROR catch
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
  //
  // ERROR: CANVAS is bigger than display
  // ERROR: stating display geometry (i.e. landscape, portrait)
}//end setupMusic()
//
void drawMusic() { 
  //debugging in consol
  println( "Current Song Position:", songs[currentSong].position() );//songs position
  println( "end of Song:", songs[currentSong].length() );//songs length
  println( "Muted:", songs[currentSong].isMuted() );//whether the song is muted or not
  println( "Random:", rand );//song that shuffle chose
  println( "Current song:", currentSong );// song being played
  //MUSIC BUTTON / MOUSE PRESSED AND HOVER OVER
  autoPlayMusic();
  drawhitboxes();
  //pause-play button
  if ( mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight)
  { fill(hoverOver); 
    rect(pauseX1, pauseY1, BOXW, pauseHeight);//rectangle
  } else if ( songs[currentSong].isPlaying() ) { //play button
    stroke(background); fill(background);//covers undesired shape
    rect(pauseX1, pauseY1, BOXW, pauseHeight);
    fill(black); stroke(purp);//defult button colors
    rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 22 ); //right rectangle
    rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 22 ); //left rectangle
  } else { //pause button
    stroke(background); fill(background);//covers undesired shape
    rect(pauseX1, pauseY1, BOXW, pauseHeight);//rectangle
    fill(black); stroke(purp);//defult button colors
    triangle(playX1, playY1, playX2, playY2, playX3, playY3 ); //triangle
  }//end pause-play button
  //rewind button
  if ( mouseX>=skipbX2 && mouseX<=skipbX1+BOXW && mouseY>=skipbY3 && mouseY<=skipbY3+BOXW )
  { fill(hoverOver); } else { fill(black); }
  triangle(skipbX12, skipbY12, skipbX22, skipbY22, skipbX32, skipbY32); // right side
  triangle(skipbX1, skipbY1, skipbX2, skipbY2, skipbX3, skipbY3); // right side
  //forward buton
  if ( mouseX>=skipfX32 && mouseX<=skipfX1+BOXW && mouseY>=skipfY3 && mouseY<=skipfY3+BOXW )
  { fill(hoverOver); } else { fill(black); }
  triangle(skipfX12, skipfY12, skipfX22, skipfY22, skipfX32, skipfY32); // left side
  triangle(skipfX1, skipfY1, skipfX2, skipfY2, skipfX3, skipfY3); // left side
  //previous button
  if ( mouseX>=skipBarX1 && mouseX<=skipBarX1+pauseHeight && mouseY>=skipY3 && mouseY<=skipY3+pauseHeight ) 
  {fill(hoverOver);} else {fill(black);}
  triangle( skipX1, skipY1, skipX2, skipY2, skipX3, skipY3 );//triange skip1
  rect( skipBarX1, skipBarY1, skipBarWidth, skipBarHeight, 22 );//bar skip1
  //next button
  if ( mouseX>=skipX12 && mouseX<=skipX12+pauseHeight && mouseY>=skipY32 && mouseY<=skipY32+pauseHeight ) 
  {fill(hoverOver);} else {fill(black);}
  triangle( skipX12, skipY12, skipX22, skipY22, skipX32, skipY32 );//triange skip2
  rect( skipBarX2, skipBarY2, skipBarWidth, skipBarHeight, 22 );//bar skip2
  //mute button
  if ( mouseX>=muteX && mouseX<=muteX+pauseHeight && mouseY>=muteY2 && mouseY<=muteY2+pauseHeight )
  { fill(hoverOver); } else {fill(black);}
  triangle(mutetX1, mutetY1, mutetX2, mutetY2, mutetX3, mutetY3); // triangle
  rect(muteX, muteY, muteWidth, muteHeight); // rectangle
  rect(muteX2, muteY2, muteWidth2, muteHeight2); // blocking rectangle left side
  //triangle(mutetX12, mutetY12, mutetX22, mutetY22, mutetX32, mutetY32);
  //stop button
  if ( mouseX>=stopX && mouseX<=stopX+pauseHeight && mouseY>=stopY && mouseY<=stopY+pauseHeight )
  { fill(hoverOver); } else {fill(black);}
  rect( stopX, stopY, stopWidth, stopHeight, 22 ); //square
  //loop button
  if ( mouseX>=loopX1 && mouseX<=loopX1+pauseHeight && mouseY>=loopY1 && mouseY<=loopY1+pauseHeight )
  { fill(hoverOver); } else {fill(black);}
  rect(loopX1, loopY1, loopWidth, loopHeight, 22); // outside rect
  fill(background); // inside rect
  rect(loopX2, loopY2, loopWidth2, loopHeight2, 13); // inside rect
  if ( mouseX>=loopX1 && mouseX<=loopX1+pauseHeight && mouseY>=loopY1 && mouseY<=loopY1+pauseHeight )
  { fill(hoverOver); } else {fill(black);}
  triangle(looptX1, looptY1, looptX2, looptY2, looptX3, looptY3); // triangle
  textDraw( height, purpInk, CENTER, CENTER, Font, string, loopX1, loopY1, loopWidth, loopHeight); //can be anywhere
  //loop infinite button
  if ( mouseX>=loopiX1 && mouseX<=loopiX1+pauseHeight && mouseY>=loopiY1 && mouseY<=loopiY1+pauseHeight )
  { fill(hoverOver); } else {fill(black);}
  rect(loopiX1, loopiY1, loopiWidth, loopiHeight, 22); // outside rect
  fill(background); // inside rect
  rect(loopiX2, loopiY2, loopiWidth2, loopiHeight2, 13); // inside rect
  if ( mouseX>=loopiX1 && mouseX<=loopiX1+pauseHeight && mouseY>=loopiY1 && mouseY<=loopiY1+pauseHeight )
  { fill(hoverOver); } else {fill(black);}
  triangle(looptiX1, looptiY1, looptiX2, looptiY2, looptiX3, looptiY3); // triangle
  textDraw( height, purpInk, CENTER, CENTER, Font, string2, loopiX1, loopiY1, loopWidth, loopHeight ); //can be anywhere
  //shuffle button
  if ( mouseX>=shuffleX3 && mouseX<=shuffleX3+pauseHeight && mouseY>=shuffleY12 && mouseY<=shuffleY12+pauseHeight )
  { fill(hoverOver); } else {fill(black);}
  triangle(shuffleX1, shuffleY1, shuffleX2, shuffleY2, shuffleX3, shuffleY3); // bottom
  triangle(shuffleX12, shuffleY12, shuffleX22, shuffleY22, shuffleX32, shuffleY32); // top
  //autoplay
  if ( mouseX>=autoX1 && mouseX<=autoX1+pauseHeight && mouseY>=autoY1 && mouseY<=autoY1+pauseHeight )
  { fill(hoverOver); } else if ( autoPlayOn == true ) {fill(toggleOn);} else {fill(black);}
  rect(autoX1, autoY1, autoWidth, autoHeight, 22); // outside rect
  fill(background); // inside rect
  rect(autoX2, autoY2, autoWidth2, autoHeight2, 13); // inside rect
  if ( mouseX>=autoX1 && mouseX<=autoX1+pauseHeight && mouseY>=autoY1 && mouseY<=autoY1+pauseHeight )
  { fill(hoverOver); } else if ( autoPlayOn == true ) {fill(toggleOn);} else {fill(black);}
  triangle(autotX1, autotY1, autotX2, autotY2, autotX3, autotY3); // triangle
  triangle(autotX12, autotY12, autotX22, autotY22, autotX32, autotY32); // triangle
  textDraw( height, purpInk, CENTER, CENTER, Font, string3, autoX1, autoY1, autoWidth, autoHeight ); //can be anywhere
}//end drawMusic()
//
void keyPressedMusic() {//keybinds
  //pause-play button
  if ( key == 'P' || key == 'p' ) { pausePlay(); }//end pause-play button keybind
  //rewind button
  if ( key == 'R' || key == 'r'){ rewind(); }//end reverse keybind
  //forward button
  if ( key == 'F' || key == 'f'){ forward(); }//end forward keybind
  //previous button
  if ( key == 'H' || key == 'h' ) { previous(); }//end previous button keybind
  //next button
  if ( key == 'G' || key == 'g' ) { next(); }//end next button keybind
  //mute button
  if (key == 'M' || key == 'm') { mute(); }//end mute button keybind
  //stop button
  if ( key == 'S' || key == 's' ) { Stop(); }//end stop keybind
  //single loop button
  if ( key == '1' ) { loop1(); }//end single loop keybind
  //loop infinite button
  if ( key <= '9' && key !='1' ) { loopInf(); }//end loop infinite keybind
  //Shuffle button
  if (key == 'W' || key == 'w') { Shuffle(); }//end shuffle keybind
  //Autoplay button
  if ( key == 'A' || key == 'a' ) { autoPlay(); }//end Autoplay Button keybind
}//end keyPressedMusic
//
void mousePressedMusic(){
  //pause button
  if ( mouseX>=pauseX1 && mouseX<=pauseX1+BOXW && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight )
  { pausePlay(); }
  //rewind button
  if ( mouseX>=skipbX2 && mouseX<=skipbX1+BOXW && mouseY>=skipbY3 && mouseY<=skipbY3+BOXW )
  { rewind(); }
  //forward button
  if ( mouseX>=skipfX32 && mouseX<=skipfX1+pauseHeight && mouseY>=skipfY3 && mouseY<=skipfY3+BOXW )
  { forward(); }
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
  { loop1(); }
  if ( mouseX>=loopiX1 && mouseX<=loopiX1+pauseHeight && mouseY>=loopiY1 && mouseY<=loopiY1+pauseHeight )
  { loopInf(); }
  if ( mouseX>=shuffleX3 && mouseX<=shuffleX3+pauseHeight && mouseY>=shuffleY12 && mouseY<=shuffleY12+pauseHeight )
  { Shuffle(); }
  if ( mouseX>=autoX1 && mouseX<=autoX1+pauseHeight && mouseY>=autoY1 && mouseY<=autoY1+pauseHeight )
  { autoPlay(); }
}//end mousePressedMusic
//
void drawhitboxes() { //for debugging
  //rect(pauseX1, pauseY1, BOXW, pauseHeight);  //pause-play button
  //rect(skipbX2, skipbY3, BOXW, BOXW);   //rewind button
  //rect(skipfX32, skipfY3, BOXW, BOXW);   //forward button
  //rect(skipBarX1, skipY3, pauseHeight, pauseHeight);  //previous track button
  //rect(skipX12, skipY32, pauseHeight, pauseHeight);  //next track button
  //rect(muteX, muteY2, pauseHeight, pauseHeight);  //mute button
  //rect(stopX, stopY, pauseHeight, pauseHeight);  //stop button
  //rect(loopX1, loopY1, pauseHeight, pauseHeight);  //loop button
  //rect(loopiX1, loopiY1, pauseHeight, pauseHeight);  //loop Infinite button
  //rect(shuffleX3, shuffleY12, pauseHeight, pauseHeight);  //shuffle
  //rect(autoX1, autoY1, pauseHeight, pauseHeight);  //auto-play
}//end drawhitboxes
//
void concatenationOfMusicFiles(){
  pathway = "data/";
  beatYourCompetition = "Beat_Your_Competition.mp3"; //song
  groove = "Music_groove.mp3"; //song
  eureka = "Eureka.mp3";//song
  carDoor = "FreeWare Music_SoundEffect_Car_Door_Closing.mp3"; //SFX
  woodDoor = "Sound Effects_Wood_Door_Open_and_Close_Series"; //SFX
}//end concatenation
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
void rewind() {//rewind button
  if ( songs[currentSong].position() <= songs[currentSong].length() * 9/10 ) {//prevents song being rewinded too far
    songs[currentSong].skip(-3000);//paramiters in milliseconds -> goes back 3 seconds
    //if the song is at the very beginning the reverse button will skip the the previous song paused
  } if ( songs[currentSong].position() == songs.length - songs.length ) {//intention is zero
    if( songs[currentSong].isPlaying() ) {
      if ( currentSong <= songs.length - songs.length ) { //ERROR catch:
        songs[currentSong].pause();//so songs do not play ontop of eachother
        currentSong = songs.length - 1; //moves to top of the playlist
        songs[currentSong].rewind();
        songs[currentSong].pause();//for the desired song
        wentBack = true;//ERROR catch
        // if at the end of playlist this sets it to zero
      } else { wentBack = false; } 
      if ( wentBack == false ) {
        songs[currentSong].pause();//so songs do not play ontop of eachother
        currentSong--;//switiches to the previous song
        songs[currentSong].rewind();
        songs[currentSong].pause();//for the desired song
      }
    }
  }//end rewind button
}//end rewind
void forward() { //forward button
  if ( songs[currentSong].position() <= songs[currentSong].length() * 7.5/10) {//prevents the song being skipped too far
    songs[currentSong].skip(3000); //paramiters in milliseconds -> skips song 3 seconds
  }// end forward //if else () {}//end forward
}//end forward button
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
void Stop() {//Stop
  if (autoPlayOn == true) {//ERROR catch -> when auto play was on if the song != playing it would switch the song preventing stop from working
    autoPlayOn = false;
    pauseAutoStop = true;//ERROR catch -> so that autoPlayOn could be turned on again when desired from user
  }
  songs[currentSong].pause(); //stops the song from playing
  songs[currentSong].rewind();
}//end stop()
void loop1() {//loop1
  if ( songs[currentSong].isPlaying() ) {
  songs[currentSong].pause();//substitute for delay() does not break the rest of code
  songs[currentSong].loop(1);
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
  if ( songs[currentSong].isPlaying() ) {
  songs[currentSong].pause();//substitute for delay() does not break the rest of code
  songs[currentSong].loop(-1);
  } else {//if song != playing song replays -> so delay() != used
    songs[currentSong].loop(-1);//plays the song infinitely
  }//end loop inf button
}//end loopInf
void previous() {//previous
  if( songs[currentSong].isPlaying() ) {
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
    }
  } else {//if the song is not playing then the song is looped
    songs[currentSong].loop(0);//loop song
  }//end previous button
}//end previous
void next() {//next
  if( songs[currentSong].isPlaying() ){
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
    }
  } else { //if the song was not playing the song would be looped
    songs[currentSong].loop(0);//song looped 1 time
  }//end next button
}//end next
void Shuffle() { //shuffle button
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
    if ( autoPlayOn == true ) {//empty if -> does nothing
    } if ( songs[currentSong].isPlaying() ) {//empty if -> does nothing
    } else {//if song != playing then exicutes skipping the song -> so delay() is not used
      if ( currentSong == songs.length - 1 ) { //ERROR catch:
        songs[currentSong].pause();//ERROR catch -> so that songs do not play on top of eachother
        currentSong = songs.length - songs.length; // intention is zero -> switches song
        repapla();//.rewind(), .pause(), .play() -> plays desired song
        wentBack = true;//ERROR catch
        // if at the end of playlist this sets it to zero
      } else {
        wentBack = false;//turning ERROR catch off
      } 
      if ( wentBack == false ) {//plays the next song
        songs[currentSong].pause();//ERROR catch -> so that songs do not play on top of eachother
        currentSong++;//switches song
        repapla();//.rewind(), .pause(), .play() -> plays desired song
      }
    }
  }//end autoPlayOn button
}//end autoPlayMusic
/*
ex#1: .postion() >= .length(), then rewind(), currentSong+=1, .play()
ex#2: .isPlaying(), when false rewind(), currentSong+1, .play()
*/
void repapla() {//.rewind(), .pause(), .play()
  songs[currentSong].rewind();
  songs[currentSong].pause();
  songs[currentSong].play();
}//end repapla
//end MusicPlayer232 subProgram
