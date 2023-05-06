//Libraries and Dependancies
import java.util.Date;
//Global Variables
//Batman
String mainWeatherBatman, descriptionBatman, iconBatman, countryBatman, nameBatman;
float tempBatmanFloat, tempMinBatman, tempMaxBatman, feelsLikeBatmanFloat;
String feelsLikeBatman;
String tempBatman;
String currentAPICallTime;
int sunriseBatman, sunsetBatman;
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
void currentBatman() {
  JSONArray weatherBatman = jsonCurrentBatman.getJSONArray("weather"); //Unwrapping
  JSONObject allBatman = weatherBatman.getJSONObject(0); //Unwrap {}
  mainWeatherBatman = allBatman.getString("main");
  descriptionBatman = allBatman.getString("description");
  iconBatman = allBatman.getString("icon");
  //
  JSONObject mainBatman = jsonCurrentBatman.getJSONObject("main"); //Unwrap {}
  tempBatmanFloat = mainBatman.getFloat("temp");
  tempBatman = String.valueOf(tempBatmanFloat);
  tempMinBatman = mainBatman.getFloat("temp_min");
  tempMaxBatman = mainBatman.getFloat("temp_max");
  feelsLikeBatmanFloat = mainBatman.getFloat("feels_like"); // Get float value
  feelsLikeBatman= String.valueOf(feelsLikeBatmanFloat);
  //
  long apiCallTime = jsonCurrentBatman.getInt("dt"); //int not enough memory, needs long (float & double)
  apiCurrentDateCall = humanDate(apiCallTime);
  currentAPICallTime = String.valueOf(apiCurrentDateCall);
  //
  JSONObject sysBatman = jsonCurrentBatman.getJSONObject("sys"); //Unwrap {}
  countryBatman = sysBatman.getString("country");
  sunriseBatman = sysBatman.getInt("sunrise");
  sunsetBatman = sysBatman.getInt("sunset");
  nameBatman = jsonCurrentBatman.getString("name");
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
  currentBatman();
  currentGuangzhou();
  currentWashington();
}//end unwrapToVariables */
//end UnwrapToVariables subProgram
