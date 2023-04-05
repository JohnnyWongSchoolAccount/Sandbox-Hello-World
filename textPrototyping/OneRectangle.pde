//Global Variables
float playX1, playY1, playWidth, playHeight;
float playX2, playY2, playX3, playY3;
float appWidth = width;
float appHeight = height;
void drawOneRectangle()
{
  float pauseScaleWidth = 1/1; //used to change x-size
  float pauseScaleHeight = 1/1; //used to change y-axis
  float startingX = width/2 * pauseScaleWidth;
  float startingY = height/2 * pauseScaleHeight;
  float buttonWidth = width/9;
  float buttonHeight = buttonWidth;
  //
  //Population
  playX1 = startingX - (buttonWidth/2);
  playY1 = startingY - (buttonHeight/2);
  playWidth = buttonWidth;
  playHeight = buttonHeight;
  playX3 = playX1;
  playY3 = playY1 + playHeight;
  playX2 = playX3 + playWidth;
  playY2 = playY1 + (playY3 - playY1)/2;
  //
  rect( playX1, playY1, playWidth, playHeight );
  //triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
}//end Draw One Rectangle
//
//end One Rectangle SubProgram
