//Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
//
void setup() {
  size( 700 , 400 );//width and height
  //fullScreen();//display width and height
  setupMusic();//MusicPlayer232 subProgram
  setupText();//Text subProgram
  setupImage();//Images subProgram
  setupPort();//Port subProgram
}//end setup()
void draw() { 
  drawMusic();//MusicPlayer232 subProgram
  drawPort();//Text subProgram
  drawImage();//Images subProgram
}//end draw()
void keyPressed() { 
  keyPressedMusic();//MusicPlayer232 subProgram
  keyPressedPort();//Port subProgram
}//end keyPressed()
void mousePressed() { 
  mousePressedMusic();//MusicPlayer232 subProgram
  mousePressedPort();//Port subProgram
}//end mousePressed()
//end main Program
