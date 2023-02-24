//Global Variables
//pause button
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
//play button
float playX1, playY1, playX2, playY2, playX3, playY3;//playbutton
//stop button
float stopX, stopY, stopWidth, stopHeight;
//skipbutton
float skipX1, skipY1, skipX2, skipY2, skipX3, skipY3; //skip button
float skipBarX1, skipBarY1, skipBarWidth, skipBarHeight; //skipbutton bar
float skipX12, skipY12, skipX22, skipY22, skipX32, skipY32; //skip button
float skipBarX2, skipBarY2;//skipbutton bar 2
//loopbutton
float loopX, loopY, loopWidth, loopHeight; //loop button
float loopX2, loopY2, loopWidth2, loopHeight2; //loop button 2
float looptX1, looptY1, looptX2, looptY2, looptX3, looptY3; //skip button
//skip forward and backward buttons
float skipfX1, skipfY1, skipfX2, skipfY2, skipfX3, skipfY3; //skipF button
float skipfX12, skipfY12, skipfX22, skipfY22, skipfX32, skipfY32; //skipF button behind
float skipbX1, skipbY1, skipbX2, skipbY2, skipbX3, skipbY3; //skipB button
float skipbX12, skipbY12, skipbX22, skipbY22, skipbX32, skipbY32; //skipB button behind
//mute button
float mutetX1, mutetY1, mutetX2, mutetY2, mutetX3, mutetY3;
float muteX, muteY, muteWidth, muteHeight;
float mutetX12, mutetY12, mutetX22, mutetY22, mutetX32, mutetY32;
float muteX2, muteY2, muteWidth2, muteHeight2;
//colors
color resetcolorNightMode=#000000, black=#A8CEE9, purp=#C5E3F2, background=#97BCC7; //the color of the buttons :)
color resetcolorDayMode=#FFFFFF; //the altcolor of the buttons
//setup
void setup() {
  background(background);//background color
  strokeJoin(ROUND); //the outlines of the shapes
  size(700 , 400); //width and height
  fullScreen(); //display width and height
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
  // stop button stuff ;) underneath
  stopX = musicButtonDrawX - (pauseX1);//position on the X-axis   
  stopY = pauseY1; //position on the Y-axis
  stopWidth = pauseHeight; //width of the stop button
  stopHeight = pauseHeight; //height of the stop button
  //end stop button stuff
  //skip button stuff ;)
  skipX1 = musicButtonDrawX - (pauseX1/3); //position on the X-axis
  skipY1 = musicButtonDrawY + (pauseX1/15); //position of the bottom corner point Y-axis
  skipX2 = musicButtonDrawX - (pauseX1*1/2.3);
  skipY2 = musicButtonDrawY;
  skipX3 = skipX1;
  skipY3 = pauseY1;
  // skip bar
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
  //skip forward button
  skipfX1 = musicButtonDrawX + (pauseX1/5); 
  skipfY1 = musicButtonDrawY + (musicButtonDrawY/11);//width
  skipfX2 = musicButtonDrawX + (pauseX1/3.5);
  skipfY2 = musicButtonDrawY;
  skipfX3 = skipfX1;
  skipfY3 = musicButtonDrawY - (musicButtonDrawY/11);//width
  //second forward triangle behind
  skipfX12 = musicButtonDrawX + (pauseX1/8.5); 
  skipfY12 = musicButtonDrawY + (musicButtonDrawY/11);//width
  skipfX22 = musicButtonDrawX + (pauseX1/5);
  skipfY22 = musicButtonDrawY;
  skipfX32 = skipfX12;
  skipfY32 = musicButtonDrawY - (musicButtonDrawY/11);//width
  //skip backward button
  skipbX1 = musicButtonDrawX - (pauseX1/5); 
  skipbY1 = musicButtonDrawY + (musicButtonDrawY/11);//width
  skipbX2 = musicButtonDrawX - (pauseX1/3.5);
  skipbY2 = musicButtonDrawY;
  skipbX3 = skipbX1;
  skipbY3 = musicButtonDrawY - (musicButtonDrawY/11);//with
  //second backward triangle behind
  skipbX12 = musicButtonDrawX - (pauseX1/8.5); 
  skipbY12 = musicButtonDrawY + (musicButtonDrawY/11);//width
  skipbX22 = musicButtonDrawX - (pauseX1/5);
  skipbY22 = musicButtonDrawY;
  skipbX32 = skipbX12;
  skipbY32 = musicButtonDrawY - (musicButtonDrawY/11);//width
  //end skipFB
  //play button
  playX1 = musicButtonDrawX - (musicButtonDrawX/20);//length
  playY1 = musicButtonDrawY + (musicButtonDrawY/8);//width
  playX2 = musicButtonDrawX + (musicButtonDrawX/20);//length
  playY2 = musicButtonDrawY;
  playX3 = playX1;
  playY3 = musicButtonDrawY - (musicButtonDrawY/8);//width
  //mute button
  mutetX1 = musicButtonDrawX - (pauseX1/1.8); //position on the X-axis
  mutetY1 = musicButtonDrawY + (pauseX1/15); //position of the bottom corner point Y-axis
  mutetX2 = musicButtonDrawX - (pauseX1*1/1.45);
  mutetY2 = musicButtonDrawY;
  mutetX3 = mutetX1;
  mutetY3 = pauseY1;
  //rectangle
  muteX = musicButtonDrawX - (pauseX1/1.45);//position on the X-axis  
  muteY = pauseY1 + (musicButtonDrawY/18); //position on the Y-axis
  muteWidth = pauseWidth; //width of the loop button
  muteHeight = pauseHeight - (pauseHeight/2); //height of the loop button
  //
  muteX2 = musicButtonDrawX - (musicButtonDrawX/2.05);//position on the X-axis  
  muteY2 = pauseY1;
  muteWidth2 = pauseWidth - (pauseWidth/.8);
  muteHeight2 = pauseHeight;
  //
  mutetX12 = musicButtonDrawX;
  mutetY12 = musicButtonDrawY;
  mutetX22 = musicButtonDrawX;
  mutetY22 = pauseHeight;
  mutetX32 = mutetX12;
  mutetY32 = musicButtonDrawY;//width
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
