//Global varibles
//
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopWidth, stopHeight;
color resetcolorNightMode=#F0FF4B, black=#9E86FF; //the color of the buttons :)
color resetcolorDayMode=#FFFFFF;
//
void drawMusicButtons() {
  drawPauseButton();
  drawStopButton();
}//end drawMusicButtons
//
void drawPauseButton() {
  fill(black);
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  fill(resetcolorDayMode);
}//end draw
//
void drawStopButton() {
  fill(black);
  rect( stopX, stopY, stopWidth, stopHeight );//square
  fill(resetcolorDayMode);
}//end drawStopButton()
//end Music Player Buttons
