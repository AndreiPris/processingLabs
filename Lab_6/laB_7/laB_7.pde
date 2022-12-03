int x = 30;
int y = 30;
int lineLength = 100;
int gap = 5;
int amount = 5;

void setup(){
  size(500, 500); 
  frameRate(20);
  rectMode(CENTER);
}

void draw(){
  drawLines(x, y, lineLength, gap);
  drawSquares(50, 50, 5, 255);
  noLoop();
}

void drawLines(float posX, float posY, float lineLength, float gap){
  for(int i = 0; i < amount; i++){
    line(posX, posY, posX + lineLength, posY);
    posY += gap;
  }
}

void drawSquares(float posX, float posY, int number, color c){
  int size = 10;
  stroke(c);
  for(int i = 0; i < number; i++){
     square(posX, posY, size);
     size += 10;
  }
  
}
