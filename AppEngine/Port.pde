//Global Variables
boolean Port = true;
//
void setupPort() {}//end setup
void drawPort() {
  if (Port == true){
    background(#3B3B3B);
    music();//Population subProgram
    if ( mouseX>=musicX1 && mouseX<=musicX1+musicWidth && mouseY>=musicY1 && mouseY<=musicY1+musicHeight )
    {fill(hoverOver);} else {fill(black);}
    music();//Population subProgram
  } else {
    ONOFF_MUSICPLAYER = true;
  }//end port
}//end drawPort()
void keyPressedPort() { 
  //musicPlayer
  if ( key == 'N' || key == 'n' ) { musicPlayer(); }//end musicPlayer Button keybind
}//end keyPressedPort()
void mousePressedPort() {
  if (Port == true) { mousePressedPortONOFF() }
}//end mousePressedPort()
void mousePressedPortONOFF() {
  if ( mouseX>=musicX1 && mouseX<=musicX1+musicWidth && mouseY>=musicY1 && mouseY<=musicY1+musicHeight )
  {Port = false;}
}//end mousePressedPortONOFF
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
