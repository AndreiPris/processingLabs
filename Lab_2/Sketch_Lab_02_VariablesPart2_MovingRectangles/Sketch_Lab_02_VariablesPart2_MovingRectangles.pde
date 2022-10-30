void setup(){
  size(480, 480);
  frameRate(60);
  noStroke();
  //surface.setResizable(true);
}
int pos = 0;
int posRevers = 380;
void draw(){
 background(255);
 pos ++;
 posRevers --;
 fill(255, 0, 0);
 square(pos % 380, pos % 380, 100);
 fill(0, 255, 0);
 square(pos % 380, posRevers, 100);
 fill(0, 0, 255);
 square(posRevers, pos % 380, 100);
 fill(0);
 square(posRevers, posRevers, 100);

 if(posRevers < 0)
 {
   posRevers = 380;
 }
 
}
