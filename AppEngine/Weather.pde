//Global Variables
boolean ONOFF_WEATHER = false;
//
void setupWeather() {if (ONOFF_WEATHER) {setupWeatherONOFF();} }//end setupWeather()
void drawWeather() { if (ONOFF_WEATHER) {drawWeatherONOFF();} }//end drawWeather()
void keyPressedWeather() {}//end keyPressedWeather()
void mousePressedWeather() {}//end mousePressedWeather()
//
void setupWeatherONOFF() {}//end setupWeatherONOFF()
void drawWeatherONOFF() {
  background(background);
  autoPlayMusic();
  population();
  timeline(int(pauseWidth), 0, 0, 0 );
  stroke(purp); strokeWeight(4);
  //
  if ( mouseX>=weatherAppX1 && mouseX<=weatherAppX1+weatherAppWidth && mouseY>=weatherAppY1 && mouseY<=weatherAppY1+weatherAppHeight )
  {fill(hoverOver);} else {fill(black);}
  weatherButton();
  drawText( height, purpInk, CENTER, CENTER, Font, textPortAlt, weatherAppX1, weatherAppY1, weatherAppWidth, weatherAppHeight);
  if ( mouseX>=musicX1 && mouseX<=musicX1+musicWidth && mouseY>=musicY1 && mouseY<=musicY1+musicHeight )
  {fill(hoverOver);} else {fill(black);}
  music();
  drawText( height, purpInk, CENTER, CENTER, Font, textPort, musicX1, musicY1, musicWidth, musicHeight);
  //
  weatherLocationRect();
  drawText( height, purpInk, CENTER, CENTER, Font, textPort, locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight);
  weatherTempRect();
  weatherImageRect();
  weatherFeelsLikeRect();
}//end drawWeatherONOFF()
//end weather subProgram
