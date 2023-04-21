//Global Variables
PImage picture;
float empty=0.0, pictureXAdj=0.0, pictureYAdj=0.0;
float pictureWidthAdj=0.0, pictureHeightAdj=0.0;
Boolean imageCenter=false, imageBottomRight=false; //changes the orientation of image in relation to empty
Boolean trippleself = false;
//Files image
//String fileNameKamodo = "41586_2015_Article_BF528452a_Figg_HTML.jpg";//Kamodo
String fileNameTripple = "TripleSelf.jpg";//trippleself
int pictureWidth = 500;//Kamodo 703, trippleself 500
int pictureHeight = 639;//Kamodo 512, trippleself 639
//
void setupImage() { if (Port) { setupImageONOFFPort(0, 0, 0, 0);} }//end setupImages
void drawImage() { if (Port) { drawImagesPort(); } }//end drawImage
//
void setupImageONOFFPort( int smallDimension, int largeDimension, float imageHeigthRatio, float imageWidthRatio ) {
  tint(255, 128); //Gray Scale, day use: used 1/2 tint for white (128/255=1/2)
  picture = loadImage(pathway+fileNameTripple); trippleself = true; //Tripple self image
  if ( pictureWidth >= pictureHeight ) { //TRUE for Landscape or Square
    largeDimension = pictureWidth;
    smallDimension = pictureHeight;
    imageHeigthRatio = float (smallDimension) / float (largeDimension); //fixed by CASTING ratio is < 1 - float()
    pictureWidthAdj = imageBackgroundWidth; //fits into rect
    pictureHeightAdj = pictureWidthAdj * imageHeigthRatio;
    empty = imageBackgroundHeight - pictureHeightAdj;
    pictureXAdj = imageBackgroundX;
    pictureYAdj = imageBackgroundY; 
    if ( imageCenter==true ) pictureYAdj = imageBackgroundY + empty*1/2;
    if ( imageBottomRight==true) pictureYAdj = imageBackgroundY + empty;
    if ( pictureHeightAdj > imageBackgroundHeight ) { //ERROR Catch - adusted height > height
      pictureHeightAdj = imageBackgroundHeight;
      pictureWidthAdj *= imageHeigthRatio;
      empty = imageBackgroundWidth - pictureWidthAdj;
      pictureXAdj = imageBackgroundX;
      pictureYAdj = imageBackgroundY;
      if ( imageCenter==true ) pictureXAdj = imageBackgroundX + empty*1/2;
      if ( imageBottomRight==true) pictureXAdj = imageBackgroundX + empty;
    }
  } else { //image portrait
    largeDimension = pictureHeight;
    smallDimension = pictureWidth;
    imageWidthRatio = float(smallDimension) / float(largeDimension); //fixed by CASTING ratio is < 1 - float()
    if (trippleself) { pictureHeightAdj = trippleSelfY; } // fits into rect
    pictureWidthAdj = pictureHeightAdj * imageWidthRatio;
    empty = imageBackgroundWidth - pictureWidthAdj;
    if (trippleself){ pictureXAdj = trippleSelfWidth; pictureYAdj = trippleSelfHeight;
    } else { pictureXAdj = imageBackgroundX; pictureYAdj = imageBackgroundY; }
    if (imageCenter == true) pictureXAdj = imageBackgroundX + empty * 1/2;
    if (imageBottomRight == true) pictureXAdj = imageBackgroundX + empty;
    if (pictureWidthAdj > imageBackgroundWidth) { // ERROR Catch - adjusted width > width
      pictureWidthAdj = imageBackgroundWidth;
      pictureHeightAdj *= imageWidthRatio;
      empty = imageBackgroundHeight - pictureHeightAdj;
      if (trippleself){ pictureXAdj = trippleSelfWidth; pictureYAdj = trippleSelfHeight;
      } else { pictureXAdj = imageBackgroundX; pictureYAdj = imageBackgroundY; }
    }
  }
}//end setupImageONOFF */
//end Images subProgram
