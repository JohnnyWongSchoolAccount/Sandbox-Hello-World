//Global varibles
//
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
