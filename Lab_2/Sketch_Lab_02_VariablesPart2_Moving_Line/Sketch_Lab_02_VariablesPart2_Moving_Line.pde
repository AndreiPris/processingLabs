void setup()
{
  size(100, 100);
  frameRate(30);
}
int pos = 0;
int posRevers = 100;
void draw() {
  background(150);
  pos ++;
  posRevers --;
  line(0, pos, 100, pos);
  line(0, posRevers, 100, posRevers);
  line(pos, 0, pos, 100);
  line(posRevers, 0, posRevers, 100);
  
  line(pos, 0, 100, pos);
  line(100, pos, posRevers, 100);
  line(posRevers, 100, 0, posRevers);
  line(0, posRevers, pos, 0);
  
  if (pos > width) {
    pos = 0;
  }
  if (posRevers < 0) {
    posRevers = 100;
  }
}
