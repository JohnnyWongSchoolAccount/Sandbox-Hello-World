//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight; //pause button
float pauseScaleWidth, pauseScaleHeight; //pause button
float stopX, stopY, stopWidth, stopHeight; //stop button
float skipX1, skipY1, skipX2, skipY2, skipX3, skipY3; //skip button
float skipBarX1, skipBarY1, skipBarWidth, skipBarHeight; //skipbutton bar
float skipX12, skipY12, skipX22, skipY22, skipX32, skipY32; //skip button
float skipBarX2, skipBarY2, skipBarWidth2;//skipbutton bar 2
float loopX, loopY, loopWidth, loopHeight; //loop button
float loopX2, loopY2, loopWidth2, loopHeight2; //loop button 2
float looptX1, looptY1, looptX2, looptY2, looptX3, looptY3; //skip button
//
color resetcolorNightMode=#000000, black=#EA8A8A, purp=#B17179, background=#FFE6E6; //the color of the buttons :)
color resetcolorDayMode=#FFFFFF; //the altcolor of the buttons
//
void setup() {
  background(background);//background color
  strokeJoin(ROUND); //the outlines of the shapes
  size(700 , 400); //width and height
  //fullScreen(); //display width and height
  //population visual data
  float musicButtonDrawX = width*1.0/2.0; //moves the pause bars
  float musicButtonDrawY = height*1.0/2.0; //moves the pause bars
  //the size of the pause bars
  //pausebutton stuff
  pauseScaleWidth = 1.0/25.0; //change x-size
  pauseScaleHeight = 1.0/3.0; //change y-axis
  println(pauseScaleWidth);
  pauseHeight = musicButtonDrawY*1/2;
  pauseWidth =musicButtonDrawX*1/15;
  pauseX1 = musicButtonDrawX - pauseWidth - (pauseWidth/2);
  pauseY1 =musicButtonDrawY - (pauseHeight/2) ;
  pauseX2 = musicButtonDrawX + (pauseWidth/2) ;
  pauseY2 = pauseY1;
  //end pause button stuff
  //
  // stop button stuff ;) underneath
  stopX = musicButtonDrawX - (pauseX1);//position on the X-axis   
  stopY = pauseY1; //position on the Y-axis
  stopWidth = pauseHeight; //width of the stop button
  stopHeight = pauseHeight; //height of the stop button
  //end stop button stuff
  //
  //skip button stuff ;)
  skipX1 = musicButtonDrawX - (pauseX1/6); 
  skipY1 = musicButtonDrawY + (pauseX1/6);
  skipX2 = musicButtonDrawY - (pauseX1/10);
  skipY2 = musicButtonDrawY;
  skipX3 = skipX1;
  skipY3 = pauseY1;
  //
  skipBarWidth = width * pauseScaleWidth - 10.0/1.0;
  skipBarX1 = musicButtonDrawX - (pauseWidth*5.0/1.0);
  skipBarY1 = musicButtonDrawY - pauseWidth;
  skipBarHeight = height * pauseScaleHeight;
  //second triangle
  skipX12 = musicButtonDrawX + (width*2.32/30.0); 
  skipY12 = musicButtonDrawY;
  skipX22 = skipX12;
  skipY22 = musicButtonDrawY + (height*3.0/13.0);
  skipX32 = musicButtonDrawX + (width*1.0/5.4);
  skipY32 = pauseY1 + (height*1.0/5.7);
  //
  skipBarWidth2 = width * pauseScaleWidth - 10.0/1.0;
  skipBarX2 = musicButtonDrawX - (pauseWidth*-4.5/1.0);
  skipBarY2 = musicButtonDrawY - pauseWidth;
  //end skip button stuff
  //
  //loop button stuff
  loopX = musicButtonDrawX + (width*7.3/30.0); //position on the X-axis
  loopY = pauseY1 + 10; //position on the Y-axis
  loopWidth = pauseHeight - 20.0/1.0; //width of the loop button
  loopHeight = pauseHeight - 20.0/1.0; //height of the loop button
  //square 2
  loopX2 = musicButtonDrawX + (width*8.1/30); //position on the X-axis
  loopY2 = pauseY1 + 30; //position on the Y-axis
  loopWidth2 = pauseHeight - 60.0/1.0; //width of the loop button
  loopHeight2 = pauseHeight - 60.0/1.0; //height of the loop button
  //triangle
  looptX1 = musicButtonDrawX + (width*1.0/3.5); 
  looptY1 = musicButtonDrawY;
  looptX2 = looptX1;
  looptY2 = musicButtonDrawY + (height*1.0/6.0);
  looptX3 = musicButtonDrawX + (width*1.0/5.0);
  looptY3 = pauseY1 + (height*1.0/10.0);
  //end loop button stuff
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
