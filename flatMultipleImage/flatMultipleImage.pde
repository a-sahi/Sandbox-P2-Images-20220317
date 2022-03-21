//Variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
//
//Geometry
fullScreen();
//
//Populating Variables
pic1 = loadImage("GettyImages-1133605325-scaled-e1617227898456 (1).jpg"); //Dimensions: 2220 width, 1478 height
pic2 = loadImage("85246.jpg"); //Dimensions: 1920 width, 1080 height
//
//Aspect Ratio Calculations
int pic1Width = 2220;
int pic1Height = 1478;
int pic2Width = 1920;
int pic2Height = 1080;
int largerPic1Dimension, smallerPic1Dimension;
Boolean widthPic1Larger;
//
if ( pic1Width >= pic1Height ) { //ID Larger Dimension: Landscape and Square
  largerPic1Dimension = pic1Width;
  smallerPic1Dimension = pic1Height;
  widthPic1Larger = true;
} else { //ID Larger Dimension: Portrait
  
} //End pic1 larger dimesion ID
//
if () {} else {} //End pic2 larger dimesion ID
//
rectXPic1 = displayWidth*1/4;
rectYPic1 = displayHeight*0;
rectWidthPic1 = displayWidth*1/2;
rectHeightPic1 = displayHeight*1/2;
rectXPic2 = displayWidth*1/8;
rectYPic2 = displayHeight*1/2;
rectWidthPic2 = displayWidth*6/8;
rectHeightPic2 = displayHeight*1/2;
//
//Rectangle Layout & Image Printing on Canvas
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation
image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
