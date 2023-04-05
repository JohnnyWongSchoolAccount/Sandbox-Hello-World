/* Prototyping text
  - Copy a rectangle
  - Add a rectangle to put text in it
  - Note: could also be a "Hover over" feature */
//Global Variables
//
void setup() { 
  size( 700 , 400 );
  textSetup();
  // population of local variables
  textDraw( height, purpleink, CENTER, CENTER, font, string, playX1, playY1, playWidth, playHeight );
}//end setup
void draw() {}//end draw
void keyPressed() { textKeyPressed(); }//end keyPressed
void mousePressed() { textMousePressed(); }//end mousePressed
void flatText() {}//end flatText
//
//end main Program
