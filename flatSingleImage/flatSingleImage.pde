//Global Variables
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0;
float largerDimension, smallerDimension;
PImage pic;
Boolean widthLarger=false, heightLarger=false;
//
fullScreen();
//Population
pic = loadImage("GettyImages-1133605325-scaled-e1617227898456 (1).jpg"); //Dimensions: width 800, height 600
//Find the larger dimenstion for aspect ratio
int picWidth = 900;
int picHeight = 700;
if ( picWidth >= picHeight ) {
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else {
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}//End Dimension Comparison
println(smallerDimension, largerDimension, widthLarger, heightLarger); //Verifying Variable details
//Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
println(imageWidthRatio, imageHeightRatio, smallerDimension/largerDimension, 700.0/900.0); //Verify variable values
//Note: println() also verifies decimal places, compiler will truncate
//Answers: must be 1.0 and between 0 and 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ratio "0.75" similar to style="height:auto" (websites)
imageX = displayWidth*0; 
imageY = displayHeight*0;
imageWidth = displayWidth*imageWidthRatio;
imageHeight = displayHeight*imageHeightRatio;
if ( imageWidth > displayWidth ) println("ERROR: Image is too wide") ; //Simple Display Checker
if ( imageHeight > displayHeight ) println("ERROR: Image is too high"); //Simple Display Checker

//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
