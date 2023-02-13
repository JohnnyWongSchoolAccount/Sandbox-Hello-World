//Global Variables
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
