//Text is always put in one rectangle
//Global Variables
float appWidth = width;
float appHeight = height;
float startingX = appWidth*1.0/2.0;
float startingY = appHeight*1.0/2.0;
float buttonWidth = appWidth/9;
float buttonHeight = buttonWidth;
float playX1, playY1, playX2, playY2;
void rectangle() {
  //population
  playX1 = startingX - startingX/2;
  playY1 = startingY - startingY/2;
  playX2 = startingX;
  playY2 = startingY - (playY1/2);
  rect( playX1, playY1, playX2, playY2, 22 );
}//end rectangle
