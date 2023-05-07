//Global Variables
boolean port = true;
//
void setupPort() {}//end setup
void drawPort() {
  if (port) { drawPortONOFF(); }
  timeline(int(pauseWidth), 0, 0, 0 );
  UIpageText("Music Player", "Menu", "Weather");
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight )
  {fill(#00FF4A); stroke(#00FF4A);} else {fill(#FF0000); stroke(#FF0000);}
  quitRect("Quit");
}//end drawPort()
void keyPressedPort() {
  //nightMode
  if ( key == 'Q' || key == 'q' ) { nightMode(); }//end nightMode Button keybind
  //musicPlayer
  if ( key == 'N' || key == 'n' ) { musicPlayer(); }//end musicPlayer Button keybind  
  //weather
  if ( key == 'b' || key == 'B' ) { weather(); }//end weather Button keybind
  //quit button
  if ( key == 'z' || key == 'Z' ) { quitFunction(1750, 250); }//end quit button keybind
}//end keyPressedPort()
void mousePressedPort() {
  if ( mouseX>=musicX1 && mouseX<=musicX1+musicWidth && mouseY>=musicY1 && mouseY<=musicY1+musicHeight )
  musicPlayer();
  if ( mouseX>=weatherAppX1 && mouseX<=weatherAppX1+weatherAppWidth && mouseY>=weatherAppY1 && mouseY<=weatherAppY1+weatherAppHeight )
  { weather(); }
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight )
  { quitFunction(1750, 250); }
  if (port) {mousePressedPortONOFF();}
}//end mousePressedPort()
//
void drawPortONOFF() {
  startPage();
  if ( mouseX>=musicX1 && mouseX<=nightX1+nightWidth && mouseY>=nightY1 && mouseY<=nightY1+nightHeight )
  {fill(hoverOver);} else {fill(black);}
  nightModeButton(" Night Mode ", " Day Mode ");//Population subProgram
}//end drawPortONOFF()
void keyPressedPortONOFF() {}//end keyPressedPortONOFF()
void mousePressedPortONOFF() {
  if ( mouseX>=nightX1 && mouseX<=nightX1+nightWidth && mouseY>=nightY1 && mouseY<=nightY1+nightHeight )
  { nightMode();}
}//end mousePressedPortONOFF()
void nightMode() {
  if (nit == false){ nit = true; } else { nit = false; }//turing on and off
  if (nit){
    tint(64, 64, 40); //RGB: Night Mode
    black = #FFC300; //The Button color CCC1FF
    purp = #FFFDD0; //The outline color FFFBE3
    background = #3B3B3B; //The background color 9EA9F0
    hoverOver = #9B9B9B; //hover over color FF0000 8D9EFF
    toggleOn = #FFF799; //toggle on color 00FF4A D6E5FA
  } if (nit == false){
    tint(255, 128); //Gray Scale, day use: used 1/2 tint for white (128/255=1/2)
    black = #CCC1FF; //The Button color CCC1FF
    purp = #FFFBE3; //The outline color FFFBE3
    background = #9EA9F0; //The background color 9EA9F0
    hoverOver = #8D9EFF; //hover over color FF0000 8D9EFF
    toggleOn = #D6E5FA; //toggle on color 00FF4A D6E5FA
  }
  background(background);
}//end nightMode()
void quitFunction(int SFXindex1skip, int quitDelay) {
  soundEffects[1].rewind();
  soundEffects[1].skip(SFXindex1skip);
  soundEffects[1].play();
  delay(quitDelay);
  exit();
}//end quitfuction
void UImousePressed() {
  if ( mouseX>=musicX1 && mouseX<=musicX1+musicWidth && mouseY>=musicY1 && mouseY<=musicY1+musicHeight )
  {fill(hoverOver);} else {fill(black);}
  music();
  if ( mouseX>=weatherAppX1 && mouseX<=weatherAppX1+weatherAppWidth && mouseY>=weatherAppY1 && mouseY<=weatherAppY1+weatherAppHeight )
  {fill(hoverOver);} else {fill(black);}
  weatherButton();
}//end UImousePressed
void startPage() {
  background(background);
  stroke(purp); strokeWeight(4);
  strokeJoin( ROUND ); //the outlines of the shapes
  autoPlayMusic();
  population();
  UImousePressed();
}//end startPage
void UIpageText(String textPort, String textPortAlt, String textPortWeather) {
  if (ONOFF_MUSICPLAYER) {
    drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textSpace+textPortAlt+textSpace+textSpace, musicX1, musicY1, musicWidth, musicHeight);
    drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textPortWeather+textSpace, weatherAppX1, weatherAppY1, weatherAppWidth, weatherAppHeight);
  } else if (ONOFF_WEATHER) {
    drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textPort+textSpace, musicX1, musicY1, musicWidth, musicHeight);
    drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textSpace+textPortAlt+textSpace+textSpace, weatherAppX1, weatherAppY1, weatherAppWidth, weatherAppHeight);
  } else {
    drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textPort+textSpace, musicX1, musicY1, musicWidth, musicHeight);
    drawText( height, purpInk, CENTER, CENTER, Font, textSpace+textPortWeather+textSpace, weatherAppX1, weatherAppY1, weatherAppWidth, weatherAppHeight);
  }
}//end UIpageText
void musicPlayer() {
  if (ONOFF_MUSICPLAYER == false){
    ONOFF_WEATHER = false;
    port = false;
    ONOFF_MUSICPLAYER = true;
  } else {
    ONOFF_WEATHER = false; 
    ONOFF_MUSICPLAYER = false; 
    port = true;
  }
}//end musicPlayerPort */
void weather() {
  if (ONOFF_WEATHER == false){
    ONOFF_MUSICPLAYER = false;
    ONOFF_WEATHER = true;
    port = false;
    unwrapToVariables();//UnwrapToVariables subProgram
  } else {
    ONOFF_MUSICPLAYER = false;
    ONOFF_WEATHER = false; 
    port = true;
  }
}//end weather
//end AppEngine Program
