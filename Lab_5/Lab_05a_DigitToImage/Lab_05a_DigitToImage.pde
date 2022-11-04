PImage digits;
PImage imgFrame;
int num;
int frameWidth;
int frameHeight;
String numString  = "";
boolean draw = false;

void setup(){
  size(400, 400);
  textSize(20);
  digits = loadImage("Digits.png");
}


void draw(){
  background(255);
  fill(0);
  text("Press any numeric key and hit enter", 10, 20);
  fill(255);
  rect(20, 50, 100, 30);
  fill(0);
  text(num, 25, 70);
  println(num);
  frameWidth = digits.width / 10;
  frameHeight = digits.height;
  imgFrame = digits.get(frameWidth * num, 0, frameWidth, frameHeight);
  if(draw){
  image(imgFrame, 30, 100);
  }
}


void keyReleased(){
  if(key >= '0' && key <= '9'){
    draw = false;
    numString += key;
    num = int(numString);
  }
  if(key == BACKSPACE){
    draw = false;
    num = 0;
    numString = "";
  }
  
  if(key == ENTER){
    draw = true;
  }
}
