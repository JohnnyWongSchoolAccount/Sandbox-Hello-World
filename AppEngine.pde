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
  setupMusic();
  //
  songs[currentSong].loop(0); //Change the index manually
  //
}//end setup
void draw() {
  drawMusic();
}//end draw
void keyPressed() {
  keyPressedMusic();
}//end keyPressed
//
void mousePressed() {
  mousePressedMusic();
}//end mousePressed
//end AppEngine
