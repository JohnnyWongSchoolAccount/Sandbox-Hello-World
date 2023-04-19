//Global Variable
PFont Font;
color ink, purpInk=purp, resetInk=#FFFFFF; //Not Nightmode Friendly
int alignHorizontal, alignVertical; //Display or CANVAS Values
String text = "SingleLoop", text2 = "InfiniteLoop", text3 = "Autoplay";//button text
String texto = "Song:";
//
void drawText() {
  fill(background); stroke(background);
  rect(pauseWidth, pauseHeight/3, loopWidth, loopHeight/1.5);
  textDraw( height, purpInk, CENTER, CENTER, Font, texto+currentSong, pauseWidth, pauseHeight/7, loopWidth, loopHeight);
}//end drawText
void textSetup() {
  Font = createFont ("Calibri", 32); 
  population(); 
}//end textSetup
//
void preTextDraw( color ink, float appHeight, int alignHorizontal, int alignVertical, PFont Font ) {
  fill(ink);
  textAlign (alignHorizontal, alignVertical);
  textFont(Font, appHeight);
}//end preTextDraw 
//
void textDraw( float appHeight, color ink, int alignHorizontal, int alignVertical, PFont Font, String text, float loopX1, float loopY1, float loopWidth, float loopHeight ) {
  preTextDraw( ink, appHeight, alignHorizontal, alignVertical, Font ); //passing parameters
  textSize(textCalculator(appHeight, text, loopWidth));
  text(text, loopX1, loopY1, loopWidth, loopHeight);
  textReset();
}//end textDraw
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
//
void textKeyPressed() {}//end textKeyPressed
//
void textMousePressed() {}//end textMousePressed
//end Text SubProgram
