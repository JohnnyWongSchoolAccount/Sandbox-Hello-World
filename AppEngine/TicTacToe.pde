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
  ticTacToeGridPopulation();
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  { fill(hoverOver); stroke(hoverOver); } else { fill(black); stroke(black); }
  TTTMiddle();
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  { fill(hoverOver); stroke(hoverOver);  } else { fill(black); stroke(black); }
  TTTMiddleTop();
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  { fill(hoverOver); stroke(hoverOver);  } else { fill(black); stroke(black); }
  TTTMiddleBottom();
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  { fill(hoverOver); stroke(hoverOver);  } else { fill(black); stroke(black);}
  TTTLeft();
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  { fill(hoverOver); stroke(hoverOver);  } else { fill(black); stroke(black);}
  TTTLeftTopCorner();
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  { fill(hoverOver); stroke(hoverOver);  } else { fill(black); stroke(black);}
  TTTLeftBottomCorner();
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  { fill(hoverOver); stroke(hoverOver);  } else { fill(black); stroke(black);}
  TTTRight();
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  { fill(hoverOver); stroke(hoverOver); } else { fill(black); stroke(black);}
  TTTRightTopCorner();
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  { fill(hoverOver); stroke(hoverOver); } else { fill(black); stroke(black);}
  TTTRightBottomCorner();
}//end drawTicTacToeONOFF
void ticTacToeGridPopulation() {
  TTTX1 = (appWidth/2)-(pauseWidth*2);
  TTTY1 = (appHeight/2)-(pauseWidth*2)-(pauseWidth);
  TTTWidth = ((pauseWidth*2)*2);
  TTTHeight = TTTWidth;
  TTTX11 = (TTTX1)+TTTWidth+(pauseWidth/2);
  TTTX12 = (TTTX1)-TTTWidth-(pauseWidth/2);
  TTTY11 = (TTTY1)+TTTHeight+(pauseWidth/2);
  TTTY12 = (TTTY1)-TTTHeight-(pauseWidth/2);
}//end ticTacToeGridPopulation()
void TTTMiddle() {rect(TTTX1, TTTY1, TTTWidth, TTTHeight);}//middle
void TTTMiddleTop() {rect(TTTX1, TTTY11, TTTWidth, TTTWidth);}//middle top
void TTTMiddleBottom() {rect(TTTX1, TTTY12, TTTWidth, TTTWidth);}//middle bottom
void TTTLeft() {rect(TTTX11, TTTY1, TTTWidth, TTTWidth);}//left side
void TTTLeftTopCorner() {rect(TTTX11, TTTY11, TTTWidth, TTTWidth);}//left top corner
void TTTLeftBottomCorner() {rect(TTTX11, TTTY12, TTTWidth, TTTWidth);}//left bottom corner
void TTTRight() {rect(TTTX12, TTTY1, TTTWidth, TTTWidth);}//right side
void TTTRightTopCorner() {rect(TTTX12, TTTY11, TTTWidth, TTTWidth);}//right top corner
void TTTRightBottomCorner() {rect(TTTX12, TTTY12, TTTWidth, TTTWidth);}//right bottom corner
//end TicTacToe subProgram
