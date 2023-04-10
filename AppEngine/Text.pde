//Global Variable
PFont Font;
color ink, purpInk=#000A00, resetInk=#FFFFFF; //Not Nightmode Friendly
int alignHorizontal, alignVertical; //Display or CANVAS Values
String string = "SINGLE", string2 = "INFINITE", string3 = "AUTO-PLAY";
//
void textSetup() {
  Font = createFont ("Calibri", 50); 
  population(); 
}//end textSetup
//
void preTextDraw( float appHeight, color ink, int alignHorizontal, int alignVertical, PFont Font ) {
  fill(ink);
  textAlign (alignHorizontal, alignVertical);
  textFont(Font, appHeight);
}//end preTextDraw
//
void textDraw( float appHeight, color ink, int alignHorizontal, int alignVertical, PFont Font, String string, float loopX1, float loopY1, float loopWidth, float loopHeight ) {
  preTextDraw( appHeight, ink, alignHorizontal, alignVertical, Font ); //passing parameters
  textSize(textCalculator(appHeight, string, loopWidth));
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
void flatText() { //Reviewing Introductory Text Code
  color purpInk=#2C08FF, resetresetInk=#FFFFFF; //Not nice for Night Mode, Blue Content
  String string = "ERROR";
  //
  Font = createFont ("Calibri", 50);
  //
  fill(purpInk);
  textAlign (CENTER, CENTER);
  textSize( 50 );
  text( string, loopX1, loopY1, loopWidth, loopHeight);
  fill(resetresetInk);
}//end FlatText
//
void textKeyPressed() {}//end textKeyPressed
//
void textMousePressed() {}//end textMousePressed
//end Text SubProgram
