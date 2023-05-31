//Global Variables
boolean ONOFF_TICTACTOE = false;
//{0 = 'noting'}, { 1 = 'X'}, { 2 = 'O'} STATE
int cell[][] = new int[3][3];
//{turnXO = false = O} {turnXO = true = X}
int scoreX = 0, scoreO = 0;
String textScoreX = "0", textScoreO = "0";
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
  ticTacToeTurn("Its Xs turn~", "Its Os turn~", "Winner X", "Winner O", "Tie Game");
  ticTacToeScoreBoard(" - ");
  if (checkTie() || checkWinX() || checkWinO()) { scoreKeeper(); gameOn = false;}
  stroke(purp);
  /*println("tie game:", checkTie());
  println("Xs game:", checkWinX());
  println("Os game:", checkWinO());
  println("gameOn:", gameOn);*/
  println(turnPlayed);
  println(depth);
  if ( mouseX>=TTTResetX && mouseX<=TTTResetX+TTTResetWidth && mouseY>=TTTResetY && mouseY<=TTTResetY+TTTResetHeight )
  { fill(hoverOver); } else { fill(black); }
  ticTacToeResetRect("Reset Board");
  if ( mouseX>=TTTModeX && mouseX<=TTTModeX+TTTModeWidth && mouseY>=TTTModeY && mouseY<=TTTModeY+TTTModeHeight )
  { fill(hoverOver); } else if (dropDownTicTacToeModeMenu) {fill(toggleOn);} else { fill(black); }//TTTDiffX, TTTDiffY, TTTDiffWidth, TTTDiffHeight
  ticTacToeModeChangeRect("Mode");
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  { fill(hoverOver); stroke(hoverOver); } else { fill(black); stroke(black); }
  TTTMiddle(" X ", " O ");//cell[0][0]
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  { fill(hoverOver); stroke(hoverOver); } else { fill(black); stroke(black); }
  TTTMiddleTop(" X ", " O ");//cell[0][1]
  if ( mouseX>=TTTX1 && mouseX<=TTTX1+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  { fill(hoverOver); stroke(hoverOver); } else { fill(black); stroke(black); }
  TTTMiddleBottom(" X ", " O ");//cell[0][2]
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  { fill(hoverOver); stroke(hoverOver); } else { fill(black); stroke(black);}
  TTTLeft(" X ", " O ");//cell[1][0]
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  { fill(hoverOver); stroke(hoverOver);  } else { fill(black); stroke(black);}
  TTTLeftTopCorner(" X ", " O ");//cell[1][1]
  if ( mouseX>=TTTX11 && mouseX<=TTTX11+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  { fill(hoverOver); stroke(hoverOver);  } else { fill(black); stroke(black);}
  TTTLeftBottomCorner(" X ", " O ");//cell[1][2]
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY1 && mouseY<=TTTY1+TTTHeight )
  { fill(hoverOver); stroke(hoverOver);  } else { fill(black); stroke(black);}
  TTTRight(" X ", " O ");//cell[2][0]
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY11 && mouseY<=TTTY11+TTTHeight )
  { fill(hoverOver); stroke(hoverOver); } else { fill(black); stroke(black);}
  TTTRightTopCorner(" X ", " O ");//cell[2][1]
  if ( mouseX>=TTTX12 && mouseX<=TTTX12+TTTWidth && mouseY>=TTTY12 && mouseY<=TTTY12+TTTHeight )
  { fill(hoverOver); stroke(hoverOver); } else { fill(black); stroke(black);}
  TTTRightBottomCorner(" X ", " O ");//cell[2][2]
}//end drawTicTacToeONOFF
void mousePressedTicTacToeONOFF() {
  if (gameOn) turn();
  if ( mouseX>=TTTResetX && mouseX<=TTTResetX+TTTResetWidth && mouseY>=TTTResetY && mouseY<=TTTResetY+TTTResetHeight )
  TTTReset();
  if ( mouseX>=TTTModeX && mouseX<=TTTModeX+TTTModeWidth && mouseY>=TTTModeY && mouseY<=TTTModeY+TTTModeHeight )
  if (dropDownTicTacToeModeMenu) dropDownTicTacToeModeMenu = false; else dropDownTicTacToeModeMenu = true;
  if (dropDownTicTacToeModeMenu) TTTMousePressedMode();
}//end mousePressedTicTacToeONOFF
void claimCell(int row, int colemn) {
  if (cell[row][colemn] == 0) {
    if (turnXO) {
      cell[row][colemn] = 1; //X
      turnXO = false; //O
      depth++;
    } else {
      cell[row][colemn] = 2; //O
      turnXO = true; //X
      depth++;
    }
  }
}//end claimCell
void turn() {
  if (mouseX >= TTTX1 && mouseX <= TTTX1 + TTTWidth && mouseY >= TTTY1 && mouseY <= TTTY1 + TTTHeight)
    claimCell(0, 0);//middle
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
  if (checkWinX() || checkWinO() || checkTie()) { //empty if
  } else {
    if (easyAlgorithm) easyAlgorithm();
    if (mediumAlgorithm) mediumAlgorithm();
    if (impossibleAlgorithm) impossibleAlgorithm();
  }
}
void TTTReset() {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      cell[i][j] = 0;
    }
  }
  turnXO = true; gameOn = true; depth = 0;
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
  { scoreX = 0; scoreO = 0; textScoreX = "0"; textScoreO = "0";
    if (playWithFriends) {}
    else { playWithFriends = true; TTTReset(); easyAlgorithm = false; mediumAlgorithm = false; impossibleAlgorithm = false;}
  }//playWithFriendsMousPressed
  if ( mouseX>=TTTEasyX && mouseX<=TTTEasyX+TTTEasyWidth && mouseY>=TTTEasyY && mouseY<=TTTEasyY+TTTEasyHeight )
  { scoreX = 0; scoreO = 0; textScoreX = "0"; textScoreO = "0";
    if (easyAlgorithm) {easyAlgorithm = false; playWithFriends = true; TTTReset();}
    else { playWithFriends = false; easyAlgorithm = true; TTTReset(); mediumAlgorithm = false; impossibleAlgorithm = false; }
  }
  if ( mouseX>=TTTMediumX && mouseX<=TTTMediumX+TTTMediumWidth && mouseY>=TTTMediumY && mouseY<=TTTMediumY+TTTMediumHeight )
  { scoreX = 0; scoreO = 0; textScoreX = "0"; textScoreO = "0";
  if (mediumAlgorithm) {mediumAlgorithm = false; playWithFriends = true; TTTReset();}
  else { playWithFriends = false; easyAlgorithm = false; mediumAlgorithm = true; TTTReset(); impossibleAlgorithm = false; }
  }
  if ( mouseX>=TTTImpossibleX && mouseX<=TTTImpossibleX+TTTImposibleWidth && mouseY>=TTTImpossibleY && mouseY<=TTTImpossibleY+TTTimpossibleHeight )
  { scoreX = 0; scoreO = 0; textScoreX = "0"; textScoreO = "0";
  if (impossibleAlgorithm) {impossibleAlgorithm = false; playWithFriends = true; TTTReset();}
  else { playWithFriends = false; easyAlgorithm = false; mediumAlgorithm = false; impossibleAlgorithm = true; TTTReset(); }
  }
}//end TTTMousePressedMode
boolean checkWinX() { 
  return checkWin(1); 
}//end checkWinX
boolean checkWinO() { 
  return checkWin(2); 
}//end checkWinO
boolean checkWin(int XO) {
  if (cell[1][0] == XO && cell[1][1] == XO && cell[1][2] == XO) return true;//columns
  if (cell[2][0] == XO && cell[2][1] == XO && cell[2][2] == XO) return true;//columns
  if (cell[0][0] == XO && cell[0][1] == XO && cell[0][2] == XO) return true;//columns
  if (cell[0][0] == XO && cell[1][0] == XO && cell[2][0] == XO) return true;//rows
  if (cell[0][1] == XO && cell[1][1] == XO && cell[2][1] == XO) return true;//rows
  if (cell[0][2] == XO && cell[1][2] == XO && cell[2][2] == XO) return true;//rows
  if (cell[0][0] == XO && cell[1][1] == XO && cell[2][2] == XO) return true;//diagonals
  if (cell[0][0] == XO && cell[2][1] == XO && cell[1][2] == XO) return true;//diagonals
  return false;//default
}//end checkWinXO
void scoreKeeper() {
  if (gameOn) {
    if (checkWinO()) scoreO++;
    if (checkWinX()) scoreX++;
    textScoreO = String.valueOf(scoreO);
    textScoreX = String.valueOf(scoreX);
  } else {}
}//scoreKeeper 
boolean checkTie() {
  if (checkWinX() || checkWinO()) {
    return false;//defalt
  } else {
    for (int i = 0; i < 3;i++) {//checks rows
      for (int j = 0; j < 3; j++) {//checks columns
        if (cell[i][j] == 0) return false;//default
      }
    } return true;
  }
}
void randomAlgorithm() {
  if (turnXO == false) {
    boolean done = false;
    while (done == false) {
      int i = int(random(3));
      int j = int(random(3));
      if (cell[i][j] == 0) {
        claimCell(i, j);//claim cell
        done = true;
     }
   } return;
 }
}//end randomAlgorithm
void blockSmallTriangleAlgorithm() {
  if (cell[1][0] == 1 && cell[0][2] == 1) claimCell(1, 2);
  else if (cell[1][0] == 1 && cell[0][1] == 1) claimCell(1, 1);
  else if (cell[0][1] == 1 && cell[2][0] == 1) claimCell(2, 1);
  else if (cell[2][0] == 1 && cell[0][2] == 1) claimCell(2, 2);
  else cornerCellAlgorithm();
}//end blockSmallTriangleAlgorithm
void sideCellAlgorithm() {
  int[] sideCellsRow = {1, 2}; // Indices of the side cells in the cell array
  int[] sideCellsColumn = {1, 2};
  boolean done = false;
  while (done == false) {
    // Randomly select a side cell
    int randomIndexRow = int(random(sideCellsRow.length));
    int randomIndexColumn = int(random(sideCellsColumn.length));
    int selectedCellRow = sideCellsRow[randomIndexRow];
    int selectedCellColumn = sideCellsColumn[randomIndexColumn];
    if (cell[selectedCellRow][0] == 0 || cell[0][selectedCellColumn] == 0) {
      if (cell[selectedCellRow][0] == 0) {
        claimCell(selectedCellRow, 0);
        done = true;
        return;
      }
      if (cell[0][selectedCellColumn] == 0) {
        claimCell(0, selectedCellColumn); 
        done = true;
        return;
      }
    }
  }
}//end sideCellAlgorithm
void cornerCellAlgorithm() {
  int[] cornerCellsRow = {1, 2}; // Indices of the side cells in the cell array
  int[] cornerCellsColumn = {1, 2};
  boolean done = false;
  while (done == false) {
    int randomIndexRow = int(random(cornerCellsRow.length));
    int randomIndexColumn = int(random(cornerCellsColumn.length));
    int selectedCellRow = cornerCellsRow[randomIndexRow];
    int selectedCellColumn = cornerCellsColumn[randomIndexColumn];
    if (cell[selectedCellRow][selectedCellColumn] == 0) {
      claimCell(selectedCellRow, selectedCellColumn);
      done = true;
    }
  } return;
}//end sideCellAlgorithm
void mediumAlgorithm() {
  if (turnXO == false) {
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (cell[i][j] == 0) {
          cell[i][j] = 2;
          if (checkWinO()) {
            claimCell(i, j);
            turnXO = true;
            return;
          }
          cell[i][j] = 0;
        }
      }
    }
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (cell[i][j] == 0) {
          cell[i][j] = 1;
          if (checkWinX()) {
            cell[i][j] = 2;
            turnXO = true;
            return;
          }
          cell[i][j] = 0;
        }
      }
    }
    randomAlgorithm();
  }
}//end mediumAlgorithm
void easyAlgorithm() {
  if (turnXO == false) {
    randomAlgorithm();
  }
}//end easyAlgorithm
boolean turnPlayed = false;
int depth = 0;
void impossibleAlgorithm() {
  if (turnXO == false) {
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (cell[i][j] == 0) {
          cell[i][j] = 2;
          if (checkWinO()) {
            claimCell(i, j);
            turnXO = true;
            return; 
          }
          cell[i][j] = 0;
        }
      }
    }
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (cell[i][j] == 0) {
          cell[i][j] = 1;
          if (checkWinX()) {
            cell[i][j] = 2;
            turnXO = true;
            return;
          }
          cell[i][j] = 0;
        }
      }
    }
    if (turnPlayed == false) {
      if (cell[0][0] == 2) {
        if (depth == 3) {
          if (cell[1][0] == 1 || cell[2][0] == 1 || cell[0][2] == 1 || cell[0][1] == 1) {
            blockSmallTriangleAlgorithm();
            return;
          }
          if (cell[1][1] == 1 || cell[2][2] == 1 || cell[1][2] == 1 || cell[2][1] == 1) {
            sideCellAlgorithm(); 
            return;
          }
          cornerCellAlgorithm(); return;
        }
      }
      if (cell[0][0] == 0) {
        claimCell(0, 0); 
        return;
      } else if (cell[1][1] == 0 || cell[2][2] == 0 || cell[1][2] == 0 || cell[2][1] == 0 ) {
        cornerCellAlgorithm(); 
        return;
      } else {
        randomAlgorithm(); 
        return;
      }
    }
  }
}//end impossibleAlgorithm
//end TicTacToe subProgram
