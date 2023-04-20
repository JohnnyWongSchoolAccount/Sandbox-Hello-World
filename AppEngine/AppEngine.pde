//Global Variables
//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
void setup() {
  setupPort();//Port subProgram
  setupMusic();//MusicPlayer232 subProgram
  textSetup();//Text subProgram
  size( 700 , 400 );//width and height
  //fullScreen();//display width and height
  //songs[currentSong].loop(0);//Change the index manually
}//end setup
void draw() { 
  drawMusic();
  drawPort();
}//end draw()
void keyPressed() { 
  keyPressedMusic();//MusicPlayer232 subProgram
  keyPressedPort();//Port subProgram
}//end keyPressed()
void mousePressed() { 
  mousePressedMusic();
  mousePressedPort();
}//end mousePressed()
//end AppEngine Program
