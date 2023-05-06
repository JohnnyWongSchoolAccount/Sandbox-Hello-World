//Global Variables
boolean ONOFF_WEATHER = false;
boolean Batman = true;
boolean Guangzhou = false;
boolean Washington = false;
String textFeelsLikeWeather = "Feels Like: ";
String textCelsius = " °C", textcomma = ",", textSpace = "  ", textPeriod = ".", textDegree = "°", textmpers = "m/s";
String textChangeWeather = " Location ", textWind = "Wind: ";
//
void setupWeather() {if (ONOFF_WEATHER) {setupWeatherONOFF();} }//end setupWeather()
void drawWeather() { if (ONOFF_WEATHER) {drawWeatherONOFF();} }//end drawWeather()
void keyPressedWeather() {}//end keyPressedWeather()
void mousePressedWeather() { if (ONOFF_WEATHER) {mousePressedWeatherONOFF();} }//end mousePressedWeather()
//
/*
drawText( height, purpInk, CENTER, CENTER, Font, nameBatman, locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight);
drawText( height, purpInk, CENTER, CENTER, Font, feelsLikeBatman, feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight);
*/
void setupWeatherONOFF() {}//end setupWeatherONOFF()
void drawWeatherONOFF() {
  background(background);
  autoPlayMusic();
  population();
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
  if (Batman) {
    weatherLocationRect();
    drawText( height, purpInk, CENTER, CENTER, Font, nameBatman, locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight);
    weatherDateTimeRect();
    drawText( height, purpInk, CENTER, CENTER, Font, currentAPICallTime, dateTimeWeatherX, dateTimeWeatherY, dateTimeWeatherWidth, dateTimeWeatherHeight);
    weatherCountryRect();
    drawText( height, purpInk, CENTER, CENTER, Font, textcomma+countryBatman, countryWeatherX, countryWeatherY, countryWeatherWidth, countryWeatherHeight);
    weatherTempRect();
    drawText( height, purpInk, CENTER, CENTER, Font, tempBatman+textCelsius, tempWeatherX, tempWeatherY, tempWeatherWidth, tempWeatherHeight);
    weatherImageRect();
    weatherFeelsLikeRect();
    drawText( height, purpInk, CENTER, CENTER, Font, textFeelsLikeWeather+feelsLikeBatman+textCelsius, feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight);
    weatherDescriptionRect();
    drawText( height, purpInk, CENTER, CENTER, Font, textSpace+descriptionBatman+textSpace, weatherDescriptionX, weatherDescriptionY, weatherDescriptionWidth, weatherDescriptionHeight);
    weatherWindRect();
    drawText( height, purpInk, CENTER, CENTER, Font, textWind+windSpeedBatman+textmpers+windDegreeBatman+textDegree, weatherWindX, weatherWindY, weatherWindWidth, weatherWindHeight);
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
    weatherDescriptionRect();
    drawText( height, purpInk, CENTER, CENTER, Font, textSpace+descriptionGuangzhou+textSpace, weatherDescriptionX, weatherDescriptionY, weatherDescriptionWidth, weatherDescriptionHeight);
    weatherWindRect();
    drawText( height, purpInk, CENTER, CENTER, Font, textWind+windSpeedGuangzhou+textmpers+windDegreeGuangzhou+textDegree, weatherWindX, weatherWindY, weatherWindWidth, weatherWindHeight);  
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
    weatherDescriptionRect();
    drawText( height, purpInk, CENTER, CENTER, Font, textSpace+descriptionWashington+textSpace, weatherDescriptionX, weatherDescriptionY, weatherDescriptionWidth, weatherDescriptionHeight);
    weatherWindRect();
    drawText( height, purpInk, CENTER, CENTER, Font, textWind+windSpeedWashington+textmpers+windDegreeWashington+textDegree, weatherWindX, weatherWindY, weatherWindWidth, weatherWindHeight);
  }
}//end drawWeatherONOFF()
void mousePressedWeatherONOFF() { 
  if ( mouseX>=changeWeatherX && mouseX<=changeWeatherX+changeWeatherWidth && mouseY>=changeWeatherY && mouseY<=changeWeatherY+changeWeatherHeight )
  { weatherChange(); }
}//end keyPressedWeatherONOFF()
void weatherChange() {
  if (Batman) {
    Batman = false;
    Guangzhou = true;
    Washington = false;
  } else if (Guangzhou) {
    Batman = false;
    Guangzhou = false;
    Washington = true;
  } else {
    Batman = true;
    Guangzhou = false;
    Washington = false;
  }
}//end weatherChange
//end weather subProgram
