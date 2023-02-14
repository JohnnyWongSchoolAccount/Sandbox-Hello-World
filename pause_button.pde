//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight; //pause button
float pauseScaleWidth, pauseScaleHeight; //pause button
float stopX, stopY, stopWidth, stopHeight; //stop button
float skipX1, skipY1, skipX2, skipY2, skipX3, skipY3; //skip button
float pauseX12, pauseY12, pauseWidth2, pauseHeight2; //skipbutton rect
color resetcolorNightMode=#F0FF4B, black=#1DB954; //the color of the buttons :)
color resetcolorDayMode=#FFFFFF; //the altcolor of the buttons
//
void setup() {
  size(700 , 400); //width and height
  //fullScreen(); //display width and height
  //population visual data
  float musicButtonDrawX = width*1/2; //moves the pause bars
  float musicButtonDrawY = height*1/3; //moves the pause bars
  //the size of the pause bars
  //pausebutton stuff
  pauseScaleWidth = 1.0/25.0; //change x-size
  pauseScaleHeight = 1.0/3.0; //change y-axis
  println(pauseScaleWidth);
  pauseWidth = width * pauseScaleWidth;
  pauseX1 = musicButtonDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = musicButtonDrawY - pauseWidth;
  pauseX2 = musicButtonDrawX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  pauseHeight = height * pauseScaleHeight;
  //end pause button stuff
  // stop button stuff ;) underneath
  stopX = musicButtonDrawX - (width*12/30); //position on the X-axis
  stopY = pauseY1; //position on the Y-axis
  stopWidth = pauseHeight; //width of the stop button
  stopHeight = pauseHeight; //height of the stop button
  //end stop button stuff
  //skip button stuff ;)
  skipX1 = musicButtonDrawX - (width*2.3/30); 
  skipY1 = musicButtonDrawY - (height*1/50);
  skipX2 = skipX1;
  skipY2 = musicButtonDrawY - (height*-3.2/13);
  skipX3 = musicButtonDrawX - (width*1/5);
  skipY3 = pauseY1 - (height*-1/5.7);
  //
  pauseWidth2 = width * pauseScaleWidth - 10;
  pauseX12 = musicButtonDrawX - (pauseWidth*5);
  pauseY12 = musicButtonDrawY - pauseWidth;
  pauseHeight2 = height * pauseScaleHeight;
  //end skip button stuff
}//end setup
//
void draw() {
  drawMusicButtons();
}//end draw
//
void keyPressed() {
}//end keyPressed
//
void mousePressed() {
}//end mousePressed
//
