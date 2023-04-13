/* Background Image Example
No aspect ratio
filling the Rect */
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float imageWidthAdj=0.0, imageHeightAdj=0.0;
float empty=0.0, PictureYAdj=0.0, pictureXAdj=0.0;
PImage picture;
Boolean nightMode = false;
Boolean imageCenter = true, imageBottomRight = false;//variable image justification
//
size( 500, 100 ); //landScape
appWidth = width;
appHeight = height;
//
//Population
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;//Note: - pixel in order to show rect properly
backgroundImageHeight = appHeight-1;//Note: - pixel in order to show rect properly
//Pathway and files 
/* String upFolder = "..";
String openFolder = "/";
String folder = "imagesPrototyping";
String folder1 = "imagesUsed";
String folder2 = "01backgroundImage"; */
String fileName = "41586_2015_Article_BF528452a_Figg_HTML.jpg";
picture = loadImage("//FS-052/studuser$/Gr11/j.wong59/My Documents/GitHub/Sandbox-Hello-World-P3/imagesPrototyping/imagesUsed/01backgroundImage/"+fileName);//Kamodo Dragon image
int pictureWidthKamodo = 703;//original dimensions ;) in pixels by the way~
int pictureHeightKamodo = 512;//original dimensions :\
//larger dimension algorithem - any image thats larger than aspect ratio
int smallerDimension, largerDimension;
float imageHeightRatio, imageWidthRatio;
if (pictureWidthKamodo >= pictureHeightKamodo ){
  largerDimension = pictureWidthKamodo;
  smallerDimension = pictureHeightKamodo;
  imageHeightRatio = float(smallerDimension) / float(largerDimension);//CASTING making variables float
  imageWidthAdj = backgroundImageWidth;
  imageHeightAdj = backgroundImageWidth * imageHeightRatio;
  //If the image fits in the rect center the smaller dimension
  empty = backgroundImageHeight-imageHeightAdj;
  if (imageCenter == true) imageWidthAdj = backgroundImageY + empty*1/2;
  if (imageBottomRight == true) imageWidthAdj = backgroundImageY + empty;
  //
  //pictureXAdj = backgroundImageX*imageWidthRatio;
  PictureYAdj = backgroundImageY*imageHeightRatio;
  //
  if ( imageHeightAdj > backgroundImageHeight ) {//ERROR catch
    imageHeightAdj = backgroundImageHeight;
    imageWidthAdj *= imageHeightRatio;
    empty = backgroundImageWidth - imageWidthAdj;
  }
} else {//Student to finish - false if portrait //work in progress
  largerDimension = pictureHeightKamodo;
  smallerDimension = pictureWidthKamodo;
  imageWidthRatio = float(largerDimension) / float(smallerDimension);
  imageWidthAdj = backgroundImageHeight;
  imageHeightAdj = backgroundImageHeight * imageWidthRatio;
}//end imgae aspect ratio algorithim
//Rectangle layoutand image drawing to canvas
rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
if (nightMode == false) {tint( 255, 128 );}//GreyScale day mode - 1/2 tint used for white (128/255=.5)
if (nightMode == true) { tint( 64, 64, 40 ); }//RGB Night mode
//image( picture, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
image( picture, backgroundImageX, backgroundImageY, imageWidthAdj, imageHeightAdj );
//end mainProgram
