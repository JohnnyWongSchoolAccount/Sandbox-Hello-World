//Global varibles
//
void drawMusicButtons() {
  drawPlayButton();
  drawPauseButton();
  drawStopButton();
  drawSkipButton();
  drawLoopButton();
  drawSkipFBButton();
  drawMuteButton();
}//end drawMusicButtons
//
void drawPauseButton() {
  strokeWeight(4); //controls the borders 
  stroke(purp);
  fill(black);
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 22 );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 22 );
  fill(resetcolorDayMode);
}//end draw
void drawPlayButton() {
  strokeWeight(4); //controls the borders 
  stroke(purp);
  fill(black);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3 );
  fill(resetcolorDayMode);
}//end drawPlayButton
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
}//end drawloopButton
void drawSkipFBButton() {
  fill(black);
  triangle(skipfX12, skipfY12, skipfX22, skipfY22, skipfX32, skipfY32);
  triangle(skipfX1, skipfY1, skipfX2, skipfY2, skipfX3, skipfY3);
  triangle(skipbX12, skipbY12, skipbX22, skipbY22, skipbX32, skipbY32);
  triangle(skipbX1, skipbY1, skipbX2, skipbY2, skipbX3, skipbY3);
  fill(resetcolorDayMode);
}//end drawSkipFBButton
void drawMuteButton() {
  fill(black);
  triangle(mutetX1, mutetY1, mutetX2, mutetY2, mutetX3, mutetY3);
  rect(muteX, muteY, muteWidth, muteHeight);
  fill(purp);
  rect(muteX2, muteY2, muteWidth2, muteHeight2);
  //triangle(mutetX12, mutetY12, mutetX22, mutetY22, mutetX32, mutetY32);
  fill(resetcolorDayMode);
}
//end Music Player Buttons
