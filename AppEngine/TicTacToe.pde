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
    } else {
      cell[row][colemn] = 2; //O
      turnXO = true; //X
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
  if (checkWinX() || checkWinO()) { //empty if
  } else {
    if (easyAlgorithm) easyAlgorithm();
    if (mediumAlgorithm) mediumAlgorithm(0, -1, -1);
    if (impossibleAlgorithm) impossibleAlgorithm(0, -1, -1);
  }
}
void TTTReset() {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      cell[i][j] = 0;
    }
  }
  turnXO = true; gameOn = true;
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
  } else { playWithFriends = true; TTTReset(); easyAlgorithm = false; mediumAlgorithm = false; impossibleAlgorithm = false; }
  if ( mouseX>=TTTEasyX && mouseX<=TTTEasyX+TTTEasyWidth && mouseY>=TTTEasyY && mouseY<=TTTEasyY+TTTEasyHeight )
  if (easyAlgorithm) {easyAlgorithm = false; playWithFriends = true; TTTReset();}
  else { playWithFriends = false; easyAlgorithm = true; TTTReset(); mediumAlgorithm = false; impossibleAlgorithm = false; }
  if ( mouseX>=TTTMediumX && mouseX<=TTTMediumX+TTTMediumWidth && mouseY>=TTTMediumY && mouseY<=TTTMediumY+TTTMediumHeight )
  if (mediumAlgorithm) {mediumAlgorithm = false; playWithFriends = true; TTTReset();}
  else { playWithFriends = false; easyAlgorithm = false; mediumAlgorithm = true; TTTReset(); impossibleAlgorithm = false; }
  if ( mouseX>=TTTImpossibleX && mouseX<=TTTImpossibleX+TTTImposibleWidth && mouseY>=TTTImpossibleY && mouseY<=TTTImpossibleY+TTTimpossibleHeight )
  if (impossibleAlgorithm) {impossibleAlgorithm = false; playWithFriends = true; TTTReset();}
  else { playWithFriends = false; easyAlgorithm = false; mediumAlgorithm = false; impossibleAlgorithm = true; TTTReset(); }
}//end TTTMousePressedMode
boolean checkWinX() { return checkWin(1); }//end checkWinX
boolean checkWinO() { return checkWin(2); }//end checkWinO
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
void easyAlgorithm() {
  if (turnXO == false) {
    randomMoveAlgorithm();
  }
}//end easyAlgorithm
void mediumAlgorithm(int cellEmpty, int rowEmpty, int columnEmpty) {
  if (turnXO == false) {
    for (int i = 0; i < 3; i++) {//rows
      for (int j = 0; j < 3; j++) {//columns
        if (cell[i][j] == 0) {//check for empty cells
          cellEmpty++;//find
          rowEmpty = i;
          columnEmpty = j;
          claimCell(i, j);//claims winning cell
          if (checkWinO()) {
            turnXO = true;//X
            return;//claims when winning cell found
          } cell[i][j] = 0;//resets test
        }
      }
    }
    for (int r = 0; r < 3; r++) {//rows
      for (int c = 0; c < 3; c++) {//columns
        if (cell[r][c] == 0) {
          cellEmpty++;
          rowEmpty = r;
          columnEmpty = c;
          cell[r][c] = 1;//test
          if (checkWinX()) {
            cell[r][c] = 2;//block X
            turnXO = true;
            return;
          } cell[r][c] = 0;//reset test
        }
      }
    }
    randomMoveAlgorithm();
  }
}//end mediumAlgorithm
void randomMoveAlgorithm() {
  if (turnXO == false) {
    for (int i = 0; i < 3; i++) {//nested loop
      for (int j = 0; j < 3; j++) {//i and j recognizes rows and columns
        if (cell[i][j] == 0) {//check for unclaimed cells
          boolean done = false;//random move
          while (!done) {
            int i1 = int(random(3));//random row
            int j1 = int(random(3));//random column
            if (cell[i1][j1] == 0) {
              claimCell(i1, j1);//picks the cell
              done = true;
            }
          } return;//ends turn
        }
      }
    }
  }
}//end randomMoveAlgorithm
void sideCellAlgorithm() {
  int[] sideCellsRow = {1, 2}; // Indices of the side cells in the cell array
  int[] sideCellsColumn = {1, 2};
  // Randomly select a side cell
  int randomIndexRow = int(random(sideCellsRow.length));
  int randomIndexColumn = int(random(sideCellsColumn.length));
  int selectedCellRow = sideCellsRow[randomIndexRow];
  int selectedCellColumn = sideCellsColumn[randomIndexColumn];
  float rand = int(random(3));
  if (rand != 1) {
    claimCell(selectedCellRow, 0); return;
  } else claimCell(0, selectedCellColumn); return;
}//end sideCellAlgorithm
void cornerCellAlgorithm() {
  int[] cornerCellsRow = {1, 2}; // Indices of the side cells in the cell array
  int[] cornerCellsColumn = {1, 2};
  // Randomly select a side cell
  int randomIndexRow = int(random(cornerCellsRow.length));
  int randomIndexColumn = int(random(cornerCellsColumn.length));
  int selectedCellRow = cornerCellsRow[randomIndexRow];
  int selectedCellColumn = cornerCellsColumn[randomIndexColumn];
  claimCell(selectedCellRow, selectedCellColumn);
}//end sideCellAlgorithm
void impossibleAlgorithm(int cellEmpty, int rowEmpty, int columnEmpty) {
  if (turnXO == false) {
    for (int i = 0; i < 3; i++) {//rows
      for (int j = 0; j < 3; j++) {//columns
        if (cell[i][j] == 0) {//check for empty cells
          cellEmpty++;//find
          rowEmpty = i;
          columnEmpty = j;
          cell[i][j] = 2;
          if (checkWinO()) {
            claimCell(i, j);//claims winning cell
            turnXO = true;//X
            return;//claims when winning cell found
          } cell[i][j] = 0;//resets test
        }
      }
    }
    for (int r = 0; r < 3; r++) {//rows
      for (int c = 0; c < 3; c++) {//columns
        if (cell[r][c] == 0) {
          cellEmpty++;
          rowEmpty = r;
          columnEmpty = c;
          cell[r][c] = 1;//test
          if (checkWinX()) {
            cell[r][c] = 2;//block X
            turnXO = true;
            return;
          } cell[r][c] = 0;//reset test
        }
      }
    } 
    if (cell[0][0] == 0) { claimCell(0, 0); }
    else if (cell[0][0] == 1) cornerCellAlgorithm();
    else if (cell[0][0] == 2) sideCellAlgorithm(); 
    randomMoveAlgorithm();
  }
}//end impossibleAlgorithm
//end TicTacToe subProgram
