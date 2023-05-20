//Global Variables
boolean ONOFF_TICTACTOE = false;
//{0 = 'noting'}, { 1 = 'X'}, { 2 = 'O'} STATE
float stateMiddle = 0, stateMiddleTop = 0, stateMiddleBottom = 0;
float stateLeft = 0, stateLeftTop = 0, stateLeftBottom = 0;
float stateRight = 0, stateRightTop = 0, stateRightBottom = 0;
//{turnXO = false = O} {turnXO = true = X}
boolean turnXO = true;//"X"
boolean gameOn;
boolean dropDownTicTacToeModeMenu = false;
boolean playWithFriends = true;
boolean easyAlgorithm = false;
boolean mediumAlgorithm = false;
boolean impossibleAlgorithm = false;
//
void setupTicTacToe() {}//end setupTicTacToe
void drawTicTacToe() { if (ONOFF_TICTACTOE) drawTicTacToeONOFF(); }//end drawTicTacToe
void mousePressedTicTacToe(){ if (ONOFF_TICTACTOE) mousePressedTicTacToeONOFF(); }//end mousePressedTicTacToe
void keyPressedTicTacToe() {}//end keyPressedTicTacToe
//
void drawTicTacToeONOFF() {
  startPage(int(pauseWidth/3.5));
  TTTDrawMode();
  ticTacToeTurnX("Its Xs turn~", ";)", "Winner O");
  ticTacToeTurnO("Its Os turn~", ":)", "Winner X");
  if (checkTie() || checkWinX() || checkWinO()) gameOn = false;
  stroke(purp);
  println("tie game:", checkTie());
  println("Xs game:", checkWinX());
  println("Os game:", checkWinO());
  println("gameOn:", gameOn);
  if ( mouseX>=TTTResetX && mouseX<=TTTResetX+TTTResetWidth && mouseY>=TTTResetY && mouseY<=TTTResetY+TTTResetHeight )
  { fill(hoverOver); } else { fill(black); }
  ticTacToeResetRect("Reset Board");
  if ( mouseX>=TTTModeX && mouseX<=TTTModeX+TTTModeWidth && mouseY>=TTTModeY && mouseY<=TTTModeY+TTTModeHeight )
  { fill(hoverOver); } else if (dropDownTicTacToeModeMenu) {fill(toggleOn);} else { fill(black); }//TTTDiffX, TTTDiffY, TTTDiffWidth, TTTDiffHeight
  ticTacToeModeChangeRect("Mode");
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  { fill(hoverOver); stroke(hoverOver); } else { fill(black); stroke(black); }
  TTTMiddle(" X ", " O ");
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  { fill(hoverOver); stroke(hoverOver); } else { fill(black); stroke(black); }
  TTTMiddleTop(" X ", " O ");
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  { fill(hoverOver); stroke(hoverOver); } else { fill(black); stroke(black); }
  TTTMiddleBottom(" X ", " O ");
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  { fill(hoverOver); stroke(hoverOver); } else { fill(black); stroke(black);}
  TTTLeft(" X ", " O ");
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  { fill(hoverOver); stroke(hoverOver);  } else { fill(black); stroke(black);}
  TTTLeftTopCorner(" X ", " O ");
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  { fill(hoverOver); stroke(hoverOver);  } else { fill(black); stroke(black);}
  TTTLeftBottomCorner(" X ", " O ");
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  { fill(hoverOver); stroke(hoverOver);  } else { fill(black); stroke(black);}
  TTTRight(" X ", " O ");
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  { fill(hoverOver); stroke(hoverOver); } else { fill(black); stroke(black);}
  TTTRightTopCorner(" X ", " O ");
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  { fill(hoverOver); stroke(hoverOver); } else { fill(black); stroke(black);}
  TTTRightBottomCorner(" X ", " O ");
}//end drawTicTacToeONOFF
void mousePressedTicTacToeONOFF() {
  if (gameOn) {
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+(TTTWidth*3.3) && mouseY>=TTTY12 && mouseY<=TTTY12+(TTTHeight*3.3) )
  { if (turnXO) {turnX();} else {turnO();} } }
  if ( mouseX>=TTTResetX && mouseX<=TTTResetX+TTTResetWidth && mouseY>=TTTResetY && mouseY<=TTTResetY+TTTResetHeight )
  TTTReset();
  if ( mouseX>=TTTModeX && mouseX<=TTTModeX+TTTModeWidth && mouseY>=TTTModeY && mouseY<=TTTModeY+TTTModeHeight )
  if (dropDownTicTacToeModeMenu) {dropDownTicTacToeModeMenu = false;} else {dropDownTicTacToeModeMenu = true;}
  if (dropDownTicTacToeModeMenu) TTTMousePressedMode();
}//end mousePressedTicTacToeONOFF
void turnX() {
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  stateMiddle = 1; turnXO = false;//"O"
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  stateMiddleTop = 1; turnXO = false;//"O"
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  stateMiddleBottom = 1; turnXO = false;//"O"
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  stateLeft = 1; turnXO = false;//"O"
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  stateLeftTop = 1; turnXO = false;//"O"
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  stateLeftBottom = 1; turnXO = false;//"O"
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  stateRight = 1; turnXO = false;//"O"
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  stateRightTop = 1; turnXO = false;//"O"
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  stateRightBottom = 1; turnXO = false;//"O"
}//end turnX
void turnO() {
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  stateMiddle = 2; turnXO = true;//"X"
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  stateMiddleTop = 2; turnXO = true;//"X"
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  stateMiddleBottom = 2; turnXO = true;//"X"
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  stateLeft = 2; turnXO = true;//"X"
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  stateLeftTop = 2; turnXO = true;//"X"
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  stateLeftBottom = 2; turnXO = true;//"X"
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  stateRight = 2; turnXO = true;//"X"
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  stateRightTop = 2; turnXO = true;//"X"
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  stateRightBottom = 2; turnXO = true;//"X"
}//end turnO
void TTTReset() {
  turnXO = true;//"X"
  gameOn = true;
  stateMiddle = 0;
  stateMiddleTop = 0;
  stateMiddleBottom = 0;
  stateLeft = 0;
  stateLeftTop = 0;
  stateLeftBottom = 0;
  stateRight = 0;
  stateRightTop = 0;
  stateRightBottom = 0;
}//end TTTReset()
void TTTDrawMode() {
  if (dropDownTicTacToeModeMenu) {
    if ( mouseX>=TTTPlayWithFriendsX && mouseX<=TTTPlayWithFriendsX+TTTPlayWithFriendsWidth && mouseY>=TTTPlayWithFriendsY && mouseY<=TTTPlayWithFriendsY+TTTPlayWithFriendsHeight )
    { fill(hoverOver); } else if (playWithFriends) {fill(toggleOn);} else { fill(black); }
    ticTacToePlayWidthFriendsRect("Play With Friends");
    if ( mouseX>=TTTEasyX && mouseX<=TTTEasyX+TTTEasyWidth && mouseY>=TTTEasyY && mouseY<=TTTEasyY+TTTEasyHeight )
    { fill(hoverOver); } else if (easyAlgorithm) {fill(toggleOn);} else { fill(black); }
    ticTacToeEasyAlgorithmRect("Easy Algorithm");
    if ( mouseX>=TTTMediumX && mouseX<=TTTMediumX+TTTMediumWidth && mouseY>=TTTMediumY && mouseY<=TTTMediumY+TTTMediumHeight )
    { fill(hoverOver); } else if (mediumAlgorithm) {fill(toggleOn);} else { fill(black); }
    ticTacToeMediumAlgorithmRect("Medium Algorithm");
    if ( mouseX>=TTTImpossibleX && mouseX<=TTTImpossibleX+TTTImposibleWidth && mouseY>=TTTImpossibleY && mouseY<=TTTImpossibleY+TTTimpossibleHeight )
    { fill(hoverOver); } else if (impossibleAlgorithm) {fill(toggleOn);} else { fill(black); }
    ticTacToeImpossibleAlgorithmRect("Impossible Algorithm");
  }
}//end TTTDrawMode
void TTTMousePressedMode() {
  if ( mouseX>=TTTPlayWithFriendsX && mouseX<=TTTPlayWithFriendsX+TTTPlayWithFriendsWidth && mouseY>=TTTPlayWithFriendsY && mouseY<=TTTPlayWithFriendsY+TTTPlayWithFriendsHeight )
  if (playWithFriends) { 
  } else { playWithFriends = true; easyAlgorithm = false; mediumAlgorithm = false; impossibleAlgorithm = false; }
  if ( mouseX>=TTTEasyX && mouseX<=TTTEasyX+TTTEasyWidth && mouseY>=TTTEasyY && mouseY<=TTTEasyY+TTTEasyHeight )
  if (easyAlgorithm) {easyAlgorithm = false; playWithFriends = true;}
  else { playWithFriends = false; easyAlgorithm = true; mediumAlgorithm = false; impossibleAlgorithm = false; }
  if ( mouseX>=TTTMediumX && mouseX<=TTTMediumX+TTTMediumWidth && mouseY>=TTTMediumY && mouseY<=TTTMediumY+TTTMediumHeight )
  if (mediumAlgorithm) {mediumAlgorithm = false; playWithFriends = true;}
  else { playWithFriends = false; easyAlgorithm = false; mediumAlgorithm = true; impossibleAlgorithm = false; }
  if ( mouseX>=TTTImpossibleX && mouseX<=TTTImpossibleX+TTTImposibleWidth && mouseY>=TTTImpossibleY && mouseY<=TTTImpossibleY+TTTimpossibleHeight )
  if (impossibleAlgorithm) {impossibleAlgorithm = false; playWithFriends = true;}
  else { playWithFriends = false; easyAlgorithm = false; mediumAlgorithm = false; impossibleAlgorithm = true; }
}//end TTTMousePressedMode
boolean checkWinX() {
  // Check rows
  if (stateMiddle == stateMiddleTop && stateMiddleBottom == stateMiddleTop && stateMiddleBottom == 1)
    return true;
  if (stateLeft == stateLeftTop && stateLeftBottom == stateLeftTop && stateLeftBottom ==1)
    return true;
  if (stateRight == stateRightTop && stateRightBottom== stateRightTop && stateRightBottom == 1)
    return true;
  // Check columns
  if (stateMiddle == stateLeft && stateRight== stateLeft && stateRight== 1)
    return true;
  if (stateMiddleTop == stateLeftTop && stateRightTop== stateLeftTop && stateRightTop == 1)
    return true;
  if (stateMiddleBottom == stateLeftBottom && stateRightBottom== stateLeftBottom && stateRightBottom == 1)
    return true;
  // Check diagonals
  if (stateMiddle == stateLeftTop && stateRightBottom  == stateLeftTop && stateRightBottom == 1)
    return true;
  if (stateMiddle == stateRightTop && stateLeftBottom== stateRightTop && stateLeftBottom == 1)
    return true;
  return false;//defult false
}//end checkWinX
boolean checkWinO() {
  // Check rows
  if (stateMiddle == stateMiddleTop && stateMiddleBottom== stateMiddleTop && stateMiddleBottom == 2)
    return true;
  if (stateLeft == stateLeftTop && stateLeftBottom== stateLeftTop && stateLeftBottom  ==2)
    return true;
  if (stateRight == stateRightTop && stateRightBottom == stateRightTop && stateRightBottom == 2)
    return true;
  // Check columns
  if (stateMiddle == stateLeft && stateRight == stateLeft && stateRight== 2)
    return true;
  if (stateMiddleTop == stateLeftTop && stateRightTop== stateLeftTop && stateRightTop == 2)
    return true;
  if (stateMiddleBottom == stateLeftBottom && stateRightBottom== stateLeftBottom && stateRightBottom == 2)
    return true;
  // Check diagonals
  if (stateMiddle == stateLeftTop && stateRightBottom== stateLeftTop && stateRightBottom == 2)
    return true;
  if (stateMiddle == stateRightTop && stateLeftBottom == stateRightTop && stateLeftBottom == 2)
    return true;
  return false;//defult false
}//end checkWinX
boolean checkTie() {
  if (checkWinO() || checkWinX()) {
  } else {
    if (stateMiddle != 0 &&
    stateMiddleTop != 0 &&
    stateMiddleBottom != 0 &&
    stateLeft != 0 &&
    stateLeftTop != 0 &&
    stateLeftBottom != 0 &&
    stateRight != 0 &&
    stateRightTop != 0 &&
    stateRightBottom != 0) return true; 
  } return false;
}//end checkTie
//end TicTacToe subProgram
