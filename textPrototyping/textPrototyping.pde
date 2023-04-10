/* Prototyping Text
 - Copy a rectangle from the 2D Music Button Shapes
 - Add a Rectangle to put text in
 - Note: could also be a "HoverOver" Feature
 */
//Global Variables
//
void setup() {
  size(700, 400);
  //flatText();
  textSetup();
  //population local variables
  textDraw( height, purpInk, CENTER, CENTER, Font, string, playX1, playY1, playWidth, playHeight ); //can be anywhere
  textDraw( height, purpInk, CENTER, CENTER, Font, stringAlternate, playX1, playY1+height/3, playWidth, playHeight ); //can be anywhere
}//end setup
//
void draw() {}//end draw
//
void keyPressed() {}//end keyPressed
//
void mousePressed() {}//end mousePressed
//
void flatText() { //Reviewing Introductory Text Code
  //Variables Needed, usually Global Variables
  float textRectX, textRectY, textRectWidth, textRectHeight;
  PFont Font;
  color purpInk=#2C08FF, resetresetInk=#FFFFFF; //Not nice for Night Mode, Blue Content
  String string = "Zing";
  //
  //Population, from display
  textRectX = width*1/5;
  textRectY = height*1/10;
  textRectWidth = width*3/5;
  textRectHeight = height*1/10;
  //
  rect( textRectX, textRectY, textRectWidth, textRectHeight );
  /*
  println("Start of Console");
   String[] FontList = PFont.list(); //To list all Fonts available on system
   printArray(FontList); //For listing all possible Fonts to choose, then createFont
   */
  Font = createFont ("Harrington", 50);
  //
  fill(purpInk);
  textAlign (CENTER, CENTER);
  textSize( 50 );
  text( string, textRectX, textRectY, textRectWidth, textRectHeight );
  fill(resetresetInk);
}//end Flat Text Review
//end Main Program
