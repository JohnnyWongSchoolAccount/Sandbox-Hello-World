//Libraries and Dependancies
import java.util.Date;
//Global Variables
//Alberta
String mainWeatherAlberta, descriptionAlberta, iconAlberta, countryAlberta, nameAlberta;
float tempAlbertaFloat, tempMinAlberta, tempMaxAlberta, feelsLikeAlbertaFloat;
String feelsLikeAlberta;
String tempAlberta;
String currentAPICallTime;
int sunriseAlberta, sunsetAlberta;
//Guangzhou
String mainWeatherGuangzhou, descriptionGuangzhou, iconGuangzhou, countryGuangzhou, nameGuangzhou;
float tempGuangzhouFloat, tempMinGuangzhou, tempMaxGuangzhou, feelsLikeGuangzhouFloat;
String feelsLikeGuangzhou;
String tempGuangzhou;
int sunriseGuangzhou, sunsetGuangzhou;
//Washington
String mainWeatherWashington, descriptionWashington, iconWashington, countryWashington, nameWashington;
float tempWashingtonFloat, tempMinWashington, tempMaxWashington, feelsLikeWashingtonFloat;
String feelsLikeWashington;
String tempWashington;
int sunriseWashington, sunsetWashington;
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
  tempAlbertaFloat = mainAlberta.getFloat("temp");
  tempAlberta = String.valueOf(tempAlbertaFloat);
  tempMinAlberta = mainAlberta.getFloat("temp_min");
  tempMaxAlberta = mainAlberta.getFloat("temp_max");
  feelsLikeAlbertaFloat = mainAlberta.getFloat("feels_like"); // Get float value
  feelsLikeAlberta= String.valueOf(feelsLikeAlbertaFloat);
  //
  long apiCallTime = jsonCurrentAlberta.getInt("dt"); //int not enough memory, needs long (float & double)
  apiCurrentDateCall = humanDate(apiCallTime);
  currentAPICallTime = String.valueOf(apiCurrentDateCall);
  //
  JSONObject sysAlberta = jsonCurrentAlberta.getJSONObject("sys"); //Unwrap {}
  countryAlberta = sysAlberta.getString("country");
  sunriseAlberta = sysAlberta.getInt("sunrise");
  sunsetAlberta = sysAlberta.getInt("sunset");
  nameAlberta = jsonCurrentAlberta.getString("name");
}
void currentGuangzhou() {
  JSONArray weatherGuangzhou = jsonCurrentGuangzhou.getJSONArray("weather"); //Unwrapping
  JSONObject allGuangzhou = weatherGuangzhou.getJSONObject(0); //Unwrap {}
  mainWeatherGuangzhou = allGuangzhou.getString("main");
  descriptionGuangzhou = allGuangzhou.getString("description");
  iconGuangzhou = allGuangzhou.getString("icon");
  //
  JSONObject mainGuangzhou = jsonCurrentGuangzhou.getJSONObject("main"); //Unwrap {}
  tempGuangzhouFloat = mainGuangzhou.getFloat("temp");
  tempGuangzhou = String.valueOf(tempGuangzhouFloat);
  tempMinGuangzhou = mainGuangzhou.getFloat("temp_min");
  tempMaxGuangzhou = mainGuangzhou.getFloat("temp_max");
  feelsLikeGuangzhouFloat = mainGuangzhou.getFloat("feels_like"); // Get float value
  feelsLikeGuangzhou = String.valueOf(feelsLikeGuangzhouFloat);
  //
  long apiCallTime = jsonCurrentGuangzhou.getInt("dt"); //int not enough memory, needs long (float & double)
  apiCurrentDateCall = humanDate(apiCallTime);
  currentAPICallTime = String.valueOf(apiCurrentDateCall);
  //
  JSONObject sysGuangzhou = jsonCurrentGuangzhou.getJSONObject("sys"); //Unwrap {}
  countryGuangzhou = sysGuangzhou.getString("country");
  sunriseGuangzhou = sysGuangzhou.getInt("sunrise");
  sunsetGuangzhou = sysGuangzhou.getInt("sunset");
  nameGuangzhou = jsonCurrentGuangzhou.getString("name");
}
void currentWashington() {
  JSONArray weatherWashington = jsonCurrentWashington.getJSONArray("weather"); //Unwrapping
  JSONObject allWashington = weatherWashington.getJSONObject(0); //Unwrap {}
  mainWeatherWashington = allWashington.getString("main");
  descriptionWashington = allWashington.getString("description");
  iconWashington = allWashington.getString("icon");
  //
  JSONObject mainWashington = jsonCurrentWashington.getJSONObject("main"); //Unwrap {}
  tempWashingtonFloat = mainWashington.getFloat("temp");
  tempWashington = String.valueOf(tempWashingtonFloat);
  tempMinWashington = mainWashington.getFloat("temp_min");
  tempMaxWashington = mainWashington.getFloat("temp_max");
  feelsLikeWashingtonFloat = mainWashington.getFloat("feels_like"); // Get float value
  feelsLikeWashington = String.valueOf(feelsLikeWashingtonFloat);
  //
  long apiCallTime = jsonCurrentWashington.getInt("dt"); //int not enough memory, needs long (float & double)
  apiCurrentDateCall = humanDate(apiCallTime);
  currentAPICallTime = String.valueOf(apiCurrentDateCall);
  //
  JSONObject sysWashington = jsonCurrentWashington.getJSONObject("sys"); //Unwrap {}
  countryWashington = sysWashington.getString("country");
  sunriseWashington = sysWashington.getInt("sunrise");
  sunsetWashington = sysWashington.getInt("sunset");
  nameWashington = jsonCurrentWashington.getString("name");
}
void unwrapToVariables() {
  currentAlberta();
  currentGuangzhou();
  currentWashington();
}//end unwrapToVariables */
//end UnwrapToVariables subProgram
