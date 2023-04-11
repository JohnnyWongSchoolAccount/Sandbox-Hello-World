//Global Variable
PFont Font;
color ink, purpInk=#000000, resetInk=#FFFFFF; //Not Nightmode Friendly
int alignHorizontal, alignVertical; //Display or CANVAS Values
String text = "SINGLE", text2 = "INFINITE", text3 = "AUTO-PLAY";//button text
//
void textSetup() {
  Font = createFont ("Calibri", 32); 
  population(); 
}//end textSetup
//
void preTextDraw( float appHeight, color ink, int alignHorizontal, int alignVertical, PFont Font ) {
  fill(ink);
  textAlign (alignHorizontal, alignVertical);
  textFont(Font, appHeight);
}//end preTextDraw
//
void textDraw( float appHeight, color ink, int alignHorizontal, int alignVertical, PFont Font, String text, float loopX1, float loopY1, float loopWidth, float loopHeight ) {
  preTextDraw( appHeight, ink, alignHorizontal, alignVertical, Font ); //passing parameters
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
void flatText() { //Reviewing Introductory Text Code
  color purpInk = #000000, resetresetInk=#FFFFFF; //Not nice for Night Mode, Blue Content
  String text = "ERROR";
  //
  Font = createFont ("Calibri", 32);
  //
  fill(purpInk);
  textAlign (CENTER, CENTER);
  textSize( 32 );
  text( text, loopX1, loopY1, loopWidth, loopHeight);
  fill(resetresetInk);
}//end flatText
//
void textKeyPressed() {}//end textKeyPressed
//
void textMousePressed() {}//end textMousePressed
//end Text SubProgram
