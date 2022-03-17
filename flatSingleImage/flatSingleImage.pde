//Global Variables
float imageX, imageY, imageWidth, imageHeight;
PImage pic;
//
fullScreen();
//Population
imageX = displayWidth*0; 
imageY = displayHeight*0;
imageWidth = displayWidth;
imageHeight = displayHeight;
pic = loadImage("GettyImages-1133605325-scaled-e1617227898456 (1).jpg"); //Dimensions: width 800, height 600
//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
