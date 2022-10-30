void setup(){
  size(900, 400);
  background(0);
  stroke(255);
  //surface.setResizable(true); //позволяет менять размер ока 
}

void draw(){
  
  noFill();
  int P1 = 210;
  int P2 = 10;
  int W = width;
  int H = height;
  fill(0, 255, 0);
  square(P2, H - P1, 200);
  square(W - P1, P2, 200);
  
  line(P2, H - P1, W - P1, P2);
  line(P1, H - P1, W - P2, P2);
  line(P2, H - P2, W - P1, P1);
  line(P1, H - P2, W - P2, P1);
}
