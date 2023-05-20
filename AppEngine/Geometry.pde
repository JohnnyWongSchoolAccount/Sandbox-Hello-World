//Global Variables
//
void drawPauseButton() {
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight, 22 ); //right rectangle
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight, 22 ); //left rectangle
  fill(resetcolorDayMode);
}//end drawPauseButton()
void drawPlayButton() {
  triangle(playX1, playY1, playX2, playY2, playX3, playY3 ); //triangle
  fill(resetcolorDayMode);
}//end drawPlayButton()
void drawPBPBcoverer() {
  stroke(background); fill(background);//covers undesired shape
  rect(pauseX1, pauseY1, BOXW, pauseHeight);
}//end drawPBPBcoverer()
void drawBButton() {
  triangle(rewindX12, rewindY12, rewindX22, rewindY22, rewindX32, rewindY32); // right side
  triangle(rewindX1, rewindY1, rewindX2, rewindY2, rewindX3, rewindY3); // right side
  fill(resetcolorDayMode);
}//end drawBButton()
void drawFButton() {
  triangle(forwardX12, forwardY12, forwardX22, forwardY22, forwardX32, forwardY32); // left side
  triangle(forwardX1, forwardY1, forwardX2, forwardY2, forwardX3, forwardY3); // left side
  fill(resetcolorDayMode);
}//end drawFButton()
void drawPreviousButton() {
  triangle( previousX1, previousY1, previousX2, previousY2, previousX3, previousY3 );//triange 1
  rect( previousBarX1, previousBarY1, previousBarWidth, previousBarHeight, 22 );//bar 1
  fill(resetcolorDayMode);
}//end drawPreviousButton()
void drawNextButton() {
  triangle( nextX1, nextY1, nextX2, nextY2, nextX3, nextY3 );//triange 2
  rect( nextBarX2, nextBarY2, previousBarWidth, previousBarHeight, 22 );//bar 2
  fill(resetcolorDayMode);
}//end drawNextButton()
void drawMuteButton() {
  triangle(mutetX1, mutetY1, mutetX2, mutetY2, mutetX3, mutetY3); // triangle
  rect(muteX, muteY, muteWidth, muteHeight); // rectangle
  rect(muteX2, muteY2, muteWidth2, muteHeight2); // blocking rectangle left side
  //triangle(mutetX12, mutetY12, mutetX22, mutetY22, mutetX32, mutetY32);
  fill(resetcolorDayMode);
}//end drawMuteButton()
void drawStopButton() {
  rect( stopX, stopY, stopWidth, stopHeight, 22 ); //square
  fill(resetcolorDayMode);
}//end drawStopButton()
void drawLoopButton() {
  rect(loopX1, loopY1, loopWidth, loopHeight, 22); // outside rect
  fill(background); // inside rect
  rect(loopX2, loopY2, loopWidth2, loopHeight2, 13); // inside rect
  fill(resetcolorDayMode);
}//end drawLoopButton()
void drawLoopTButton() {
  triangle(looptX1, looptY1, looptX2, looptY2, looptX3, looptY3); // triangle
  drawText( height, purpInk, CENTER, CENTER, Font, text, loopX1, loopY1/1.3, loopWidth, loopHeight);
  fill(resetcolorDayMode);
}//end drawLoopTButton()
void drawLoopButtonInf() {
  rect(loopiX1, loopiY1, loopiWidth, loopiHeight, 22); // outside rect
  fill(background); // inside rect
  rect(loopiX2, loopiY2, loopiWidth2, loopiHeight2, 13); // inside rect
  fill(resetcolorDayMode);
}//end drawLoopButtonInf()
void drawLoopTButtonInf(String textLoopInf) {
  triangle(looptiX1, looptiY1, looptiX2, looptiY2, looptiX3, looptiY3); // triangle
  drawText( height, purpInk, CENTER, CENTER, Font, textLoopInf, loopiX1, loopiY1/1.3, loopWidth, loopHeight );
  fill(resetcolorDayMode);
}//end drawLoopTButtonInf()
void drawShuffleButton() {
  triangle(shuffleX1, shuffleY1, shuffleX2, shuffleY2, shuffleX3, shuffleY3); // bottom
  triangle(shuffleX12, shuffleY12, shuffleX22, shuffleY22, shuffleX32, shuffleY32); // top
  fill(resetcolorDayMode);
}//end drawShuffleButton()
void drawAutoPlayButton() {
  rect(autoX1, autoY1, autoWidth, autoHeight, 22); // outside rect
  fill(background); // inside rect
  rect(autoX2, autoY2, autoWidth2, autoHeight2, 13); // inside rect
  fill(resetcolorDayMode);
}//end drawAutoPlayButton()
void drawAutoPlayTButton(String textAutoPlay) {
  triangle(autotX1, autotY1, autotX2, autotY2, autotX3, autotY3); // triangle
  triangle(autotX12, autotY12, autotX22, autotY22, autotX32, autotY32); // triangle
  drawText( height, purpInk, CENTER, CENTER, Font, textAutoPlay, autoX1, autoY1/1.18, autoWidth, autoHeight );
  fill(resetcolorDayMode);
}//end drawAutoPlayTButton()
void music() {
  rect(musicX1, musicY1, musicWidth, musicHeight);
}//end music
void ticTacToeRect() {
  rect(ticTacToeX1, ticTacToeY1, ticTacToeWidth, ticTacToeHeight);
}//end ticTacToeRect
void nightModeButton(String textNM, String textDM) {
  rect(nightX1, nightY1, nightWidth, nightHeight);
  if (nit == false) {
    drawText( height, purpInk, CENTER, CENTER, Font, textNM, nightX1, nightY1, nightWidth, nightHeight);
  } else {
    drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textDM+textSpace, nightX1, nightY1, nightWidth, nightHeight);
  }
}//end nightModeButton()
//weather
void weatherButton() {
  rect(weatherAppX1, weatherAppY1, weatherAppWidth, weatherAppHeight);
}//end weatherButton
void weatherLocationRect() {
  fill(black); stroke(black);
  rect(locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight);
  fill(resetcolorDayMode);
}//end weatherLocationRect
void weatherCountryRect() {
  fill(black); stroke(black);
  rect(countryWeatherX, countryWeatherY, countryWeatherWidth, countryWeatherHeight);
  fill(resetcolorDayMode);
}//end weatherCountryRect 
void weatherChangeRect(String textChangeWeather) {
  rect(changeWeatherX, changeWeatherY, changeWeatherWidth, changeWeatherHeight);
  drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textChangeWeather+textSpace, changeWeatherX, changeWeatherY, changeWeatherWidth, changeWeatherHeight);
  fill(resetcolorDayMode);
}//end weatherChangeRect
void weatherDateTimeRect() {
  fill(black); stroke(black);
  rect(dateTimeWeatherX, dateTimeWeatherY, dateTimeWeatherWidth, dateTimeWeatherHeight);
  fill(resetcolorDayMode);
}//end weatherDateTimeRect
void weatherTempRect() {
  fill(black); stroke(black);
  rect(tempWeatherX, tempWeatherY, tempWeatherWidth, tempWeatherHeight);
  fill(resetcolorDayMode);
}//end weathertempRect
void weatherImageRect() {
  fill(black); stroke(black);
  rect(WeatherX, WeatherY, WeatherWidth, WeatherHeight);
  fill(resetcolorDayMode);
}//end weatherImageRect
void weatherFeelsLikeRect() {
  fill(black); stroke(black);
  rect(feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight);
  fill(resetcolorDayMode);
}//end weatherFeelsLikeRect
void weatherDescriptionRect() {
  fill(black); stroke(black);
  rect(weatherDescriptionX, weatherDescriptionY, weatherDescriptionWidth, weatherDescriptionHeight);
  fill(resetcolorDayMode);
}//end weatherDescriptionRect
void weatherWindRect() {
  fill(black); stroke(black);
  rect( weatherWindX, weatherWindY, weatherWindWidth, weatherWindHeight);
  fill(resetcolorDayMode);
}//end weatherWindRect
void TTTMiddle(String textX, String textO) {
  rect(TTTX1, TTTY1, TTTWidth, TTTHeight);
  if (stateMiddle == 1){ drawText( height, purpInk, CENTER, CENTER, Font, textX, TTTX1, TTTY1, TTTWidth, TTTHeight);
  } else if (stateMiddle == 2){drawText( height, purpInk, CENTER, CENTER, Font, textO, TTTX1, TTTY1, TTTWidth, TTTHeight);
  } else {}
}//middle
void TTTMiddleTop(String textX, String textO) {
  rect(TTTX1, TTTY11, TTTWidth, TTTWidth);
  if (stateMiddleTop == 1){ drawText( height, purpInk, CENTER, CENTER, Font, textX, TTTX1, TTTY11, TTTWidth, TTTWidth);
  } else if (stateMiddleTop == 2){drawText( height, purpInk, CENTER, CENTER, Font, textO, TTTX1, TTTY11, TTTWidth, TTTWidth);
  } else {}
}//middle top
void TTTMiddleBottom(String textX, String textO) {
  rect(TTTX1, TTTY12, TTTWidth, TTTWidth);
  if (stateMiddleBottom == 1){ drawText( height, purpInk, CENTER, CENTER, Font, textX, TTTX1, TTTY12, TTTWidth, TTTHeight);
  } else if (stateMiddleBottom == 2){drawText( height, purpInk, CENTER, CENTER, Font, textO, TTTX1, TTTY12, TTTWidth, TTTHeight);
  } else {}
}//middle bottom
void TTTLeft(String textX, String textO) {
  rect(TTTX11, TTTY1, TTTWidth, TTTWidth);
  if (stateLeft == 1){ drawText( height, purpInk, CENTER, CENTER, Font, textX,TTTX11, TTTY1, TTTWidth, TTTWidth);
  } else if (stateLeft == 2){drawText( height, purpInk, CENTER, CENTER, Font, textO, TTTX11, TTTY1, TTTWidth, TTTWidth);
  } else {}
}//left side
void TTTLeftTopCorner(String textX, String textO) {
  rect(TTTX11, TTTY11, TTTWidth, TTTWidth);
  if (stateLeftTop == 1){ drawText( height, purpInk, CENTER, CENTER, Font, textX, TTTX11, TTTY11, TTTWidth, TTTWidth);
  } else if (stateLeftTop == 2){drawText( height, purpInk, CENTER, CENTER, Font, textO, TTTX11, TTTY11, TTTWidth, TTTWidth);
  } else {}
}//left top corner
void TTTLeftBottomCorner(String textX, String textO) {
  rect(TTTX11, TTTY12, TTTWidth, TTTWidth);
  if (stateLeftBottom == 1){ drawText( height, purpInk, CENTER, CENTER, Font, textX, TTTX11, TTTY12, TTTWidth, TTTWidth);
  } else if (stateLeftBottom == 2){drawText( height, purpInk, CENTER, CENTER, Font, textO, TTTX11, TTTY12, TTTWidth, TTTWidth);
  } else {}
}//left bottom corner
void TTTRight(String textX, String textO) {
  rect(TTTX12, TTTY1, TTTWidth, TTTWidth);
  if (stateRight == 1){ drawText( height, purpInk, CENTER, CENTER, Font, textX, TTTX12, TTTY1, TTTWidth, TTTWidth);
  } else if (stateRight == 2){drawText( height, purpInk, CENTER, CENTER, Font, textO, TTTX12, TTTY1, TTTWidth, TTTWidth);
  } else {}
}//right side
void TTTRightTopCorner(String textX, String textO) {
  rect(TTTX12, TTTY11, TTTWidth, TTTWidth);
  if (stateRightTop == 1){ drawText( height, purpInk, CENTER, CENTER, Font, textX, TTTX12, TTTY11, TTTWidth, TTTWidth);
  } else if (stateRightTop == 2){drawText( height, purpInk, CENTER, CENTER, Font, textO,TTTX12, TTTY11, TTTWidth, TTTWidth);
  } else {}
}//right top corner
void TTTRightBottomCorner(String textX, String textO) {
  rect(TTTX12, TTTY12, TTTWidth, TTTWidth);
  if (stateRightBottom == 1){ drawText( height, purpInk, CENTER, CENTER, Font, textX, TTTX12, TTTY12, TTTWidth, TTTWidth);
  } else if (stateRightBottom == 2){drawText( height, purpInk, CENTER, CENTER, Font, textO, TTTX12, TTTY12, TTTWidth, TTTWidth);
  } else {}
}//right bottom corner
void ticTacToeResetRect(String textReset) {
  rect(TTTResetX, TTTResetY, TTTResetWidth, TTTResetHeight);
  drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textSpace+textReset+textSpace+textSpace, TTTResetX, TTTResetY, TTTResetWidth, TTTResetHeight);
}//end ticTacToeResetRect
void ticTacToeModeChangeRect(String textMode) {
  rect(TTTModeX, TTTModeY, TTTModeWidth, TTTModeHeight);
  drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textSpace+textSpace+textMode+textSpace+textSpace+textSpace, TTTModeX, TTTModeY, TTTModeWidth, TTTModeHeight);
}//end ticTacToeModeChangeRect
void ticTacToePlayWidthFriendsRect(String textPlayWithFriends) {
  rect(TTTPlayWithFriendsX, TTTPlayWithFriendsY, TTTPlayWithFriendsWidth, TTTPlayWithFriendsHeight);
  drawText( height, purpInk, CENTER, CENTER, Font, textPlayWithFriends, TTTPlayWithFriendsX, TTTPlayWithFriendsY, TTTPlayWithFriendsWidth, TTTPlayWithFriendsHeight);
}//end ticTacToePlayWidthFriends
void ticTacToeEasyAlgorithmRect(String textEasy) {
  rect(TTTEasyX, TTTEasyY, TTTEasyWidth, TTTEasyHeight);
  drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textEasy+textSpace, TTTEasyX, TTTEasyY, TTTEasyWidth, TTTEasyHeight);
}//end ticTacToeEasyAlgorithmRect
void ticTacToeMediumAlgorithmRect(String textMedium) {
  rect(TTTMediumX, TTTMediumY, TTTMediumWidth, TTTMediumHeight);
  drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textMedium+textSpace, TTTMediumX, TTTMediumY, TTTMediumWidth, TTTMediumHeight);
}//end ticTacToeEasyAlgorithmRect 
void ticTacToeImpossibleAlgorithmRect(String textImpossible) {
  rect(TTTImpossibleX, TTTImpossibleY, TTTImposibleWidth, TTTimpossibleHeight);
  drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textImpossible+textSpace, TTTImpossibleX, TTTImpossibleY, TTTImposibleWidth, TTTimpossibleHeight);
}//end ticTacToeEasyAlgorithmRect
void ticTacToeTurnX(String textX, String textNot, String textWinner) {
  fill(black); stroke(black);
  rect(TTTturnXX, TTTturnXY, TTTturnXWidth, TTTturnXHeight);
  if (checkWinO()) drawText( height, purpInk, CENTER, CENTER, Font, textWinner, TTTturnXX, TTTturnXY, TTTturnXWidth, TTTturnXHeight);
  else if (turnXO) drawText( height, purpInk, CENTER, CENTER, Font, textX, TTTturnXX, TTTturnXY, TTTturnXWidth, TTTturnXHeight);
  else drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textSpace+textSpace+textSpace+textNot+textSpace+textSpace+textSpace+textSpace, TTTturnXX, TTTturnXY, TTTturnXWidth, TTTturnXHeight);
}//end ticTacToeTurnX
void ticTacToeTurnO(String textO, String textNot, String textWinner) {
  fill(black); stroke(black);
  rect(TTTturnOX, TTTturnOY, TTTturnOWidth, TTTturnOHeight);
  if (checkWinX()) drawText( height, purpInk, CENTER, CENTER, Font, textWinner, TTTturnOX, TTTturnOY, TTTturnOWidth, TTTturnOHeight);
  else if (turnXO == false) drawText( height, purpInk, CENTER, CENTER, Font, textO, TTTturnOX, TTTturnOY, TTTturnOWidth, TTTturnOHeight);
  else drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textSpace+textSpace+textSpace+textNot+textSpace+textSpace+textSpace+textSpace, TTTturnOX, TTTturnOY, TTTturnOWidth, TTTturnOHeight);
}//end ticTacToeTurnO
void quitRect(String textQuit) {
  rect(quitX, quitY, quitWidth, quitHeight);
  drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textSpace+textSpace+textQuit+textSpace+textSpace+textSpace, quitX, quitY, quitWidth, quitHeight);
}//end quitRect
//IMAGES 
void drawImagesWeather() {
  image( picture1, pictureXAdj+(pictureWidthAdj*2)+(pauseWidth*1.5), pictureYAdj+(dateTimeWeatherHeight)+(pauseWidth*3), pictureWidthAdj, pictureHeightAdj );
}//end drawImagesWeather
void drawImagesPort() {
  //background image no empty
  //image( picture, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
  //aspect ratio
  image( picture, pictureXAdj, pictureYAdj, pictureWidthAdj, pictureHeightAdj );
}//end drawImagesPort()
//end Geometry subProgram
