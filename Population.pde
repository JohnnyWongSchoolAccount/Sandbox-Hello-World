//Global Variables
//custom variables
float BOXW, SW, SH;
//
int appWidth, appHeight;
//pause button
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight; // rect
float pauseScaleWidth, pauseScaleHeight;
//play button
float playX1, playY1, playX2, playY2, playX3, playY3;// triangle
//stop button
float stopX, stopY, stopWidth, stopHeight; // rect
//skipbutton
float skipX1, skipY1, skipX2, skipY2, skipX3, skipY3; //skip button triangle
float skipBarX1, skipBarY1, skipBarWidth, skipBarHeight; //skipbutton bar rect
float skipX12, skipY12, skipX22, skipY22, skipX32, skipY32; //skip button triangle
float skipBarX2, skipBarY2;//skipbutton bar 2 rect
//loopbutton
float loopX1, loopY1, loopWidth, loopHeight; //loop button rect
float loopX2, loopY2, loopWidth2, loopHeight2; //loop button 2 rect
float looptX1, looptY1, looptX2, looptY2, looptX3, looptY3; //loop button triangle
//skip forward and backward buttons
float skipfX1, skipfY1, skipfX2, skipfY2, skipfX3, skipfY3; //skipF button triangle
float skipfX12, skipfY12, skipfX22, skipfY22, skipfX32, skipfY32; //skipF button behind triangle
float skipbX1, skipbY1, skipbX2, skipbY2, skipbX3, skipbY3; //skipB button triangle
float skipbX12, skipbY12, skipbX22, skipbY22, skipbX32, skipbY32; //skipB button behind triangle
//mute button
float mutetX1, mutetY1, mutetX2, mutetY2, mutetX3, mutetY3; // triangle
float muteX, muteY, muteWidth, muteHeight; // rect
float mutetX12, mutetY12, mutetX22, mutetY22, mutetX32, mutetY32; // triangle
float muteX2, muteY2, muteWidth2, muteHeight2; // rect
//colors
color resetcolorNightMode=#000000, resetcolorDayMode=#FFFFFF; // Light/Dark mode colors
color black= #CCC1FF; //The Button color
color purp= #FFFBE3; //The outline color FFFBE3
color background=#9EA9F0; //The background color
//
void population() {
  appWidth = width; //display width = x in the size line of code
  appHeight = height; //display height = y in the size line of code
  //
  //population visual data
  float startingX = appWidth*1.0/2.0; //moves the pause bars
  float startingY = appHeight*1.0/2.0; //moves the pause bars
  //the size of the pause bars
  //pausebutton stuff
  pauseScaleWidth = ( 1.0 / 25.0 ); //change x-size
  pauseScaleHeight = ( 1.0 / 3.0 ); //change y-axis
  pauseHeight = startingY*1/4;
  pauseWidth = startingX*1/25;
  pauseX1 = startingX - pauseWidth - ( pauseWidth / 2.0 );
  pauseY1 = startingY - (pauseHeight / 2.0) ;
  pauseX2 = startingX + (pauseWidth / 2.0) ;
  pauseY2 = pauseY1;
  //end pause button stuff
  // stop button stuff ;) underneath
  stopX = startingX - ( pauseX1 );//position on the X-axis   
  stopY = pauseY1; //position on the Y-axis
  stopWidth = pauseHeight; //width of the stop button
  stopHeight = pauseHeight; //height of the stop button
  //end stop button stuff
  //skip button stuff ;)
  skipX1 = startingX - ( pauseX1 / 3.0 ); //position on the X-axis
  skipY1 = startingY + ( pauseX1 / 15.0 ); //position of the bottom corner point Y-axis
  skipX2 = startingX - ( pauseX1 * 1 / 2.3 );
  skipY2 = startingY;
  skipX3 = skipX1;
  skipY3 = pauseY1;
  // skip bar
  skipBarHeight = startingY*1/4.0;
  skipBarWidth = startingX*1/35.0;
  skipBarX1 = startingX - (pauseX1/2.1);
  skipBarY1 = startingY - (pauseHeight/2.0) ;
  //second triangle
  skipX12 = startingX + (pauseX1/3.0); 
  skipY12 = startingY + (startingY/8.0);
  skipX22 = startingX + (pauseX1*1/2.3);
  skipY22 = startingY;
  skipX32 = skipX12;
  skipY32 = pauseY1;
  //rectangle
  skipBarX2 = startingX + (pauseX1/2.25); //x-axis
  skipBarY2 = startingY - (pauseHeight/2.0); //y-axis
  //end skip button stuff
  //loop button stuff
  loopX1 = startingX + (pauseX1/1.2);//position on the X-axis  
  loopY1 = pauseY1; //position on the Y-axis
  loopWidth = pauseHeight; //width of the loop button
  loopHeight = pauseHeight; //height of the loop button
  //square 2
  loopX2 = startingX + (pauseX1/1.05); //position on the X-axis
  loopY2 = startingY*1.075; //position on the Y-axis
  loopWidth2 = pauseHeight - (startingY/2.5); //width of the loop button
  loopHeight2 = pauseHeight - (startingY/2.5); //height of the loop button
  //triangle
  looptX1 = startingX + (startingX*1/1.26); 
  looptY1 = startingY - (startingY/9);
  looptX2 = startingX + (pauseX1*1/1.25);
  looptY2 = startingY;
  looptX3 = startingX + (startingX/1.2);
  looptY3 = startingY;
  //end loop button stuff
  //skip forward button
  skipfX1 = startingX + (pauseX1/5.0); 
  skipfY1 = startingY + (startingY/11.0);//width
  skipfX2 = startingX + (pauseX1/3.5);
  skipfY2 = startingY;
  skipfX3 = skipfX1;
  skipfY3 = startingY - (startingY/11.0);//width
  //second forward triangle behind
  skipfX12 = startingX + (pauseX1/8.5); 
  skipfY12 = startingY + (startingY/11.0);//width
  skipfX22 = startingX + (pauseX1/5.0);
  skipfY22 = startingY;
  skipfX32 = skipfX12;
  skipfY32 = startingY - (startingY/11.0);//width
  //skip backward button
  skipbX1 = startingX - (pauseX1/5.0); 
  skipbY1 = startingY + (startingY/11.0);//width
  skipbX2 = startingX - (pauseX1/3.5);
  skipbY2 = startingY;
  skipbX3 = skipbX1;
  skipbY3 = startingY - (startingY/11.0);//width
  //second backward triangle behind
  skipbX12 = startingX - (pauseX1/8.5); 
  skipbY12 = startingY + (startingY/11.0);//width
  skipbX22 = startingX - (pauseX1/5.0);
  skipbY22 = startingY;
  skipbX32 = skipbX12;
  skipbY32 = startingY - (startingY/11.0);//width
  //end skipFB
  //play button
  playX1 = startingX - (startingX/20.0);//length
  playY1 = startingY + (startingY/8.0);//width
  playX2 = startingX + (startingX/20.0);//length
  playY2 = startingY;
  playX3 = playX1;
  playY3 = startingY - (startingY/8.0);//width
  //mute button
  mutetX1 = startingX - (pauseX1/1.8); //position on the X-axis
  mutetY1 = startingY + (pauseX1/15.0); //position of the bottom corner point Y-axis
  mutetX2 = startingX - (pauseX1*1/1.45);
  mutetY2 = startingY;
  mutetX3 = mutetX1;
  mutetY3 = pauseY1;
  //rectangle
  muteX = startingX - (pauseX1/1.45);//position on the X-axis  
  muteY = pauseY1 + (startingY/18.0); //position on the Y-axis
  muteWidth = pauseWidth; //width of the loop button
  muteHeight = pauseHeight - (pauseHeight/2.0); //height of the loop button
  //rectangle
  muteX2 = startingX - (startingX/2.05);//position on the X-axis  
  muteY2 = pauseY1;
  muteWidth2 = pauseWidth - (pauseWidth/.8);
  muteHeight2 = pauseHeight;
  //triangle
  mutetX12 = startingX;
  mutetY12 = startingY;
  mutetX22 = startingX;
  mutetY22 = pauseHeight;
  mutetX32 = mutetX12;
  mutetY32 = startingY;//width
  //button hitbox custom variables
  BOXW = pauseWidth * 9/3;
  SH = pauseHeight * 2/3;
  
}//end population
void drawMusicButtons() {
  //drawPlayButton(); // playbutton - triangle
  drawPauseButton(); // pausebutton - 2 rect
  drawStopButton(); // stopbutton - rect
  drawSkipButton(); // skipbutton - triangle, rect
  drawLoopButton(); // loop button - triangle, 2 rect
  drawSkipFBButton(); // skipbutton - 2 triangle
  drawMuteButton(); // mute button - 2 rect, triangle
}//end drawMusicButtons
//
void drawPauseButton() {
  strokeWeight(4); //controls the borders width
  stroke(purp); // outline color
  fill(black); // button color
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 22 ); //right rectangle
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 22 ); //left rectangle
  fill(resetcolorDayMode);
}//end draw
void drawPlayButton() {
  strokeWeight(4); //controls the borders width
  stroke(purp); // outline color
  fill(black); // button color
  triangle(playX1, playY1, playX2, playY2, playX3, playY3 ); //triangle
  fill(resetcolorDayMode);
}//end drawPlayButton
//
void drawStopButton() {
  fill(black);
  rect( stopX, stopY, stopWidth, stopHeight, 22 ); //square
  fill(resetcolorDayMode);
}//end drawStopButton()
//
void drawSkipButton() {
  fill(black);
  triangle( skipX1, skipY1, skipX2, skipY2, skipX3, skipY3 );//triange skip1
  rect( skipBarX1, skipBarY1, skipBarWidth, skipBarHeight, 22 );//bar skip1
  triangle( skipX12, skipY12, skipX22, skipY22, skipX32, skipY32 );//triange skip2
  rect( skipBarX2, skipBarY2, skipBarWidth, skipBarHeight, 22 );//bar skip2
  fill(resetcolorDayMode);
}//end drawSkipButton
void drawLoopButton() {
  fill(black); // outside rect
  rect(loopX1, loopY1, loopWidth, loopHeight, 22); // outside rect
  fill(background); // inside rect
  rect(loopX2, loopY2, loopWidth2, loopHeight2, 13); // inside rect
  fill(black); // triangle
  triangle(looptX1, looptY1, looptX2, looptY2, looptX3, looptY3); // triangle
  fill(resetcolorDayMode);
}//end drawloopButton
void drawSkipFBButton() {
  fill(black);
  triangle(skipfX12, skipfY12, skipfX22, skipfY22, skipfX32, skipfY32); // left side
  triangle(skipfX1, skipfY1, skipfX2, skipfY2, skipfX3, skipfY3); // left side
  triangle(skipbX12, skipbY12, skipbX22, skipbY22, skipbX32, skipbY32); // right side
  triangle(skipbX1, skipbY1, skipbX2, skipbY2, skipbX3, skipbY3); // right side
  fill(resetcolorDayMode);
}//end drawSkipFBButton
void drawMuteButton() {
  fill(black);
  triangle(mutetX1, mutetY1, mutetX2, mutetY2, mutetX3, mutetY3); // triangle
  rect(muteX, muteY, muteWidth, muteHeight); // rectangle
  //fill(#CF455C);
  //stroke(#CF455C);
  rect(muteX2, muteY2, muteWidth2, muteHeight2); // blocking rectangle left side
  //triangle(mutetX12, mutetY12, mutetX22, mutetY22, mutetX32, mutetY32);
  fill(resetcolorDayMode);
}//end DrawMuteFBButtons
//end Music Player Buttons
//end population SubProgram
