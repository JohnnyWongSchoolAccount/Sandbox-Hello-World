//Global Variables
float playX1, playY1, playX2, playY2, playWidth, playHeight;
float appHeight = height;
float appWidth = width;
//
void drawOneRectangle()
{
  float pauseScaleWidth = 1.0/1.0; //used to change x-size
  float pauseScaleHeight = 1.0/1.0; //used to change y-axis
  float startingX = appWidth*1/2 * pauseScaleWidth;
  float startingY = appHeight*1/2 * pauseScaleHeight;
  float buttonWidth = appWidth*1/9;
  float buttonHeight = buttonWidth;
  //
  //Population
  playX1 = startingX - buttonWidth/2;
  playY1 = startingY - buttonHeight/2;
  playWidth = buttonWidth;
  playHeight = buttonHeight/2;
  playX2 = playX1 + playWidth;
  playY2 = playY1 + (playY1 - playY1)/2;
  //
  rect( playX1, playY1, playWidth, playHeight );
}//end DrawOneRectangle
//end OneRectangle SubProgram
