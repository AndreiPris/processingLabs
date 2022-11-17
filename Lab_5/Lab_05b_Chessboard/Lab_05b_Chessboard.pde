float x = 0, y = 0;
float w, h;
int counter = 0;

  void setup() {
  size(200, 200);
  w = width / 8;
  h = width / 8;
}

void draw() {
  while (x <= width - h){
    if(counter == 0){
       fill(0);
    }
    if(counter == 1){
       fill(255);
    }
    rect(x, y, w, h);
    x += w;
    counter ++;
    counter %= 2;
  }
  noLoop();
}
