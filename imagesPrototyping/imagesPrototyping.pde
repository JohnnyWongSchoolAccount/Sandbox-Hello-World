/* Background Image Example
No aspect ratio
filling the Rect */
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picture;
Boolean nightMode = false;
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
picture = loadImage("//FS-052/studuser$/Gr11/j.wong59/My Documents/GitHub/Sandbox-Hello-World-P3/imagesPrototyping/Images/01backgroundImage/41586_2015_Article_BF528452a_Figg_HTML.jpg");
//
//Rectangle layoutand image drawing to canvas
rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
if (nightMode == false) {tint( 255, 23 );}//GreyScale day mode - 1/2 tint used for white (128/255=.5)
if (nightMode == true) { tint( 64, 64, 40 ); }//RGB Night mode
image( picture, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//end mainProgram
