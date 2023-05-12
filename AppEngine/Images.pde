//Global Variables 
PImage picture;
PImage picture1;
float empty=0.0, pictureXAdj=0.0, pictureYAdj=0.0;
float pictureWidthAdj=0.0, pictureHeightAdj=0.0;
boolean imageCenter=false, imageBottomRight=false; //changes the orientation of image in relation to empty
//
void setupImage() {}//end setupImage()
void drawImage() {
  if (port) { //images in Port subProgram
    setupImageONOFF( "tripleself.jpg", 500, 639, 0, 0, 0, 0); drawImagesPort(); 
  }
  if (ONOFF_WEATHER) { //images in weather subProgram
    setupImageONOFF( "original-2421301-2.jpg", 350, 271, 0, 0, 0, 0); drawImagesWeather(); 
  }
}//end drawImage()
void keyPressedImage() {}//end keyPressedImage()
void mousePressedImage() {}//end mousePressedImage()
//
void setupImageONOFF( String fileName, int pictureWidth, int pictureHeight, int smallDimension, int largeDimension, float imageHeigthRatio, float imageWidthRatio ) {
  tint(255, 128); //Gray Scale, day use: used 1/2 tint for white (128/255=1/2)
  picture = loadImage(pathway+fileName);
  picture1 = loadImage(pathway+fileName);
  if ( pictureWidth >= pictureHeight ) { //TRUE for Landscape or Square
    largeDimension = pictureWidth;
    smallDimension = pictureHeight;
    imageHeigthRatio = float (smallDimension) / float (largeDimension); //fixed by CASTING ratio is < 1 - float()
    pictureWidthAdj = weatherkidsY; //fits into rect
    pictureHeightAdj = pictureWidthAdj * imageHeigthRatio;
    empty = imageBackgroundHeight - pictureHeightAdj;
    pictureXAdj = imageBackgroundX;
    pictureYAdj = imageBackgroundY; 
    if ( imageCenter ) pictureYAdj = imageBackgroundY + empty*1/2;
    if ( imageBottomRight ) pictureYAdj = imageBackgroundY + empty;
    if ( pictureHeightAdj > imageBackgroundHeight ) { //ERROR Catch - adusted height > height
      pictureHeightAdj = imageBackgroundHeight;
      pictureWidthAdj *= imageHeigthRatio;
      empty = imageBackgroundWidth - pictureWidthAdj;
      pictureXAdj = imageBackgroundX;
      pictureYAdj = imageBackgroundY;
      if ( imageCenter ) pictureXAdj = imageBackgroundX + empty*1/2;
      if ( imageBottomRight ) pictureXAdj = imageBackgroundX + empty;
    } 
  } else { //image portrait
    largeDimension = pictureHeight;
    smallDimension = pictureWidth;
    imageWidthRatio = float(smallDimension) / float(largeDimension); //fixed by CASTING ratio is < 1 - float()
    pictureHeightAdj = tripleSelfY; // fits into rect
    pictureWidthAdj = pictureHeightAdj * imageWidthRatio;
    empty = imageBackgroundWidth - pictureWidthAdj;
    pictureXAdj = tripleSelfWidth; pictureYAdj = tripleSelfHeight;
    if ( imageCenter ) pictureXAdj = imageBackgroundX + empty * 1/2;
    if ( imageBottomRight ) pictureXAdj = imageBackgroundX + empty;
    if (pictureWidthAdj > imageBackgroundWidth) { // ERROR Catch - adjusted width > width
      pictureWidthAdj = imageBackgroundWidth;
      pictureHeightAdj *= imageWidthRatio;
      empty = imageBackgroundHeight - pictureHeightAdj;
    }
  }
}//end setupImageONOFF() 
//end Images subProgram
