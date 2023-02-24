//Global varibles
//
void drawMusicButtons() {
  drawPauseButton();
  drawStopButton();
  drawSkipButton();
  drawLoopButton();
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
  rect( skipBarX1, skipBarY1, skipBarWidth, skipBarHeight, 22 );//bar skip1
  triangle( skipX12, skipY12, skipX22, skipY22, skipX32, skipY32 );//triange skip2
  rect( skipBarX2, skipBarY2, skipBarWidth, skipBarHeight, 22 );//bar skip2
  fill(resetcolorDayMode);
}//end drawSkipButton
void drawLoopButton() {
  fill(black);
  rect(loopX, loopY, loopWidth, loopHeight, 22);
  fill(background);
  rect(loopX2, loopY2, loopWidth2, loopHeight2, 13);
  fill(black);
  triangle(looptX1, looptY1, looptX2, looptY2, looptX3, looptY3);
  fill(resetcolorDayMode);
}
//end Music Player Buttons
