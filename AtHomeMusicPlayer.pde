//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight; //pause button
float pauseScaleWidth, pauseScaleHeight; //pause button
float stopX, stopY, stopWidth, stopHeight; //stop button
float skipX1, skipY1, skipX2, skipY2, skipX3, skipY3; //skip button
float skipBarX1, skipBarY1, skipBarWidth, skipBarHeight; //skipbutton bar
float skipX12, skipY12, skipX22, skipY22, skipX32, skipY32; //skip button
float skipBarX2, skipBarY2;//skipbutton bar 2
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
  pauseHeight = musicButtonDrawY*1/4;
  pauseWidth = musicButtonDrawX*1/25;
  pauseX1 = musicButtonDrawX - pauseWidth - (pauseWidth/2);
  pauseY1 = musicButtonDrawY - (pauseHeight/2) ;
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
  skipX1 = musicButtonDrawX - (pauseX1/3); //position on the X-axis
  skipY1 = musicButtonDrawY + (pauseX1/15); //position of the bottom corner point Y-axis
  skipX2 = musicButtonDrawX - (pauseX1*1/2.3);
  skipY2 = musicButtonDrawY;
  skipX3 = skipX1;
  skipY3 = pauseY1;
  //
  skipBarHeight = musicButtonDrawY*1/4;
  skipBarWidth = musicButtonDrawX*1/35;
  skipBarX1 = musicButtonDrawX - (pauseX1/2.1);
  skipBarY1 = musicButtonDrawY - (pauseHeight/2) ;
  //second triangle
  skipX12 = musicButtonDrawX + (pauseX1/3); 
  skipY12 = musicButtonDrawY + (musicButtonDrawY/8);
  skipX22 = musicButtonDrawX + (pauseX1*1/2.3);
  skipY22 = musicButtonDrawY;
  skipX32 = skipX12;
  skipY32 = pauseY1;
  //
  skipBarX2 = musicButtonDrawX + (pauseX1/2.25); //x-axis
  skipBarY2 = musicButtonDrawY - (pauseHeight/2); //y-axis
  //end skip button stuff
  //
  //loop button stuff
  loopX = musicButtonDrawX + (pauseX1/1.2);//position on the X-axis  
  loopY = pauseY1; //position on the Y-axis
  loopWidth = pauseHeight; //width of the loop button
  loopHeight = pauseHeight; //height of the loop button
  //square 2
  loopX2 = musicButtonDrawX + (pauseX1/1.05); //position on the X-axis
  loopY2 = musicButtonDrawY*1.075; //position on the Y-axis
  loopWidth2 = pauseHeight - (musicButtonDrawY/2.5); //width of the loop button
  loopHeight2 = pauseHeight - (musicButtonDrawY/2.5); //height of the loop button
  //triangle
  looptX1 = musicButtonDrawX + (musicButtonDrawX*1/1.26); 
  looptY1 = musicButtonDrawY - (musicButtonDrawY/9);
  looptX2 = musicButtonDrawX + (pauseX1*1/1.25);
  looptY2 = musicButtonDrawY;
  looptX3 = musicButtonDrawX + (musicButtonDrawX/1.2);
  looptY3 = musicButtonDrawY;
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
