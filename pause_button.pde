//Global Variables
//
float pauseX1,pauseY1, pauseX2, pauseY2,pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
void setup() {
  size(700 , 400); //width and height
  //fullScreen(); //display width and height
  //population visual data
  float musicButtonDrawX = width * 2/3; 
  float musicButtonDrawY = height * 1/10; 
  pauseScaleWidth = 1.0/25.0; //change x-size
  pauseScaleHeight = 1.0/3.0; //change y-axis
  println(pauseScaleWidth);
  pauseWidth = width * pauseScaleWidth;
  pauseX1 = musicButtonDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = musicButtonDrawY;
  pauseX2 = musicButtonDrawX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  pauseHeight = height * pauseScaleHeight;
}//end setup
//
void draw() {
  rect( pauseX1, pauseY1, pauseWidth,pauseHeight );
  rect( pauseX1, pauseY1, pauseWidth,pauseHeight );
}//end draw
//
void keyPressed() {
}//end keyPressed
void mousePressed() {
}//end mousePressed
