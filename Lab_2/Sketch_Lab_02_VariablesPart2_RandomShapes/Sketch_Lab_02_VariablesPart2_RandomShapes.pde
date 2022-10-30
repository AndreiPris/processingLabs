void setup(){
  size(842, 480);
  frameRate(100);
  surface.setResizable(true);
}

void draw(){
 float x = random(842);
 float y = random(480);
  fill(random(255), random(255), random(255));
  rect(x, y, random(842 % x), random(480 % y));
}
