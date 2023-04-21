//Global Variables
boolean Port = true;
String textPort = "Music Player", textPortAlt = "    Menu    ";
//
void setupPort() {}//end setup
void drawPort() { 
  if (Port == true) { drawPortONOFF(); }
}//end drawPort()
void keyPressedPort() {
  //nightMode
  if ( key == 'Q' || key == 'q' ) { nightMode(); }//end nightMode Button keybind
  //musicPlayer
  if ( key == 'N' || key == 'n' ) { musicPlayer(); }//end musicPlayer Button keybind
}//end keyPressedPort()
void mousePressedPort() {
  if ( mouseX>=musicX1 && mouseX<=musicX1+musicWidth && mouseY>=musicY1 && mouseY<=musicY1+musicHeight )
  { musicPlayer();}
}//end mousePressedPort()
//
void drawPortONOFF() {
  background(#3B3B3B);
  timeline(int(pauseWidth), 0, 0, 0);
  if (autoPlayOn) {autoPlayMusic();}
  stroke(purp); strokeWeight(4);
  if ( mouseX>=musicX1 && mouseX<=musicX1+musicWidth && mouseY>=musicY1 && mouseY<=musicY1+musicHeight )
  {fill(hoverOver);} else {fill(black);}
  music();//Population subProgram
  textDraw( height, purpInk, CENTER, CENTER, Font, textPort, pauseWidth, pauseHeight*6.7, appWidth/6, pauseHeight);
}//end drawPortONOFF
void keyPressedPortONOFF() {}//end keyPressedPortONOFF
void mousePressedPortONOFF() {}//end mousePressedPortONOFF
void nightMode() {
  if (nit == false){ nit = true; } else { nit = false; }//turing on and off
  if (nit == true){
    tint(64, 64, 40); //RGB: Night Mode
    black= #FFC300; //The Button color CCC1FF
    purp= #FFFDD0; //The outline color FFFBE3
    background=#3B3B3B; //The background color 9EA9F0
    hoverOver = #9B9B9B; //hover over color FF0000 8D9EFF
    toggleOn = #FFF799; //toggle on color 00FF4A D6E5FA
  } if (nit == false){
    tint(255, 128); //Gray Scale, day use: used 1/2 tint for white (128/255=1/2)
    black= #CCC1FF; //The Button color CCC1FF
    purp= #FFFBE3; //The outline color FFFBE3
    background=#9EA9F0; //The background color 9EA9F0
    hoverOver = #8D9EFF; //hover over color FF0000 8D9EFF
    toggleOn = #D6E5FA; //toggle on color 00FF4A D6E5FA
  }
  background(background);
}//end nightMode
void musicPlayer() {
  if (ONOFF_MUSICPLAYER == false){
    ONOFF_MUSICPLAYER = true;
    Port = false;
  } else {
    ONOFF_MUSICPLAYER = false; 
    Port = true;
  }
}//end musicPlayerPort */
//end AppEngine Program
