//Gloabal Variables
String URLCurrentAlberta;//alberta
String URLForcastAlberta;//alberta
String URLCurrentGuangzhou;//guangzhou
String URLForcastGuangzhou;//guangzhou
String URLCurrentWashington; //washington
String URLForcastWashington; //washington
//JSONObjects
JSONObject jsonCurrentAlberta;//alberta
JSONObject jsonForcastAlberta;//alberta
JSONObject jsonCurrentGuangzhou;//guangzhou
JSONObject jsonForcastGuangzhou;//guangzhou
JSONObject jsonCurrentWashington; //washington
JSONObject jsonForcastWashington; //washington
void buildingURL() {
  String domain = "http://api.openweathermap.org";//http is non secure https is secure
  String baseURL_data = "/data/2.5/";//opens openweathermap folders
  String folderWeather = "weather?";//opens weathermap folder weather
  String folderForecast = "forecast?";//opens weathermap folder forecast
  //
  String baseURL_Current = domain + baseURL_data + folderWeather;
  String baseURL_Forcast = domain + baseURL_data + folderForecast;
  //
  String apiKey = "APPID=8b5471ce80e6d985c39c2f39759fa6cd";//delete when public
  String albertaId = "id=5883102";
  String guangzhouId = "id=1809858";
  String washingtonId = "id=5815135";
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";
  //concatination of the URL
  URLCurrentAlberta = baseURL_Current+albertaId+and+apiKey+and+mode+and+unitMetric;
  URLForcastAlberta = baseURL_Forcast+albertaId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentGuangzhou = baseURL_Current+guangzhouId+and+apiKey+and+mode+and+unitMetric;
  URLForcastGuangzhou = baseURL_Forcast+guangzhouId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentWashington = baseURL_Current+washingtonId+and+apiKey+and+mode+and+unitMetric;
  URLForcastWashington = baseURL_Forcast+washingtonId+and+apiKey+and+mode+and+unitMetric;
}//end buildingURL
void APIcall() {
  jsonCurrentAlberta = loadJSONObject(URLCurrentAlberta);
  jsonForcastAlberta = loadJSONObject(URLForcastAlberta);
  jsonCurrentGuangzhou = loadJSONObject(URLCurrentGuangzhou);
  jsonForcastGuangzhou = loadJSONObject(URLForcastGuangzhou);
  jsonCurrentWashington = loadJSONObject(URLCurrentWashington);
  jsonForcastWashington = loadJSONObject(URLForcastWashington);
}
//end BuildingURL subProgram
