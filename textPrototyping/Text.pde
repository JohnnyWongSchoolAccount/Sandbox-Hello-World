//Global Variable
PFont Font;
color ink, purpInk=#000000, resetInk=#FFFFFF; //not for night mode
int alignHorizontal, alignVertical; //Display or CANVAS Values
String string = "Happy", stringAlternate = "pip";
//
void textSetup() {
  Font = createFont ("Calibri", 32); 
  drawOneRectangle(); }//end textSetup
//
void preTextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font ) {
  fill(ink);
  textAlign (alignHorizontal, alignVertical);
  textFont(Font, height);
}//end preTextDraw
//void textDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont Font, String string, float rectX, float rectY, float rectWidth, float rectHeight ) {
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
  while ( textWidth(string) > rectWidth ){
    textSize(size *= 0.9);//changes size by 10%
  }
  return size;
}//end textCalculator
//
void textKeyPressed() {}//end textKeyPressed
//
void textMousePressed() {}//end textMousePressed
//end Text SubProgram
