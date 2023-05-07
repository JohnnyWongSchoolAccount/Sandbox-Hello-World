//Global Variable
PFont Font;
color ink, purpInk=purp, resetInk=#FFFFFF; //Not Nightmode Friendly
int alignHorizontal, alignVertical; //Display or CANVAS Values
String text = "SingleLoop";//button text
//
void setupText() {
  Font = createFont ("Calibri", 32); 
  population();//Population subProgram
}//end setupText()
void drawText( float appHeight, color ink, int alignHorizontal, int alignVertical, PFont Font, String text, float loopX1, float loopY1, float loopWidth, float loopHeight ) {
  predrawText( ink, appHeight, alignHorizontal, alignVertical, Font ); //passing parameters
  textSize(textCalculator(appHeight, text, loopWidth));
  text(text, loopX1, loopY1, loopWidth, loopHeight);
  textReset();
}//end drawText()
void textKeyPressed() {}//end textKeyPressed()
void textMousePressed() {}//end textMousePressed()
//
void predrawText( color ink, float appHeight, int alignHorizontal, int alignVertical, PFont Font ) {
  fill(ink);
  textAlign (alignHorizontal, alignVertical);
  textFont(Font, appHeight);
  if(Font != null) { //Check if Font object is not null
    textFont(Font, appHeight);
  }
}//end predrawText()
//
void textReset() { fill(resetInk); }//end textReset
//
float textCalculator( float size, String text, float loopWidth ) {
  textSize(size); //For text width sizing
  while ( textWidth(text) > loopWidth ){
    textSize(size *= 0.9); //decreases text size by 10%
  }
  return size;
}//end textCalculator
//end Text SubProgram
