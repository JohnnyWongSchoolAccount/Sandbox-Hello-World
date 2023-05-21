//Global Variables
boolean ONOFF_TICTACTOE = false;
//{0 = 'noting'}, { 1 = 'X'}, { 2 = 'O'} STATE
int cell[][] = new int[3][3];
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
  ticTacToeTurnX("Its Xs turn~", ";)", "Winner O", "Tie Game");
  ticTacToeTurnO("Its Os turn~", ":)", "Winner X", "Tie Game");
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
void claimCell(int row, int col) {
  if (cell[row][col] == 0) {
    if (turnXO) {
      cell[row][col] = 1; // Claimed by X
      turnXO = false; // Switch turn to O
    } else {
      cell[row][col] = 2; // Claimed by O
      turnXO = true; // Switch turn to X
    }
  }
}//end claimCell
void claimedCells() {
  println("Claimed Cells:");
  for (int i = 0; i < 3; i++) {//interperates the columns
    for (int j = 0; j < 3; j++) {//interperates the rows
      if (cell[i][j] == 1) {
        println("Cell[" + i + "][" + j + "]: X");
      } else if (cell[i][j] == 2) {
        println("Cell[" + i + "][" + j + "]: O");
      }
    }
  }
}//end ClaimedCells
void turnX() {
  if (mouseX >= TTTX1 && mouseX <= TTTX1 + TTTWidth && mouseY >= TTTY1 && mouseY <= TTTY1 + TTTHeight)
    claimCell(0, 0);
  if (mouseX >= TTTX1 && mouseX <= TTTX1 + TTTWidth && mouseY >= TTTY11 && mouseY <= TTTY11 + TTTHeight)
    claimCell(0, 1);
  if (mouseX >= TTTX1 && mouseX <= TTTX1 + TTTWidth && mouseY >= TTTY12 && mouseY <= TTTY12 + TTTHeight)
    claimCell(0, 2);
  if (mouseX >= TTTX11 && mouseX <= TTTX11 + TTTWidth && mouseY >= TTTY1 && mouseY <= TTTY1 + TTTHeight)
    claimCell(1, 0);
  if (mouseX >= TTTX11 && mouseX <= TTTX11 + TTTWidth && mouseY >= TTTY11 && mouseY <= TTTY11 + TTTHeight)
    claimCell(1, 1);
  if (mouseX >= TTTX11 && mouseX <= TTTX11 + TTTWidth && mouseY >= TTTY12 && mouseY <= TTTY12 + TTTHeight)
    claimCell(1, 2);
  if (mouseX >= TTTX12 && mouseX <= TTTX12 + TTTWidth && mouseY >= TTTY1 && mouseY <= TTTY1 + TTTHeight)
    claimCell(2, 0);
  if (mouseX >= TTTX12 && mouseX <= TTTX12 + TTTWidth && mouseY >= TTTY11 && mouseY <= TTTY11 + TTTHeight)
    claimCell(2, 1);
  if (mouseX >= TTTX12 && mouseX <= TTTX12 + TTTWidth && mouseY >= TTTY12 && mouseY <= TTTY12 + TTTHeight)
    claimCell(2, 2);
  easyAlgorithm(0);
}
void turnO() {
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  claimCell(0, 0);
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  claimCell(0, 1);
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  claimCell(0, 2);
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  claimCell(1, 0);
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  claimCell(1, 1);
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  claimCell(1, 2);
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  claimCell(2, 0);
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  claimCell(2, 1);
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  claimCell(2, 2);
}//end turnO
void TTTReset() {
  turnXO = true;  //"X"
  gameOn = true;
  cell[0][0] = 0;
  cell[0][1] = 0;
  cell[0][2] = 0;
  cell[1][0] = 0;
  cell[1][1] = 0;
  cell[1][2] = 0;
  cell[2][0] = 0;
  cell[2][1] = 0;
  cell[2][2] = 0;
}//end TTTReset
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
  if (cell[0][0] == cell[0][1] && cell[0][2] == cell[0][1] && cell[0][2] == 1)
    return true;
  if (cell[1][0] == cell[1][1] && cell[1][2] == cell[1][1] && cell[1][2] ==1)
    return true;
  if (cell[2][0] == cell[2][1] && cell[2][2]== cell[2][1] && cell[2][2] == 1)
    return true;
  // Check columns
  if (cell[0][0] == cell[1][0] && cell[2][0]== cell[1][0] && cell[2][0]== 1)
    return true;
  if (cell[0][1] == cell[1][1] && cell[2][1]== cell[1][1] && cell[2][1] == 1)
    return true;
  if (cell[0][2] == cell[1][2] && cell[2][2]== cell[1][2] && cell[2][2] == 1)
    return true;
  // Check diagonals
  if (cell[0][0] == cell[1][1] && cell[2][2]  == cell[1][1] && cell[2][2] == 1)
    return true;
  if (cell[0][0] == cell[2][1] && cell[1][2]== cell[2][1] && cell[1][2] == 1)
    return true;
  return false;//defult false
}//end checkWinX
boolean checkWinO() {
  // Check rows
  if (cell[0][0] == cell[0][1] && cell[0][2]== cell[0][1] && cell[0][2] == 2)
    return true;
  if (cell[1][0] == cell[1][1] && cell[1][2]== cell[1][1] && cell[1][2]  ==2)
    return true;
  if (cell[2][0] == cell[2][1] && cell[2][2] == cell[2][1] && cell[2][2] == 2)
    return true;
  // Check columns
  if (cell[0][0] == cell[1][0] && cell[2][0] == cell[1][0] && cell[2][0]== 2)
    return true;
  if (cell[0][1] == cell[1][1] && cell[2][1]== cell[1][1] && cell[2][1] == 2)
    return true;
  if (cell[0][2] == cell[1][2] && cell[2][2]== cell[1][2] && cell[2][2] == 2)
    return true;
  // Check diagonals
  if (cell[0][0] == cell[1][1] && cell[2][2]== cell[1][1] && cell[2][2] == 2)
    return true;
  if (cell[0][0] == cell[2][1] && cell[1][2] == cell[2][1] && cell[1][2] == 2)
    return true;
  return false;//defult false
}//end checkWinX
boolean checkTie() {
  if (checkWinO() || checkWinX()) {
  } else {
    if (cell[0][0] != 0 &&
    cell[0][1] != 0 &&
    cell[0][2] != 0 &&
    cell[1][0] != 0 &&
    cell[1][1] != 0 &&
    cell[1][2] != 0 &&
    cell[2][0] != 0 &&
    cell[2][1] != 0 &&
    cell[2][2] != 0) return true; 
  } return false;
}//end checkTie
void easyAlgorithm(float rand) {
  if (easyAlgorithm) {
    if (turnXO == false) {
      rand = random(1,9);
      for (int i = 0; i < 3; i++) {//nested loop
        for (int j = 0; j < 3; j++) {//i interperates the columns j for rows
          while (rand == cell[i][j]) {
            rand = random(1,9);
          }
        }
      }
      if (int(rand) == 1) claimCell(0, 0);
      if (int(rand) == 2) claimCell(0, 1);
      if (int(rand) == 3) claimCell(0, 2);
      if (int(rand) == 4) claimCell(1, 0);
      if (int(rand) == 5) claimCell(1, 1);
      if (int(rand) == 6) claimCell(1, 2);
      if (int(rand) == 7) claimCell(2, 0);
      if (int(rand) == 8) claimCell(2, 1);
      if (int(rand) == 9) claimCell(2, 2);
      turnXO = true; //X
    }
  } else {}//empty if
}//end easyAlgorithm
//end TicTacToe subProgram
