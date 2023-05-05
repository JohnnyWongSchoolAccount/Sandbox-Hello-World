//Libraries and Dependancies
import java.util.Date;
//Global Variables
String mainWeatherAlberta, descriptionAlberta, iconAlberta, countryAlberta, nameAlberta, feelsLikeAlberta;
float tempAlberta, tempMinAlberta, tempMaxAlberta;
int sunriseAlberta, sunsetAlberta;
Date apiCurrentDateCall; 
//
Date humanDate(long unixTime) {
  Date dateHuman = new Date(unixTime*1000); //convert from milliseconds
  return dateHuman;
}
void currentAlberta() {
  JSONArray weatherAlberta = jsonCurrentAlberta.getJSONArray("weather"); //Unwrapping
  JSONObject allAlberta = weatherAlberta.getJSONObject(0); //Unwrap {}
  mainWeatherAlberta = allAlberta.getString("main");
  descriptionAlberta = allAlberta.getString("description");
  iconAlberta = allAlberta.getString("icon");
  //
  JSONObject mainAlberta = jsonCurrentAlberta.getJSONObject("main"); //Unwrap {}
  tempAlberta = mainAlberta.getFloat("temp");
  tempMinAlberta = mainAlberta.getFloat("temp_min");
  tempMaxAlberta = mainAlberta.getFloat("temp_max");
  float feelsLikeAlbertaFloat = mainAlberta.getFloat("feels_like"); // Get float value
  String feelsLikeAlberta = String.valueOf(feelsLikeAlbertaFloat); // Convert float to string
  //
  long apiCallTimeAlberta = jsonCurrentAlberta.getInt("dt"); //int not enough memory, needs long (float & double)
  apiCurrentDateCall = humanDate(apiCallTimeAlberta);
  //
  JSONObject sysAlberta = jsonCurrentAlberta.getJSONObject("sys"); //Unwrap {}
  countryAlberta = sysAlberta.getString("country");
  sunriseAlberta = sysAlberta.getInt("sunrise");
  sunsetAlberta = sysAlberta.getInt("sunset");
  nameAlberta = jsonCurrentAlberta.getString("name");
}
void unwrapToVariables() {
  currentAlberta();
}//end unwrapToVariables */
//end UnwrapToVariables subProgram
