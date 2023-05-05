//Global Variables
float BOXW;//creating hit boxes for mousePressed
int appWidth, appHeight;
//pause button
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight; // rect
float pauseScaleWidth, pauseScaleHeight;
//play button
float playX1, playY1, playX2, playY2, playX3, playY3;// triangle
//forward/rewind buttons
float forwardX1, forwardY1, forwardX2, forwardY2, forwardX3, forwardY3; //F button triangle
float forwardX12, forwardY12, forwardX22, forwardY22, forwardX32, forwardY32; //F button behind triangle
float rewindX1, rewindY1, rewindX2, rewindY2, rewindX3, rewindY3; //B button triangle
float rewindX12, rewindY12, rewindX22, rewindY22, rewindX32, rewindY32; //B button behind triangle
//previous/next buttons
float previousX1, previousY1, previousX2, previousY2, previousX3, previousY3; // button triangle
float previousBarX1, previousBarY1, previousBarWidth, previousBarHeight; //button bar rect
float nextX1, nextY1, nextX2, nextY2, nextX3, nextY3; // button triangle
float nextBarX2, nextBarY2;//button bar 2 rect
//mute button
float mutetX1, mutetY1, mutetX2, mutetY2, mutetX3, mutetY3; // triangle
float muteX, muteY, muteWidth, muteHeight; // rect
float mutetX12, mutetY12, mutetX22, mutetY22, mutetX32, mutetY32; // triangle
float muteX2, muteY2, muteWidth2, muteHeight2; // rect
//stop button
float stopX, stopY, stopWidth, stopHeight; // rect
//loopbutton
float loopX1, loopY1, loopWidth, loopHeight; //loop button rect
float loopX2, loopY2, loopWidth2, loopHeight2; //loop button 2 rect
float looptX1, looptY1, looptX2, looptY2, looptX3, looptY3; //loop button triangle
//loop Infinite button
float loopiX1, loopiY1, loopiWidth, loopiHeight; //loop button rect
float loopiX2, loopiY2, loopiWidth2, loopiHeight2; //loop button 2 rect
float looptiX1, looptiY1, looptiX2, looptiY2, looptiX3, looptiY3; //loop button triangle
//suffle button
float shuffleX1, shuffleY1, shuffleX2, shuffleY2, shuffleX3, shuffleY3; //shuffle button triangle top
float shuffleX12, shuffleY12, shuffleX22, shuffleY22, shuffleX32, shuffleY32;//shuffle button triangle bottom
//auto- button
float autoX1, autoY1, autoWidth, autoHeight; //auto  button rect
float autoX2, autoY2, autoWidth2, autoHeight2; //auto  button 2 rect
float autotX1, autotY1, autotX2, autotY2, autotX3, autotY3; //auto  button triangle
float autotX12, autotY12, autotX22, autotY22, autotX32, autotY32; //auto  button triangle
//MusicPlayer
float musicX1, musicY1, musicWidth, musicHeight; //music button rect
//night mode
float nightX1, nightY1, nightWidth, nightHeight; //night button rect
//weather app
float weatherAppX1, weatherAppY1, weatherAppWidth, weatherAppHeight; //weather app rect
//weather location
float locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight;//location
//weather country
float countryWeatherX, countryWeatherY, countryWeatherWidth, countryWeatherHeight;//country
//weather temperature
float tempWeatherX, tempWeatherY, tempWeatherWidth, tempWeatherHeight;//temperature
//weather image
float WeatherX, WeatherY, WeatherWidth, WeatherHeight;//weather
//weather feels like
float feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight;//feels like weather
//colors
color resetcolorNightMode=#000000, resetcolorDayMode=#FFFFFF; // Light/Dark mode colors
color black= #CCC1FF; //The Button color CCC1FF
color purp= #FFFBE3; //The outline color FFFBE3
color background=#9EA9F0; //The background color 9EA9F0
color hoverOver = #8D9EFF; //hover over color FF0000
color toggleOn = #D6E5FA; //toggle on color 00FF4A
//images
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
float tripleSelfX, tripleSelfY, tripleSelfWidth, tripleSelfHeight;
//
void population() {
  appWidth = width; //display width = x in the size line of code
  appHeight = height; //display height = y in the size line of code
  //
  //population visual data
  float startingX = appWidth*1.0/2.0;
  float startingY = appHeight*1.0/2.0;
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
  //rewind button - triangle
  rewindX1 = startingX - (pauseX1/5.0); 
  rewindY1 = startingY + (startingY/11.0);//width
  rewindX2 = startingX - (pauseX1/3.5);
  rewindY2 = startingY;
  rewindX3 = rewindX1;
  rewindY3 = startingY - (startingY/11.0);//width
  //triangle
  rewindX12 = startingX - (pauseX1/8.5); 
  rewindY12 = startingY + (startingY/11.0);//width
  rewindX22 = startingX - (pauseX1/5.0);
  rewindY22 = startingY;
  rewindX32 = rewindX12;
  rewindY32 = startingY - (startingY/11.0);//width
  //end forward/rewind button
  //forward button - triangle
  forwardX1 = startingX + (pauseX1/5.0); 
  forwardY1 = startingY + (startingY/11.0);//width
  forwardX2 = startingX + (pauseX1/3.5);
  forwardY2 = startingY;
  forwardX3 = forwardX1;
  forwardY3 = startingY - (startingY/11.0);//width
  //triangle
  forwardX12 = startingX + (pauseX1/8.5); 
  forwardY12 = startingY + (startingY/11.0);//width
  forwardX22 = startingX + (pauseX1/5.0);
  forwardY22 = startingY;
  forwardX32 = forwardX12;
  forwardY32 = startingY - (startingY/11.0);//width
  //previous button ;) - triangle
  previousX1 = startingX - ( pauseX1 / 3.0 ); //position on the X-axis
  previousY1 = startingY + ( pauseX1 / 15.0 ); //position of the bottom corner point Y-axis
  previousX2 = startingX - ( pauseX1 * 1 / 2.3 );
  previousY2 = startingY;
  previousX3 = previousX1;
  previousY3 = pauseY1;
  // previous bar - rectangle
  previousBarHeight = startingY*1/4.0;
  previousBarWidth = startingX*1/35.0;
  previousBarX1 = startingX - (pauseX1/2.1);
  previousBarY1 = startingY - (pauseHeight/2.0) ;
  //next button - triangle
  nextX1 = startingX + (pauseX1/3.0); 
  nextY1 = startingY + (startingY/8.0);
  nextX2 = startingX + (pauseX1*1/2.3);
  nextY2 = startingY;
  nextX3 = nextX1;
  nextY3 = pauseY1;
  //rectangle
  nextBarX2 = startingX + (pauseX1/2.25); //x-axis
  nextBarY2 = startingY - (pauseHeight/2.0); //y-axis
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
  //auto- button
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
  //end auto-
  //music
  musicX1 = pauseWidth;
  musicY1 = pauseHeight*6.7;
  musicWidth = appWidth/6;
  musicHeight = pauseHeight;
  //night mode
  nightX1 = pauseWidth;
  nightY1 = pauseWidth + (pauseWidth);
  nightWidth = appWidth/6;
  nightHeight = pauseHeight;
  //weather app
  weatherAppX1 = musicWidth + (pauseWidth*2);
  weatherAppY1 = pauseHeight*6.7;
  weatherAppWidth = appWidth/6;
  weatherAppHeight = pauseHeight;
  //weather Location
  locationWeatherX = pauseWidth;
  locationWeatherY = pauseWidth + (pauseWidth);
  locationWeatherWidth = (startingX - 2*(startingX/4))/2;
  locationWeatherHeight = startingY - 3*(startingY/4);
  //weather country
  countryWeatherX = (locationWeatherX+locationWeatherWidth)+(pauseWidth/2);
  countryWeatherY = locationWeatherY;
  countryWeatherWidth = (locationWeatherWidth)/1.5;
  countryWeatherHeight = locationWeatherHeight;
  //weather temp
  tempWeatherX = locationWeatherX;
  tempWeatherY = locationWeatherY + locationWeatherHeight + (pauseWidth/2);
  tempWeatherWidth = (startingX - 2*(startingX/4))/2;
  tempWeatherHeight = startingY - 3*(startingY/5);
  //weather image
  WeatherX = 6*(tempWeatherX/4) + (startingY - 3*(startingY/5)) + (pauseWidth/2);
  WeatherY = tempWeatherY;
  WeatherWidth = tempWeatherWidth;
  WeatherHeight = startingY - 3*(startingY/5);
  //weather feels like
  feelsWeatherX = locationWeatherX;
  feelsWeatherY = WeatherHeight + WeatherY + (pauseWidth/2);
  feelsWeatherWidth = locationWeatherWidth;
  feelsWeatherHeight = locationWeatherHeight/2;
  //images
  imageBackgroundX = appWidth * 0;
  imageBackgroundY = appHeight * 0;
  imageBackgroundWidth = appWidth - 1;//computer ERROR if pixel is not - border is not present
  imageBackgroundHeight =appHeight - 1;//in pixels~
  //tripleSelf
  tripleSelfX = startingX;
  tripleSelfY = startingY + (startingY/9);//image size in aspect ratio
  tripleSelfWidth = startingX - (startingX/4);//image postion on the X axis
  tripleSelfHeight = startingY - (startingY/1.5);//image postion on the Y axis
  //imageBackgroundX + (pauseWidth)/ imageBackgroundX + (pauseWidth) for top rigth
  //button hitbox variable
  BOXW = startingX/8;
}//end population
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
  fill(resetcolorDayMode);
}//end drawLoopTButton()
void drawLoopButtonInf() {
  rect(loopiX1, loopiY1, loopiWidth, loopiHeight, 22); // outside rect
  fill(background); // inside rect
  rect(loopiX2, loopiY2, loopiWidth2, loopiHeight2, 13); // inside rect
  fill(resetcolorDayMode);
}//end drawLoopButtonInf()
void drawLoopTButtonInf() {
  triangle(looptiX1, looptiY1, looptiX2, looptiY2, looptiX3, looptiY3); // triangle
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
void drawAutoPlayTButton() {
  triangle(autotX1, autotY1, autotX2, autotY2, autotX3, autotY3); // triangle
  triangle(autotX12, autotY12, autotX22, autotY22, autotX32, autotY32); // triangle
  fill(resetcolorDayMode);
}//end drawAutoPlayTButton()
void music() {
  rect(musicX1, musicY1, musicWidth, musicHeight);
}//end music()
void nightModeButton() {
  rect(nightX1, nightY1, nightWidth, nightHeight);
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
void weatherTempRect() {
  fill(black); stroke(black);
  rect(tempWeatherX, tempWeatherY, tempWeatherWidth, tempWeatherHeight);
  fill(resetcolorDayMode);
}//end weatherLocationRect
void weatherImageRect() {
  fill(black); stroke(black);
  rect(WeatherX, WeatherY, WeatherWidth, WeatherHeight);
  fill(resetcolorDayMode);
}//end weatherLocationRect
void weatherFeelsLikeRect() {
  fill(black); stroke(black);
  rect(feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight);
  fill(resetcolorDayMode);
}//end weatherLocationRect
//IMAGES 
void drawImagesPort() {
  //background image no empty
  //image( picture, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
  //aspect ratio
  image( picture, pictureXAdj, pictureYAdj, pictureWidthAdj, pictureHeightAdj );
}//end drawImagesPort()
//end population SubProgram
