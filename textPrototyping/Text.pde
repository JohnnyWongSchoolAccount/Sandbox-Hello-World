//Global Variable
PFont Font;
color ink, purpInk=#AF00FF, resetInk=#FFFFFF; //Not Nightmode Friendly
int alignHorizontal, alignVertical; //Display or CANVAS Values
String string = "Happy", stringAlternate = "pip";
//
void textSetup() {
  Font = createFont ("Harrington", 50); 
  drawOneRectangle(); }//end textSetup
//
void preTextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font ) {
  fill(ink);
  textAlign (alignHorizontal, alignVertical);
  textFont(Font, height);
}//end preTextDraw
//
void textDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font, String string, float rectX, float rectY, float rectWidth, float rectHeight ) {
  preTextDraw( height, ink, alignHorizontal, alignVertical, Font ); //passing parameters
  textSize(textCalculator(height, string, rectWidth));
  text(string, rectX, rectY, rectWidth, rectHeight);
  textReset();
}//end textDraw
//
void textReset() { fill(resetInk); }//end textReset
//
float textCalculator( float size, String string, float rectWidth ) {
  textSize(size); //For text width sizing
  while ( textWidth(string) > rectWidth )
  {
    size = size * 0.99; //size-- will do pixels
    textSize(size);
  }
  return size;
}//end textCalculator
//
void textKeyPressed() {}//end textKeyPressed
//
void textMousePressed() {}//end textMousePressed
//end Text SubProgram
