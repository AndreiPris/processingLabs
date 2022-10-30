PImage imgTarzan;
PImage imgFrame;
int frameCounter = 0;
final int numFrame = 8;

void setup(){
  frameRate(16);
  size(180, 180);
  imgTarzan = loadImage("Tarzan.png");
}

void draw(){
  background(210);
  int frameWidth = imgTarzan.width / numFrame;
  int frameHeight = imgTarzan.height;
  imgFrame = imgTarzan.get(frameWidth * frameCounter, 0, frameWidth, frameHeight);
  image(imgFrame, 0, 0);
  frameCounter++;
  if(frameCounter >= 8){
    frameCounter = 0;
  }
}
