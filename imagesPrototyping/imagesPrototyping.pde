/* Background Image Example */
//Global Variables
PImage picture;
int appWidth, appHeight;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
float empty=0.0, pictureXAdj=0.0, pictureYAdj=0.0;
float pictureWidthAdj=0.0, pictureHeightAdj=0.0;
Boolean nightMode=false;
Boolean imageCenter=true, imageBottomRight=false; //changes the orientation of image in relation to empty
//
size(500, 100); //Landscape
appWidth = width;
appHeight = height;
//Population
imageBackgroundX = appWidth * 0;
imageBackgroundY = appHeight * 0;
imageBackgroundWidth = appWidth - 1;//computer ERROR if pixel is not - border is not present
imageBackgroundHeight =appHeight - 1;//in pixels~
//Pathway & Files
/*String upFolder = "..";
String openFolder = "/"; */
//String fileName = "41586_2015_Article_BF528452a_Figg_HTML.jpg";//Kamodo
String fileName = "tripleself.jpg";//trippleself
//String pathway = "//FS-052/studuser$/Gr11/j.wong59/My Documents/GitHub/Sandbox-Hello-World-P3/imagesPrototyping/imagesUsed/01backgroundImage/";
String pathway = "//FS-052/studuser$/Gr11/j.wong59/My Documents/GitHub/Sandbox-Hello-World-P3/imagesPrototyping/imagesUsed/03portraitImage/";
picture = loadImage(pathway+fileName);//Kamodo Dragon image
int pictureWidth = 500;//Kamodo 703,trippleself 500
int pictureHeight = 639;//Kamodo 512, trippleself 639
//large Dimension Algorithm - any image- ASPECT RATIO
int smallDimension, largeDimension; //Local Variable
float imageHeigthRatio, imageWidthRatio; //Local Variable
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
    //
    empty = imageBackgroundWidth - pictureWidthAdj;
    //
    pictureXAdj = imageBackgroundX;
    pictureYAdj = imageBackgroundY;
    if ( imageCenter==true ) pictureXAdj = imageBackgroundX + empty*1/2;
    if ( imageBottomRight==true) pictureXAdj = imageBackgroundX + empty;
  }
} else { //image portrait
   largeDimension = pictureHeight;
   smallDimension = pictureWidth;
   imageWidthRatio = float(smallDimension) / float(largeDimension);
   pictureHeightAdj = imageBackgroundHeight;
   pictureWidthAdj *= imageWidthRatio;
   pictureXAdj = imageBackgroundX;
   pictureYAdj = imageBackgroundY; 
}
rect( imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
if ( nightMode==false ) tint(255, 128); //Gray Scale, day use: used 1/2 tint for white (128/255=1/2)
if ( nightMode==true ) tint(64, 64, 40); //RGB: Night Mode
//background image no empty
//image( picture, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
//aspect ratio
println( pictureWidthAdj, pictureHeightAdj ); //View Human Error on variables, zero values
image( picture, pictureXAdj, pictureYAdj, pictureWidthAdj, pictureHeightAdj );
//end main Program
