//Global Variables
float BOXW;//creating hit boxes for mousePressed
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
//loop Infinite button
float loopiX1, loopiY1, loopiWidth, loopiHeight; //loop button rect
float loopiX2, loopiY2, loopiWidth2, loopiHeight2; //loop button 2 rect
float looptiX1, looptiY1, looptiX2, looptiY2, looptiX3, looptiY3; //loop button triangle
//auto skip button
float autoX1, autoY1, autoWidth, autoHeight; //auto skip button rect
float autoX2, autoY2, autoWidth2, autoHeight2; //auto skip button 2 rect
float autotX1, autotY1, autotX2, autotY2, autotX3, autotY3; //auto skip button triangle
float autotX12, autotY12, autotX22, autotY22, autotX32, autotY32; //auto skip button triangle
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
//suffle button
float shuffleX1, shuffleY1, shuffleX2, shuffleY2, shuffleX3, shuffleY3; //shuffle button triangle top
float shuffleX12, shuffleY12, shuffleX22, shuffleY22, shuffleX32, shuffleY32;//shuffle button triangle bottom
//colors
color resetcolorNightMode=#000000, resetcolorDayMode=#FFFFFF; // Light/Dark mode colors
color black= #CCC1FF; //The Button color
color purp= #FFFBE3; //The outline color FFFBE3
color background=#9EA9F0; //The background color
color hoverOver = #FF0000; //hover over color
color toggleOn = #00FF4A; //toggle on color
//
void population() {
  appWidth = width; //display width = x in the size line of code
  appHeight = height; //display height = y in the size line of code
  //
  //population visual data
  float startingX = appWidth*1.0/2.0; //moves the pause bars
  float startingY = appHeight*1.0/2.0; //moves the pause bars
  //pause-play button
  //the size of the pause bars
  pauseScaleWidth = ( 1.0 / 25.0 ); //change x-size
  pauseScaleHeight = ( 1.0 / 3.0 ); //change y-axis
  pauseHeight = startingY*1/4;
  pauseWidth = startingX*1/25;
  //pause button ;) - rectangle
  pauseX1 = startingX - pauseWidth - ( pauseWidth / 2.0 );
  pauseY1 = startingY - (pauseHeight / 2.0) ;
  pauseX2 = startingX + (pauseWidth / 2.0) ;
  pauseY2 = pauseY1;
  //play button
  playX1 = startingX - (startingX/20.0);//length
  playY1 = startingY + (startingY/8.0);//width
  playX2 = startingX + (startingX/20.0);//length
  playY2 = startingY;
  playX3 = playX1;
  playY3 = startingY - (startingY/8.0);//width
  //end pause-play button
  //reverse button - triangle
  skipbX1 = startingX - (pauseX1/5.0); 
  skipbY1 = startingY + (startingY/11.0);//width
  skipbX2 = startingX - (pauseX1/3.5);
  skipbY2 = startingY;
  skipbX3 = skipbX1;
  skipbY3 = startingY - (startingY/11.0);//width
  //triangle
  skipbX12 = startingX - (pauseX1/8.5); 
  skipbY12 = startingY + (startingY/11.0);//width
  skipbX22 = startingX - (pauseX1/5.0);
  skipbY22 = startingY;
  skipbX32 = skipbX12;
  skipbY32 = startingY - (startingY/11.0);//width
  //end forward/reverse button
  //forward button - triangle
  skipfX1 = startingX + (pauseX1/5.0); 
  skipfY1 = startingY + (startingY/11.0);//width
  skipfX2 = startingX + (pauseX1/3.5);
  skipfY2 = startingY;
  skipfX3 = skipfX1;
  skipfY3 = startingY - (startingY/11.0);//width
  //triangle
  skipfX12 = startingX + (pauseX1/8.5); 
  skipfY12 = startingY + (startingY/11.0);//width
  skipfX22 = startingX + (pauseX1/5.0);
  skipfY22 = startingY;
  skipfX32 = skipfX12;
  skipfY32 = startingY - (startingY/11.0);//width
  //previous button ;) - triangle
  skipX1 = startingX - ( pauseX1 / 3.0 ); //position on the X-axis
  skipY1 = startingY + ( pauseX1 / 15.0 ); //position of the bottom corner point Y-axis
  skipX2 = startingX - ( pauseX1 * 1 / 2.3 );
  skipY2 = startingY;
  skipX3 = skipX1;
  skipY3 = pauseY1;
  // previous bar - rectangle
  skipBarHeight = startingY*1/4.0;
  skipBarWidth = startingX*1/35.0;
  skipBarX1 = startingX - (pauseX1/2.1);
  skipBarY1 = startingY - (pauseHeight/2.0) ;
  //next button - triangle
  skipX12 = startingX + (pauseX1/3.0); 
  skipY12 = startingY + (startingY/8.0);
  skipX22 = startingX + (pauseX1*1/2.3);
  skipY22 = startingY;
  skipX32 = skipX12;
  skipY32 = pauseY1;
  //rectangle
  skipBarX2 = startingX + (pauseX1/2.25); //x-axis
  skipBarY2 = startingY - (pauseHeight/2.0); //y-axis
  //end previouse/next button
  //mute button - triangle
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
  //end mute button
  //stop button stuff ;) underneath
  stopX = startingX - ( pauseX1 );//position on the X-axis   
  stopY = pauseY1; //position on the Y-axis
  stopWidth = pauseHeight; //width of the stop button
  stopHeight = pauseHeight; //height of the stop button
  //end stop button stuff
  //loop button - rectangle
  loopX1 = startingX + (pauseX1/1.2);//position on the X-axis  
  loopY1 = pauseY1; //position on the Y-axis
  loopWidth = pauseHeight; //width of the loop button
  loopHeight = pauseHeight; //height of the loop button
  //rectangle (inner)
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
  //end loop button
  //loop-Infinite button
  loopiX1 = startingX + (startingX/1.7);//position on the X-axis  
  loopiY1 = pauseY1; //position on the Y-axis
  loopiWidth = pauseHeight; //width of the loop button
  loopiHeight = pauseHeight; //height of the loop button
  //rectangle (inner)
  loopiX2 = startingX + (startingX/1.425); //position on the X-axis
  loopiY2 = startingY*1.075; //position on the Y-axis
  loopiWidth2 = pauseHeight - (startingY/2.5); //width of the loop button
  loopiHeight2 = pauseHeight - (startingY/2.5); //height of the loop button
  //triangle
  looptiX1 = startingX + (startingX*1/1.66); 
  looptiY1 = startingY + (startingY/9);
  looptiX2 = startingX + (startingX*1/1.55);
  looptiY2 = startingY;
  looptiX3 = startingX + (startingX/1.8);
  looptiY3 = startingY;
  //end loop infinite button
  //shuffle button - triangle bottom
  shuffleX1 = startingX;
  shuffleY1 = startingY + (startingY/1.9);
  shuffleX2 = startingX + (startingY/8);
  shuffleY2 = startingY + (startingY/2.5);
  shuffleX3 = startingX - (startingY/8);
  shuffleY3 = startingY + (startingY/2.5);
  //triangle top
  shuffleX12 = startingX;
  shuffleY12 = startingY + (startingY/4);
  shuffleX22 = startingX + (startingY/8);
  shuffleY22 = startingY + (startingY/2.5);
  shuffleX32 = startingX - (startingY/8);
  shuffleY32 = startingY + (startingY/2.5);
  //end shuffle button
  //auto-skip button
  autoX1 = startingX + (pauseX1/1.2);//position on the X-axis  
  autoY1 = startingY + (startingY/4); //position on the Y-axis
  autoWidth = pauseHeight; //width of the loop button
  autoHeight = pauseHeight; //height of the loop button
  //rectangle (inner)
  autoX2 = startingX + (pauseX1/1.05); //position on the X-axis
  autoY2 = startingY + (startingY/2.2); //position on the Y-axis
  autoWidth2 = pauseHeight - (startingY/2.5); //width of the loop button
  autoHeight2 = pauseHeight - (startingY/2.5); //height of the loop button
  //triangle
  autotX1 = startingX + (startingX/1.2); 
  autotY1 = startingY + (startingY/2.8);
  autotX2 = startingX + (pauseX1*1/1.25);
  autotY2 = startingY + (startingY/2.8);
  autotX3 = startingX + (startingX/1.26);
  autotY3 = startingY + (startingY/4);
  //triangle
  autotX12 = startingX + (startingX/1.05); 
  autotY12 = startingY + (startingY/2.5);
  autotX22 = startingX + (startingX/1.15);
  autotY22 = startingY + (startingY/2.5);
  autotX32 = startingX + (startingX/1.1);
  autotY32 = startingY + (startingY/2);
  //end auto-skip
  //button hitbox variable
  BOXW = pauseWidth * 9/3;
}//end population
void drawMusicButtons() {
  //drawPlayButton(); // playbutton - triangle
  drawPauseButton(); // pausebutton - 2 rect
  drawSkipFBButton(); // skipbutton - 2 triangle
  drawSkipButton(); // skipbutton - triangle, rect
  drawMuteButton(); // mute button - 2 rect, triangle
  drawStopButton(); // stopbutton - rect
  drawLoopButton(); // loop button - triangle, 2 rect
  drawLoopButtonInf(); // loop infinite button - triangle, 2 rect
  drawShuffleButton(); //shuffle button - 2 triangle
  drawAustoSkipButton(); //auto skip button - 2 trangle, 2 rect
}//end drawMusicButtons
//
void drawPauseButton() {
  strokeWeight(4); //controls the borders width
  stroke(purp); // outline color
  fill(black); // button color
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 22 ); //right rectangle
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 22 ); //left rectangle
  fill(resetcolorDayMode);
}//end drawPauseButton()
void drawPlayButton() {
  strokeWeight(4); //controls the borders width
  stroke(background); // outline color
  fill(background); // button color
  rect(pauseX1, pauseY1, BOXW, pauseHeight);
  stroke(purp); // outline color
  fill(black); // button color
  triangle(playX1, playY1, playX2, playY2, playX3, playY3 ); //triangle
  fill(resetcolorDayMode);
}//end drawPlayButton()
void drawSkipFBButton() {
  fill(black);
  triangle(skipfX12, skipfY12, skipfX22, skipfY22, skipfX32, skipfY32); // left side
  triangle(skipfX1, skipfY1, skipfX2, skipfY2, skipfX3, skipfY3); // left side
  triangle(skipbX12, skipbY12, skipbX22, skipbY22, skipbX32, skipbY32); // right side
  triangle(skipbX1, skipbY1, skipbX2, skipbY2, skipbX3, skipbY3); // right side
  fill(resetcolorDayMode);
}//end drawSkipFBButton
void drawSkipButton() {
  fill(black);
  triangle( skipX1, skipY1, skipX2, skipY2, skipX3, skipY3 );//triange skip1
  rect( skipBarX1, skipBarY1, skipBarWidth, skipBarHeight, 22 );//bar skip1
  triangle( skipX12, skipY12, skipX22, skipY22, skipX32, skipY32 );//triange skip2
  rect( skipBarX2, skipBarY2, skipBarWidth, skipBarHeight, 22 );//bar skip2
  fill(resetcolorDayMode);
}//end drawSkipButton
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
void drawStopButton() {
  fill(black);
  rect( stopX, stopY, stopWidth, stopHeight, 22 ); //square
  fill(resetcolorDayMode);
}//end drawStopButton()
void drawLoopButton() {
  fill(black); // outside rect
  rect(loopX1, loopY1, loopWidth, loopHeight, 22); // outside rect
  fill(background); // inside rect
  rect(loopX2, loopY2, loopWidth2, loopHeight2, 13); // inside rect
  fill(black); // triangle
  triangle(looptX1, looptY1, looptX2, looptY2, looptX3, looptY3); // triangle
  fill(resetcolorDayMode);
}//end drawloopButton
void drawLoopButtonInf() {
  fill(black); // outside rect
  rect(loopiX1, loopiY1, loopiWidth, loopiHeight, 22); // outside rect
  fill(background); // inside rect
  rect(loopiX2, loopiY2, loopiWidth2, loopiHeight2, 13); // inside rect
  fill(black); // triangle
  triangle(looptiX1, looptiY1, looptiX2, looptiY2, looptiX3, looptiY3); // triangle
  fill(resetcolorDayMode);
}//end drawloopButton
void drawShuffleButton() {
  fill(black);
  triangle(shuffleX1, shuffleY1, shuffleX2, shuffleY2, shuffleX3, shuffleY3); // bottom
  triangle(shuffleX12, shuffleY12, shuffleX22, shuffleY22, shuffleX32, shuffleY32); // top
  fill(resetcolorDayMode);
}//end drawSkipFBButton
void drawAustoSkipButton() {
  fill(black); // outside rect
  rect(autoX1, autoY1, autoWidth, autoHeight, 22); // outside rect
  fill(background); // inside rect
  rect(autoX2, autoY2, autoWidth2, autoHeight2, 13); // inside rect
  fill(black); // triangle
  triangle(autotX1, autotY1, autotX2, autotY2, autotX3, autotY3); // triangle
  triangle(autotX12, autotY12, autotX22, autotY22, autotX32, autotY32); // triangle
  fill(resetcolorDayMode);
}//end drawloopButton
//end Music Player Buttons
//end population SubProgram
