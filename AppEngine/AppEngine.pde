//Libraries and Dependancies
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
//
void setup() {
  size( 700, 400 );//width and height
  //fullScreen();//display width and height
  buildingURL();//BuildingURL subProgram
  APIcall();//BuildingURL subProgram
  setupMusic();//MusicPlayer232 subProgram
  setupTicTacToe();//tictactoe subProgram
  setupText();//Text subProgram
  setupWeather();//weather subProgram
  setupPort();//Port subProgram
}//end setup()
void draw() { 
  drawWeather();//weather subProgram
  drawMusic();//MusicPlayer232 subProgram
  drawTicTacToe();//TicTacToe subProgram
  drawPort();//Port subProgram
  drawImage();//Images subProgram
}//end draw()
void keyPressed() { 
  keyPressedMusic();//MusicPlayer232 subProgram
  mousePressedWeather();//weather subProgram
  keyPressedPort();//Port subProgram
}//end keyPressed()
void mousePressed() { 
  mousePressedMusic();//MusicPlayer232 subProgram
  mousePressedWeather();//weather subProgram
  mousePressedTicTacToe();//TicTacToe subProgram
  mousePressedPort();//Port subProgram
}//end mousePressed()
//end main Program
