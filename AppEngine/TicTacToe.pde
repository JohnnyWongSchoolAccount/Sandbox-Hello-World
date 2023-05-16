//Global Variables
boolean ONOFF_TICTACTOE = false;
float TTTX1, TTTY1, TTTWidth, TTTHeight;
float TTTX11, TTTX12, TTTY11, TTTY12;
//
void setupTicTacToe() {}//end setupTicTacToe
void drawTicTacToe() { if (ONOFF_TICTACTOE) { drawTicTacToeONOFF();} }//end drawTicTacToe
void mousePressedTicTacToe(){}//end mousePressedTicTacToe
void keyPressedTicTacToe() {}//end keyPressedTicTacToe
//
void drawTicTacToeONOFF() {
  startPage(int(pauseWidth/3.5));
  TTTX1 = (appWidth/2)-(pauseWidth*2);
  TTTY1 = (appHeight/2)-(pauseWidth*2)-(pauseWidth);
  TTTWidth = ((pauseWidth*2)*2);
  TTTHeight = TTTWidth;
  TTTX11 = TTTX1+TTTWidth+(pauseWidth/2);
  TTTX12 = (TTTX1)-TTTWidth - (pauseWidth/2);
  TTTY11 = (TTTY1)+TTTHeight + (pauseWidth/2);
  TTTY12 = (TTTY1)-TTTHeight - (pauseWidth/2);
  rect(TTTX1, TTTY1, TTTWidth, TTTHeight);//middle
  rect(TTTX11, TTTY1, TTTWidth, TTTWidth);//left side
  rect(TTTX12, TTTY1, TTTWidth, TTTWidth);//right side
  rect(TTTX12, TTTY11, TTTWidth, TTTWidth);//right top corner
  rect(TTTX12, TTTY12, TTTWidth, TTTWidth);//right bottom corner
  rect(TTTX1, TTTY11, TTTWidth, TTTWidth);//middle top side
  rect(TTTX1, TTTY12, TTTWidth, TTTWidth);//middle bottom side
  rect(TTTX11, TTTY11, TTTWidth, TTTWidth);//left top corner
  rect(TTTX11, TTTY12, TTTWidth, TTTWidth);//left top corner
}//end drawTicTacToeONOFF
//end TicTacToe subProgram
