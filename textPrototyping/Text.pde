//Global Variables
color ink = #FFFFFF;
//
void textSetup() { rectangle(); }//end textSetup
void preTextDraw() {
  /*
  string[] fontList = PFont.List(); //to list all available fonts on system
  printArray(fontList); */
  fill(ink);
  textAlign(alignHorizontal, alignVertical);
  textFont(font, appHeight);
}//end textDraw
void textDraw() {
  textSize(textCalculator(height,string,rectWidth));
  text(string, playX1, playY1, playX2, playY2)
  preTextDraw(); 
}//end textDraw
float textCalculator() {
  return;
}//end textCalculator
void textKeyPressed() {}//end textKeyPressed
void textMousePressed() {}//end mousePressed
//
//end text subPrograrm
