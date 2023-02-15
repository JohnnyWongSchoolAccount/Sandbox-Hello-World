//Global varibles
//
void drawMusicButtons() {
  drawPauseButton();
  drawStopButton();
  drawSkipButton();
}//end drawMusicButtons
//
void drawPauseButton() {
   //get rids of the outlines
  strokeWeight(4);
  stroke(purp);
  fill(black);
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 22 );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 22 );
  fill(resetcolorDayMode);
}//end draw
//
void drawStopButton() {
  fill(black);
  rect( stopX, stopY, stopWidth, stopHeight, 22 );//square
  fill(resetcolorDayMode);
}//end drawStopButton()
//
void drawSkipButton() {
  fill(black);
  triangle( skipX1, skipY1, skipX2, skipY2, skipX3, skipY3 );//triange skip1
  rect( pauseX12, pauseY12, pauseWidth2, pauseHeight, 22 );//bar skip1
  triangle( skipX12, skipY12, skipX22, skipY22, skipX32, skipY32 );//triange skip2
  rect( pauseX122, pauseY122, pauseWidth22, pauseHeight, 22 );//bar skip2
  fill(resetcolorDayMode);
}//end drawSkipButton
//end Music Player Buttons
