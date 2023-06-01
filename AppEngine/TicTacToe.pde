//Global Variables
boolean ONOFF_TICTACTOE = false;//setting default - tictactoe OFF
//{0 = 'noting'}, { 1 = 'X'}, { 2 = 'O'} STATES
int cell[][] = new int[3][3];//2D array
//{turnXO = false = O} {turnXO = true = X}
int scoreX = 0, scoreO = 0;//scoreboard
int depth = 0;//the turns played - > game tree depth
String textScoreX = "0", textScoreO = "0";//scoreboard
boolean turnXO = true;//"X"
boolean gameOn = true;//if the game can be played or not
boolean dropDownTicTacToeModeMenu = false;//drop down menu for modes
boolean playWithFriends = true;//no algorithm on by default
boolean easyAlgorithm = false;//easy algorithm
boolean mediumAlgorithm = false;//medium algorithm
boolean impossibleAlgorithm = false;//impossible algorithm
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
  if (cell[row][colemn] == 0) {//claim only when empty
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
    claimCell(0, 1);//middle top
  if (mouseX >= TTTX1 && mouseX <= TTTX1 + TTTWidth && mouseY >= TTTY12 && mouseY <= TTTY12 + TTTHeight)
    claimCell(0, 2);//middle bottom
  if (mouseX >= TTTX11 && mouseX <= TTTX11 + TTTWidth && mouseY >= TTTY1 && mouseY <= TTTY1 + TTTHeight)
    claimCell(1, 0);//left
  if (mouseX >= TTTX11 && mouseX <= TTTX11 + TTTWidth && mouseY >= TTTY11 && mouseY <= TTTY11 + TTTHeight)
    claimCell(1, 1);//left up
  if (mouseX >= TTTX11 && mouseX <= TTTX11 + TTTWidth && mouseY >= TTTY12 && mouseY <= TTTY12 + TTTHeight)
    claimCell(1, 2);//left down
  if (mouseX >= TTTX12 && mouseX <= TTTX12 + TTTWidth && mouseY >= TTTY1 && mouseY <= TTTY1 + TTTHeight)
    claimCell(2, 0);//right
  if (mouseX >= TTTX12 && mouseX <= TTTX12 + TTTWidth && mouseY >= TTTY11 && mouseY <= TTTY11 + TTTHeight)
    claimCell(2, 1);//right up
  if (mouseX >= TTTX12 && mouseX <= TTTX12 + TTTWidth && mouseY >= TTTY12 && mouseY <= TTTY12 + TTTHeight)
    claimCell(2, 2);//right down
  if (checkWinX() || checkWinO() || checkTie()) { //empty if
  } else {//prevents algorithms from running after game ends
    if (easyAlgorithm) easyAlgorithm();
    if (mediumAlgorithm) mediumAlgorithm();
    if (impossibleAlgorithm) impossibleAlgorithm();
  }
}//end turn
void TTTReset() {
  for (int row = 0; row < 3; row++) {
    for (int column = 0; column < 3; column++) {
      cell[row][column] = 0;//clears all cells
    }
  }
  turnXO = true;//X first turn
  gameOn = true;//turns game on
  depth = 0;//resets the game tree depth int
}//end TTTReset
void TTTDrawMode() {//mode menu drop down
  if (dropDownTicTacToeModeMenu) {//buttons
    if ( mouseX>=TTTPlayWithFriendsX && mouseX<=TTTPlayWithFriendsX+TTTPlayWithFriendsWidth && mouseY>=TTTPlayWithFriendsY && mouseY<=TTTPlayWithFriendsY+TTTPlayWithFriendsHeight )
    { fill(hoverOver); } else if (playWithFriends) {fill(toggleOn);} else { fill(black); }
    ticTacToePlayWidthFriendsRect("Play With Friends"); //play with friends mode
    if ( mouseX>=TTTEasyX && mouseX<=TTTEasyX+TTTEasyWidth && mouseY>=TTTEasyY && mouseY<=TTTEasyY+TTTEasyHeight )
    { fill(hoverOver); } else if (easyAlgorithm) {fill(toggleOn);} else { fill(black); }
    ticTacToeEasyAlgorithmRect("Easy Algorithm");//easy algorithm mode
    if ( mouseX>=TTTMediumX && mouseX<=TTTMediumX+TTTMediumWidth && mouseY>=TTTMediumY && mouseY<=TTTMediumY+TTTMediumHeight )
    { fill(hoverOver); } else if (mediumAlgorithm) {fill(toggleOn);} else { fill(black); }
    ticTacToeMediumAlgorithmRect("Medium Algorithm");//medium algorithm mode
    if ( mouseX>=TTTImpossibleX && mouseX<=TTTImpossibleX+TTTImposibleWidth && mouseY>=TTTImpossibleY && mouseY<=TTTImpossibleY+TTTimpossibleHeight )
    { fill(hoverOver); } else if (impossibleAlgorithm) {fill(toggleOn);} else { fill(black); }
    ticTacToeImpossibleAlgorithmRect("Impossible Algorithm");//impossible algorithm mode
  }
}//end TTTDrawMode
void TTTMousePressedMode() {
  if ( mouseX>=TTTPlayWithFriendsX && mouseX<=TTTPlayWithFriendsX+TTTPlayWithFriendsWidth && mouseY>=TTTPlayWithFriendsY && mouseY<=TTTPlayWithFriendsY+TTTPlayWithFriendsHeight )
  { scoreX = 0; scoreO = 0; textScoreX = "0"; textScoreO = "0";
    if (playWithFriends) {}//defult is play with friends
    else { playWithFriends = true; TTTReset(); easyAlgorithm = false; mediumAlgorithm = false; impossibleAlgorithm = false;}
  }//turns play With friends on and off
  if ( mouseX>=TTTEasyX && mouseX<=TTTEasyX+TTTEasyWidth && mouseY>=TTTEasyY && mouseY<=TTTEasyY+TTTEasyHeight )
  { scoreX = 0; scoreO = 0; textScoreX = "0"; textScoreO = "0";
    if (easyAlgorithm) {easyAlgorithm = false; playWithFriends = true; TTTReset();}
    else { playWithFriends = false; easyAlgorithm = true; TTTReset(); mediumAlgorithm = false; impossibleAlgorithm = false; }
  }//turns easy algorithm on and off
  if ( mouseX>=TTTMediumX && mouseX<=TTTMediumX+TTTMediumWidth && mouseY>=TTTMediumY && mouseY<=TTTMediumY+TTTMediumHeight )
  { scoreX = 0; scoreO = 0; textScoreX = "0"; textScoreO = "0";
  if (mediumAlgorithm) {mediumAlgorithm = false; playWithFriends = true; TTTReset();}
  else { playWithFriends = false; easyAlgorithm = false; mediumAlgorithm = true; TTTReset(); impossibleAlgorithm = false; }
  }//turns medium algorithm on and off
  if ( mouseX>=TTTImpossibleX && mouseX<=TTTImpossibleX+TTTImposibleWidth && mouseY>=TTTImpossibleY && mouseY<=TTTImpossibleY+TTTimpossibleHeight )
  { scoreX = 0; scoreO = 0; textScoreX = "0"; textScoreO = "0";
  if (impossibleAlgorithm) {impossibleAlgorithm = false; playWithFriends = true; TTTReset();}
  else { playWithFriends = false; easyAlgorithm = false; mediumAlgorithm = false; impossibleAlgorithm = true; TTTReset(); }
  }//turns impossible algorithm on and off
}//end TTTMousePressedMode
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
boolean checkWinX() { 
  return checkWin(1);//X
}//end checkWinX
boolean checkWinO() { 
  return checkWin(2);//O
}//end checkWinO
boolean checkTie() {
  if (checkWinX() || checkWinO()) {
    return false;//defalt
  } else {
    for (int row = 0; row < 3;row++) {//checks rows nested loop
      for (int column = 0; column < 3; column++) {//checks columns
        if (cell[row][column] == 0) return false;//default
      }
    } return true;
  }
}//end checkTie
void scoreKeeper() {
  if (gameOn) {
    if (checkWinO()) scoreO++;//O wins
    if (checkWinX()) scoreX++;//X wins
    textScoreO = String.valueOf(scoreO);//converts int to string to print
    textScoreX = String.valueOf(scoreX);//converts int to string to print
  } else {}//empty statment
}//scoreKeeper 
void randomAlgorithm() {//claims random cell
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
  if (cell[1][0] == 1 && cell[0][2] == 1) claimCell(1, 2);//left down
  else if (cell[1][0] == 1 && cell[0][1] == 1) claimCell(1, 1);//left up
  else if (cell[0][1] == 1 && cell[2][0] == 1) claimCell(2, 1);//right up
  else if (cell[2][0] == 1 && cell[0][2] == 1) claimCell(2, 2);//right down
  else sideCellAlgorithm();
}//end blockSmallTriangleAlgorithm
void sideCellAlgorithm() {
  int[] sideCellsRow = {1, 2}; //left and right
  int[] sideCellsColumn = {1, 2};//up and down
  boolean done = false;
  while (done == false) {
    int randomIndexRow = int(random(sideCellsRow.length));//random number left or right
    int randomIndexColumn = int(random(sideCellsColumn.length));//random number up or down
    int selectedCellRow = sideCellsRow[randomIndexRow];
    int selectedCellColumn = sideCellsColumn[randomIndexColumn];
    if (cell[selectedCellRow][0] == 0 || cell[0][selectedCellColumn] == 0) {//claims only when empty cell found
      if (cell[selectedCellRow][0] == 0) {//left or right
        claimCell(selectedCellRow, 0);
        done = true;//ends search
        return;
      }
      if (cell[0][selectedCellColumn] == 0) {//up or down
        claimCell(0, selectedCellColumn);
        done = true;//ends search
        return;
      }
    }
  }
}//end sideCellAlgorithm
void cornerCellAlgorithm() {
  int[] cornerCellsRow = {1, 2};//left and right
  int[] cornerCellsColumn = {1, 2};//up and down
  boolean done = false;
  while (done == false) {
    int randomIndexRow = int(random(cornerCellsRow.length));
    int randomIndexColumn = int(random(cornerCellsColumn.length));
    int selectedCellRow = cornerCellsRow[randomIndexRow];
    int selectedCellColumn = cornerCellsColumn[randomIndexColumn];
    if (cell[selectedCellRow][selectedCellColumn] == 0) {//claims only when empty cell found
      claimCell(selectedCellRow, selectedCellColumn);
      done = true;//end search
    }
  } return;
}//end sideCellAlgorithm
void easyAlgorithm() {
  if (turnXO == false) {
    randomAlgorithm();
  }
}//end easyAlgorithm
void mediumAlgorithm() {
  if (turnXO == false) {
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (cell[i][j] == 0) {
          cell[i][j] = 2;//test
          if (checkWinO()) {
            claimCell(i, j);//cliam win condition
            turnXO = true;
            return; 
          }
          cell[i][j] = 0;//reset
        }
      }
    }
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (cell[i][j] == 0) {
          cell[i][j] = 1;//test
          if (checkWinX()) {//block X Win condition
            cell[i][j] = 2;
            turnXO = true;
            return;
          }
          cell[i][j] = 0;//reset
        }
      }
    }//if no win conditions
    randomAlgorithm();
  }
}//end mediumAlgorithm
void impossibleAlgorithm() {
  if (turnXO == false) {
    for (int row = 0; row < 3; row++) {
      for (int column = 0; column < 3; column++) {
        if (cell[row][column] == 0) {
          cell[row][column] = 2;//test
          if (checkWinO()) {
            claimCell(row, column);//cliam win condition
            turnXO = true;
            return; 
          }
          cell[row][column] = 0;//reset
        }
      }
    }
    for (int row1 = 0; row1 < 3; row1++) {
      for (int column1 = 0; column1 < 3; column1++) {
        if (cell[row1][column1] == 0) {
          cell[row1][column1] = 1;//test
          if (checkWinX()) {//block X Win condition
            cell[row1][column1] = 2;
            turnXO = true;
            return;
          }
          cell[row1][column1] = 0;//reset
        }
      }
    }//if no win conditions
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
        sideCellAlgorithm(); return;
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
}//end impossibleAlgorithm
//end TicTacToe subProgram
