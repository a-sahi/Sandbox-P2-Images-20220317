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
int largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension;
float imageWidthRatioPic1=0.0, eHeightRatioPic1, imageWidthRatioPic2, imageHeightPic2;
Boolean widthPic1Larger=false, heightPic1Larger=false, widthPic2Larger=false, heightPic2Larger=false;
//
if ( pic1Width >= pic1Height ) { //ID Larger Dimension: Landscape and Square
  largerPic1Dimension = pic1Width;
  smallerPic1Dimension = pic1Height;
  widthPic1Larger = true;
} else { //ID Larger Dimension: Portrait
  largerPic1Dimension = pic1Height;
  smallerPic1Dimension = pic1Width;
  heightPic1Larger = true;
} //End pic1 larger dimesion ID
//
if ( pic2Width >= pic2Height ) { //ID Larger Dimension: Landscape and Square
  largerPic2Dimension = pic2Width;
  smallerPic2Dimension = pic2Height;
  widthPic2Larger = true;
} else { //ID Larger Dimension: Portrait
  largerPic2Dimension = pic2Height;
  smallerPic2Dimension = pic2Width;
  heightPic2Larger = true;
} //End pic2 larger dimesion ID
println (smallerPic1Dimension, largerPic1Dimension, smallerPic2Dimension, largerPic2Dimension); //Verifying Variable Details (ID Larger Dimension)
// Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
if ( widthPic1Larger == true ) imageWidthRatioPic1 = largerPic1Dimension / largerPic1Dimension;
if ( widthPic1Larger == true ) imageHeightRatioPic1 = smallerPic1Dimension / largerPic1Dimension;
if ( heightPic1Larger == true ) imageWidthRatioPic1 = smallerPic1Dimension / largerPic1Dimension;
if ( heightPic1Larger == true ) imageHeightRatioPic1 = largerPic1Dimension / largerPic1Dimension;
if ( widthPic2Larger == true ) imageWidthRatioPic2 = largerPic2Dimension / largerPic2Dimension;
if ( widthPic2Larger == true ) imageHeightRatioPic2 = smallerPic2Dimension / largerPic2Dimension;
if ( heightPic2Larger == true ) imageWidtRatioPic2 = smallerPic2Dimension / largerPic2Dimension;
if ( heightPic2Larger == true ) 
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
