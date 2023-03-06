//global variables
//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
void setup() {
  //
  songs[currentSong].loop(0); //Change the index manually
  //
  setupMusic();
  //
}//end setup
void draw() {
  //debugging in consol
  println( "current song position:", songs[currentSong].position() );
  println("\t end of song:", songs[currentSong].length());
}//end draw
void keyPressed() {
  keyPressedMusic();
}//end keyPressed
//
void mousePressed() {}//end mousePressed
