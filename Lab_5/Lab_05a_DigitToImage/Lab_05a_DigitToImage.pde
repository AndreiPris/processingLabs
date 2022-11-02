PImage digits;
int num;
String numString = "";

void setup(){
  size(400, 400);
  noStroke();
  textSize(20);
  digits = loadImage("Digits.png");
}


void draw(){

  fill(0);
  text("Press any numeric key and hit enter", 10, 20);
  fill(255);
  rect(20, 50, 100, 30);
  fill(0);
  text(num, 25, 70);
  println(num);
}


void keyReleased(){
  loop();
  if(key >= '0' && key <= '9'){
    numString += key;
    num = int(numString);
  }
  
  if(key == ENTER){
    num = int(numString);
  }
}
