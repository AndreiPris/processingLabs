PImage imgDAE;
PImage imgPart;

void setup(){
  size(470, 480);
  fill(220);
  imgDAE = loadImage("DAE.png");
}

void draw(){
  int x = 10;
  int y = 10;
  while(y < height){
   image(imgDAE, x, y, 200, 60);
   y += 80;
   
  }
  y = 0;
  imgPart = get(15, 50, 185, 13);
  while(y < height){
  image(imgPart, 220, y);
  y += 20;
  }
}

// 41 7
// 195 14
// 213 60
