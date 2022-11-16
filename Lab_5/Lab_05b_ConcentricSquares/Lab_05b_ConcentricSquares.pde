int h, w, i = 0;

void setup(){
  size(200, 200);
  rectMode(CENTER);
  print(h);
  w = 10;
  h = 10;
}

void draw(){
  noFill();
  while(i < 10){
    w += 10;
    h += 10;
    rect(width / 2, height / 2, w, h);
    i++;
  }
  noLoop();
}
