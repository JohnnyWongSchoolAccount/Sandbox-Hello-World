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
  setupMusic();//MusicPlayer232 subProgram
  population();//Popululation subProgram
  drawMusicButtons();//Popululation subProgram
  //
  size( 700 , 400 );//width and height
  //fullScreen();//display width and height
  songs[currentSong].loop(0);//Change the index manually
   textSetup();
}//end setup
void flatText() { //Reviewing Introductory Text Code
  color purpInk=#2C08FF, resetresetInk=#FFFFFF; //Not nice for Night Mode, Blue Content
  String string = "Zing";
  //
  Font = createFont ("Arial", 50);
  //
  fill(purpInk);
  textAlign (CENTER, CENTER);
  textSize( 50 );
  text( string, loopX1, loopY1, loopWidth, loopHeight);
  fill(resetresetInk);
}//end FlatText
void draw() { drawMusic(); }//end draw()
void keyPressed() { keyPressedMusic(); }//end keyPressed()
void mousePressed() { mousePressedMusic(); }//end mousePressed()
//end AppEngine Program
