void setup()
{
  size(400, 100);
  frameRate(1);
  noStroke();
}
int pos = 0;
void draw() {
  background(150);
  fill(random(255), random(255), random(255));
  pos += 20;
  circle(pos, 50, 20);
  if (pos > width) {
    pos = 0;
  }
}
