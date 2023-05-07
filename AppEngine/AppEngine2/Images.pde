//Global Variables
PImage picture;
PImage picture1;
float empty=0.0, pictureXAdj=0.0, pictureYAdj=0.0;
float pictureWidthAdj=0.0, pictureHeightAdj=0.0;
float empty1=0.0, pictureXAdj1=0.0, pictureYAdj1=0.0;
float pictureWidthAdj1=0.0, pictureHeightAdj1=0.0;
boolean imageCenter=false, imageBottomRight=false; //changes the orientation of image in relation to empty
boolean tripleself = false;
boolean weatherkids = false;
//Files image
//String fileNameKamodo = "41586_2015_Article_BF528452a_Figg_HTML.jpg";//Kamodo
String fileNameTriple = "tripleself.jpg";//tripleself
String fileNameWeather = "original-2421301-2.jpg";//weather kids
int pictureWidth = 500;//Kamodo 703, tripleself 500
int pictureHeight = 639;//Kamodo 512, tripleself 639
int pictureWidth1 = 350;//weather 350
int pictureHeight1 = 271;//weather 271
//
void setupImage() { 
  if (port) { 
    setupImageONOFFPort(0, 0, 0, 0);
    setupImageONOFFWeather(0, 0, 0, 0);
  } 
}//end setupImage()
void drawImage() { 
  if (port) { drawImagesPort(); }
  if (ONOFF_WEATHER) { drawImagesWeather(); }
}//end drawImage()
void keyPressedImage() {}//end keyPressedImage()
void mousePressedImage() {}//end mousePressedImage()
//
void setupImageONOFFPort( int smallDimension, int largeDimension, float imageHeigthRatio, float imageWidthRatio ) {
  tint(255, 128); //Gray Scale, day use: used 1/2 tint for white (128/255=1/2)
  picture = loadImage(pathway+fileNameTriple); tripleself = true; //triple self image
  if ( pictureWidth >= pictureHeight ) { //TRUE for Landscape or Square
    largeDimension = pictureWidth;
    smallDimension = pictureHeight;
    imageHeigthRatio = float (smallDimension) / float (largeDimension); //fixed by CASTING ratio is < 1 - float()
    pictureWidthAdj = imageBackgroundWidth; //fits into rect
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
    if (tripleself) { pictureHeightAdj = tripleSelfY; } // fits into rect
    pictureWidthAdj = pictureHeightAdj * imageWidthRatio;
    empty = imageBackgroundWidth - pictureWidthAdj;
    if (tripleself){ pictureXAdj = tripleSelfWidth; pictureYAdj = tripleSelfHeight;
    } else { pictureXAdj = imageBackgroundX; pictureYAdj = imageBackgroundY; }
    if ( imageCenter ) pictureXAdj = imageBackgroundX + empty * 1/2;
    if ( imageBottomRight ) pictureXAdj = imageBackgroundX + empty;
    if (pictureWidthAdj > imageBackgroundWidth) { // ERROR Catch - adjusted width > width
      pictureWidthAdj = imageBackgroundWidth;
      pictureHeightAdj *= imageWidthRatio;
      empty = imageBackgroundHeight - pictureHeightAdj;
      if (tripleself){ pictureXAdj = tripleSelfWidth; pictureYAdj = tripleSelfHeight;
      } else { pictureXAdj = imageBackgroundX; pictureYAdj = imageBackgroundY; }
    }
  }
}//end setupImageONOFF() 
void setupImageONOFFWeather( int smallDimension, int largeDimension, float imageHeigthRatio, float imageWidthRatio ) {
  tint(255, 128); //Gray Scale, day use: used 1/2 tint for white (128/255=1/2)
  picture1 = loadImage(pathway+fileNameWeather); weatherkids = true; //triple self image
  if ( pictureWidth1 >= pictureHeight1 ) { //TRUE for Landscape or Square
    largeDimension = pictureWidth1;
    smallDimension = pictureHeight1;
    imageHeigthRatio = float (smallDimension) / float (largeDimension); //fixed by CASTING ratio is < 1 - float()
    pictureWidthAdj1 = weatherkidsY; //fits into rect
    pictureHeightAdj1 = pictureWidthAdj1 * imageHeigthRatio;
    empty1 = imageBackgroundHeight - pictureHeightAdj1;
    pictureXAdj1 = imageBackgroundX;
    pictureYAdj1 = imageBackgroundY; 
    if ( imageCenter ) pictureYAdj1 = imageBackgroundY + empty1*1/2;
    if ( imageBottomRight ) pictureYAdj1 = imageBackgroundY + empty1;
    if ( pictureHeightAdj1 > imageBackgroundHeight ) { //ERROR Catch - adusted height > height
      pictureHeightAdj1 = imageBackgroundHeight;
      pictureWidthAdj1 *= imageHeigthRatio;
      empty1 = imageBackgroundWidth - pictureWidthAdj1;
      pictureXAdj1 = imageBackgroundX;
      pictureYAdj1 = imageBackgroundY;
      if ( imageCenter ) pictureXAdj1 = imageBackgroundX + empty1*1/2;
      if ( imageBottomRight ) pictureXAdj1 = imageBackgroundX + empty1;
    }
  } else { //image portrait
    largeDimension = pictureHeight1;
    smallDimension = pictureWidth1;
    imageWidthRatio = float(smallDimension) / float(largeDimension); //fixed by CASTING ratio is < 1 - float()
    if (weatherkids) { pictureHeightAdj1 = weatherkidsY; } // fits into rect
    pictureWidthAdj1 = pictureHeightAdj1 * imageWidthRatio;
    empty1 = imageBackgroundWidth - pictureWidthAdj1;
    if (weatherkids){ pictureXAdj1 = weatherkidsWidth; pictureYAdj1 = weatherkidsHeight;
    } else { pictureXAdj1 = imageBackgroundX; pictureYAdj1 = imageBackgroundY; }
    if ( imageCenter ) pictureXAdj1 = imageBackgroundX + empty1 * 1/2;
    if ( imageBottomRight ) pictureXAdj1 = imageBackgroundX + empty1;
    if (pictureWidthAdj1 > imageBackgroundWidth) { // ERROR Catch - adjusted width > width
      pictureWidthAdj1 = imageBackgroundWidth;
      pictureHeightAdj1 *= imageWidthRatio;
      empty1 = imageBackgroundHeight - pictureHeightAdj1;
      if (weatherkids){ pictureXAdj1 = weatherkidsWidth; pictureYAdj1 = weatherkidsHeight;
      } else { pictureXAdj1 = imageBackgroundX; pictureYAdj1 = imageBackgroundY; }
    }
  } //*/
}//end setupImageONOFF() 
//end Images subProgram
