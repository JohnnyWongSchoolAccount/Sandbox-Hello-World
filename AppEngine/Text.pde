//Global Variable
PFont Font;
color ink, purpInk=#AF00FF, resetInk=#FFFFFF; //Not Nightmode Friendly
int alignHorizontal, alignVertical; //Display or CANVAS Values
String string = "SINGLE", string2 = "INFINITE", string3 = "AUTO-PLAY";
//
void textSetup() {
  Font = createFont ("Arial", 50); 
  population(); }//end textSetup
//
void preTextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font ) {
  fill(ink);
  textAlign (alignHorizontal, alignVertical);
  textFont(Font, height);
}//end preTextDraw
//
void textDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font, String string, float loopX1, float loopY1, float loopWidth, float loopHeight ) {
  preTextDraw( height, ink, alignHorizontal, alignVertical, Font ); //passing parameters
  textSize(textCalculator(height, string, loopWidth));
  text(string, loopX1, loopY1, loopWidth, loopHeight);
  textReset();
}//end textDraw
//
void textReset() { fill(resetInk); }//end textReset
//
float textCalculator( float size, String string, float loopWidth ) {
  textSize(size); //For text width sizing
  while ( textWidth(string) > loopWidth ){
    size = size * 0.99; //size in pixels
    textSize(size);
  }
  return size;
}//end textCalculator
//
void textKeyPressed() {}//end textKeyPressed
//
void textMousePressed() {}//end textMousePressed
//end Text SubProgram
