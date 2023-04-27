//Global Variables
boolean ONOFF_WEATHER = false;
float locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight;//location
float tempWeatherX, tempWeatherY, tempWeatherWidth, tempWeatherHeight;//temperature
float WeatherX, WeatherY, WeatherWidth, WeatherHeight;//weather
float feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight;//feels like weather
//
void setupWeather() {if (ONOFF_WEATHER) {setupWeatherONOFF();} }//end setupWeather()
void drawWeather() { if (ONOFF_WEATHER) {drawWeatherONOFF();} }//end drawWeather()
void keyPressedWeather() {}//end keyPressedWeather()
void mousePressedWeather() {}//end mousePressedWeather()
//
void setupWeatherONOFF() {}//end setupWeatherONOFF()
void drawWeatherONOFF() {
  background(background);
  population();
  if ( mouseX>=weatherAppX1 && mouseX<=weatherAppX1+weatherAppWidth && mouseY>=weatherAppY1 && mouseY<=weatherAppY1+weatherAppHeight )
  {fill(hoverOver);} else {fill(black);}
  weatherButton();
  drawText( height, purpInk, CENTER, CENTER, Font, textPortAlt, weatherAppX1, weatherAppY1, weatherAppWidth, weatherAppHeight);
  if ( mouseX>=musicX1 && mouseX<=musicX1+musicWidth && mouseY>=musicY1 && mouseY<=musicY1+musicHeight )
  {fill(hoverOver);} else {fill(black);}
  music();
  drawText( height, purpInk, CENTER, CENTER, Font, textPort, musicX1, musicY1, musicWidth, musicHeight);
  rect(locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight);
  rect(tempWeatherX, tempWeatherY, tempWeatherWidth, tempWeatherHeight);
  rect(WeatherX, WeatherY, WeatherWidth, WeatherHeight);
  rect(feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight);
}//end drawWeatherONOFF()
//end weather subProgram
