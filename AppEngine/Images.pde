//Global Variables
PImage picture;
float empty=0.0, pictureXAdj=0.0, pictureYAdj=0.0;
float pictureWidthAdj=0.0, pictureHeightAdj=0.0;
boolean imageCenter=false, imageBottomRight=false; //changes the orientation of image in relation to empty
boolean tripleself = false;
//Files image
//String fileNameKamodo = "41586_2015_Article_BF528452a_Figg_HTML.jpg";//Kamodo
String fileNameTriple = "tripleself.jpg";//tripleself
int pictureWidth = 500;//Kamodo 703, tripleself 500
int pictureHeight = 639;//Kamodo 512, tripleself 639
//
void setupImage() { if (Port) { setupImageONOFFPort(0, 0, 0, 0);} }//end setupImage()
void drawImage() { if (Port) { drawImagesPort(); } }//end drawImage()
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
}//end setupImageONOFF() */
//end Images subProgram
