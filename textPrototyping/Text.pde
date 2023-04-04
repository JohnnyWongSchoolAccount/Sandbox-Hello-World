//Global Variable
PFont font;
int alignHorizontal, alignVertical;//display or canvas values
//colors
color ink, resetcolor = #FFFFFF;
//
void textSetup() {
  /*
  String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont */
   font = createFont ("Harrington", 50); //Verify font exists
   drawOneRectangle();
}// end textSetup
//
void preTextDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont font ) {
  fill( ink );
  textAlign ( alignHorizontal, alignVertical );
  //values: alignHorizontal is left, center, right, and  alignVertical is top, center,  bottom, baseline
  textFont(font, height);
}// end preTextDraw
//
void textDraw( float height, color ink, int alignHorizontal, int alignVertical, PFont font, String string, float rectX, float rectY, float rectWidth, float rectHeight ) {
  preTextDraw( height, ink, alignHorizontal, alignVertical, font );
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize( textCalculator( height, string, rectWidth ) );
  text(string, rectX, rectY, rectWidth, rectHeight);
  textReset();
}// end textDraw
void textReset() { resetcolor(); }// end textReset
//
float textCalculator( float size, String string, float rectWidth ) {
  textSize( size );
  while (textWidth(string) > rectWidth){
    size = size * 0.99; //size done in pixels
    textSize(size);
  }//end while
  return;
}// end textCalculator
//
void textKeyPressed() {
}// end textKeyPressed
//
void textMousePressed() {
}//end textMousePressed
//
//end Text SubProgram
