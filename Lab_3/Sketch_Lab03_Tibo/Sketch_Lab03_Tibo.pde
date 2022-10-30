PImage imgTibo;
PImage imgFrame;
int frameCounter = 0;
int rows  = 0;
int columns = 0;
final int numFrame = 25;

void setup(){
  frameRate(30);
  size(120, 150);
  imgTibo = loadImage("Tibo.png");
}

void draw(){
  background(210);
  int frameWidth = imgTibo.width / 5; // 20
  int frameHeight = imgTibo.height / 5; // 20
  
  
  imgFrame = imgTibo.get(frameWidth * columns, frameHeight * rows, frameWidth, frameHeight);
  image(imgFrame, 0, 0);
  frameCounter++;
  columns ++;
   if(columns >= 5)
  {
    rows++;
  }
  if(columns >= 5){
    columns = 0;
  }
  if(rows >= 5){
    rows = 0;
  }
}
