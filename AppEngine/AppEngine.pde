import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
//
void setup() {
  size( 700 , 400 );//width and height
  //fullScreen();//display width and height
  setupMusic();//MusicPlayer232 subProgram
  textSetup();//Text subProgram
  //setupImage();
  setupPort();//Port subProgram
  picture = loadImage(pathway+fileNameOWO);//Kamodo Dragon image
  int smallDimension, largeDimension; //Local Variable
  float imageHeigthRatio, imageWidthRatio; //Local Variable
  if ( pictureWidth >= pictureHeight ) { //TRUE for Landscape or Square
  largeDimension = pictureWidth;
  smallDimension = pictureHeight;
  imageHeigthRatio = float (smallDimension) / float (largeDimension); //fixed by CASTING ratio is < 1 - float()
  pictureWidthAdj = imageBackgroundWidth; //fits into rect
  pictureHeightAdj = pictureWidthAdj * imageHeigthRatio;
  empty = imageBackgroundHeight - pictureHeightAdj;
  pictureXAdj = imageBackgroundX;
  pictureYAdj = imageBackgroundY; 
  if ( imageCenter==true ) pictureYAdj = imageBackgroundY + empty*1/2;
  if ( imageBottomRight==true) pictureYAdj = imageBackgroundY + empty;
  if ( pictureHeightAdj > imageBackgroundHeight ) { //ERROR Catch - adusted height > height
    pictureHeightAdj = imageBackgroundHeight;
    pictureWidthAdj *= imageHeigthRatio;
    //
    empty = imageBackgroundWidth - pictureWidthAdj;
    //
    pictureXAdj = imageBackgroundX;
    pictureYAdj = imageBackgroundY;
    if ( imageCenter==true ) pictureXAdj = imageBackgroundX + empty*1/2;
    if ( imageBottomRight==true) pictureXAdj = imageBackgroundX + empty;
  }
} else { //image portrait
  largeDimension = pictureHeight;
  smallDimension = pictureWidth;
  imageWidthRatio = float(smallDimension) / float(largeDimension); //fixed by CASTING ratio is < 1 - float()
  pictureHeightAdj = imageBackgroundHeight; // fits into rect
  pictureWidthAdj = pictureHeightAdj * imageWidthRatio;
  empty = imageBackgroundWidth - pictureWidthAdj;
  pictureXAdj = imageBackgroundX;
  pictureYAdj = imageBackgroundY;
  if (imageCenter == true) pictureXAdj = imageBackgroundX + empty * 1/2;
  if (imageBottomRight == true) pictureXAdj = imageBackgroundX + empty;
  if (pictureWidthAdj > imageBackgroundWidth) { // ERROR Catch - adjusted width > width
    pictureWidthAdj = imageBackgroundWidth;
    pictureHeightAdj *= imageWidthRatio;
    empty = imageBackgroundHeight - pictureHeightAdj;
    pictureXAdj = imageBackgroundX;
    pictureYAdj = imageBackgroundY;
    if (imageCenter == true) pictureYAdj = imageBackgroundY + empty * 1/2;
    if (imageBottomRight == true) pictureYAdj = imageBackgroundY + empty;
  }
}
rect( imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
if ( nightMode==false ) tint(255, 128); //Gray Scale, day use: used 1/2 tint for white (128/255=1/2)
if ( nightMode==true ) tint(64, 64, 40); //RGB: Night Mode
//background image no empty
//image( picture, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
//aspect ratio
println( pictureWidthAdj, pictureHeightAdj ); //View Human Error on variables, zero values
image( picture, pictureXAdj, pictureYAdj, pictureWidthAdj, pictureHeightAdj );
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
