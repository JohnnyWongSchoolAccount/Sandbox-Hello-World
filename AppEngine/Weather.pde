//Global Variables
boolean weather = false;
float locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight;//location
float tempWeatherX, tempWeatherY, tempWeatherWidth, tempWeatherHeight;//temperature
float WeatherX, WeatherY, WeatherWidth, WeatherHeight;//weather
float feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight;//feels like weather
//
void setupWeather() {if (weather) {setupWeatherONOFF();} }//end setupWeather()
void drawWeather() { if (weather) {drawWeatherONOFF();} }//end drawWeather()
void keyPressedWeather() {}//end keyPressedWeather()
void mousePressedWeather() {}//end mousePressedWeather()
//
//population
//
void setupWeatherONOFF() {}//end setupWeatherONOFF()
void drawWeatherONOFF() {
  background(255);
  population();
  rect(locationWeatherX, locationWeatherY, locationWeatherWidth, locationWeatherHeight);
  rect(tempWeatherX, tempWeatherY, tempWeatherWidth, tempWeatherHeight);
  rect(WeatherX, WeatherY, WeatherWidth, WeatherHeight);
  rect(feelsWeatherX, feelsWeatherY, feelsWeatherWidth, feelsWeatherHeight);
}//end drawWeatherONOFF()
//end weather subProgram
