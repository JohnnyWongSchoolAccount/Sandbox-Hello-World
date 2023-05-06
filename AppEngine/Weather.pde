//Global Variables
boolean ONOFF_WEATHER = false;
boolean Alberta = true;
boolean Guangzhou = false;
boolean Washington = false;
String textFeelsLikeWeather = "Feels Like: ";
String textCelsius = " °C", textcomma = ",", textSpace = "  ";
String textChangeWeather = " Location ";
//
void setupWeather() {if (ONOFF_WEATHER) {setupWeatherONOFF();} }//end setupWeather()
void drawWeather() { if (ONOFF_WEATHER) {drawWeatherONOFF();} }//end drawWeather()
void keyPressedWeather() {}//end keyPressedWeather()
void mousePressedWeather() { if (ONOFF_WEATHER) {mousePressedWeatherONOFF();} }//end mousePressedWeather()
//
/*
drawText( height, purpInk, CENTER, CENTER, Font, nameAlberta, locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight);
drawText( height, purpInk, CENTER, CENTER, Font, feelsLikeAlberta, feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight);
*/
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
  if ( mouseX>=changeWeatherX && mouseX<=changeWeatherX+changeWeatherWidth && mouseY>=changeWeatherY && mouseY<=changeWeatherY+changeWeatherHeight )
  {fill(hoverOver);} else {fill(black);}
  weatherChangeRect();
  drawText( height, purpInk, CENTER, CENTER, Font, textChangeWeather, changeWeatherX, changeWeatherY, changeWeatherWidth, changeWeatherHeight);
  //
  if (Alberta) {
    weatherLocationRect();
    drawText( height, purpInk, CENTER, CENTER, Font, nameAlberta, locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight);
    weatherDateTimeRect();
    drawText( height, purpInk, CENTER, CENTER, Font, currentAPICallTime, dateTimeWeatherX, dateTimeWeatherY, dateTimeWeatherWidth, dateTimeWeatherHeight);
    weatherCountryRect();
    drawText( height, purpInk, CENTER, CENTER, Font, textcomma+countryAlberta, countryWeatherX, countryWeatherY, countryWeatherWidth, countryWeatherHeight);
    weatherTempRect();
    drawText( height, purpInk, CENTER, CENTER, Font, tempAlberta+textCelsius, tempWeatherX, tempWeatherY, tempWeatherWidth, tempWeatherHeight);
    weatherImageRect();
    weatherFeelsLikeRect();
    drawText( height, purpInk, CENTER, CENTER, Font, textFeelsLikeWeather+feelsLikeAlberta+textCelsius, feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight);
  }
  if (Guangzhou) {
    weatherLocationRect();
    drawText( height, purpInk, CENTER, CENTER, Font, nameGuangzhou, locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight);
    weatherDateTimeRect();
    drawText( height, purpInk, CENTER, CENTER, Font, currentAPICallTime, dateTimeWeatherX, dateTimeWeatherY, dateTimeWeatherWidth, dateTimeWeatherHeight);
    weatherCountryRect();
    drawText( height, purpInk, CENTER, CENTER, Font, textcomma+countryGuangzhou, countryWeatherX, countryWeatherY, countryWeatherWidth, countryWeatherHeight);
    weatherTempRect();
    drawText( height, purpInk, CENTER, CENTER, Font, tempGuangzhou+textCelsius, tempWeatherX, tempWeatherY, tempWeatherWidth, tempWeatherHeight);
    weatherImageRect();
    weatherFeelsLikeRect();
    drawText( height, purpInk, CENTER, CENTER, Font, textFeelsLikeWeather+feelsLikeGuangzhou+textCelsius, feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight);
  }
  if (Washington) {
    weatherLocationRect();
    drawText( height, purpInk, CENTER, CENTER, Font, nameWashington, locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight);
    weatherDateTimeRect();
    drawText( height, purpInk, CENTER, CENTER, Font, currentAPICallTime, dateTimeWeatherX, dateTimeWeatherY, dateTimeWeatherWidth, dateTimeWeatherHeight);
    weatherCountryRect();
    drawText( height, purpInk, CENTER, CENTER, Font, textcomma+countryWashington, countryWeatherX, countryWeatherY, countryWeatherWidth, countryWeatherHeight);
    weatherTempRect();
    drawText( height, purpInk, CENTER, CENTER, Font, tempWashington+textCelsius, tempWeatherX, tempWeatherY, tempWeatherWidth, tempWeatherHeight);
    weatherImageRect();
    weatherFeelsLikeRect();
    drawText( height, purpInk, CENTER, CENTER, Font, textFeelsLikeWeather+feelsLikeWashington+textCelsius, feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight);
  }
}//end drawWeatherONOFF()
void mousePressedWeatherONOFF() { 
  if ( mouseX>=changeWeatherX && mouseX<=changeWeatherX+changeWeatherWidth && mouseY>=changeWeatherY && mouseY<=changeWeatherY+changeWeatherHeight )
  { weatherChange(); }
}//end keyPressedWeatherONOFF()
void weatherChange() {
  if (Alberta) {
    Alberta = false;
    Guangzhou = true;
    Washington = false;
  } else if (Guangzhou) {
    Alberta = false;
    Guangzhou = false;
    Washington = true;
  } else {
    Alberta = true;
    Guangzhou = false;
    Washington = false;
  }
}//end weatherChange
//end weather subProgram
