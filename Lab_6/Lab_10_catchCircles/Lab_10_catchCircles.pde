int x, y, radius;

void setup (){
  size(500, 500);
  
}


void draw(){
  background(255);
  stroke(random(0, 200), random(0, 200), random(0, 200));
  radius = int(random(10, 50));
  x = int(random(radius, width - radius));
  y = int(random(radius, height - radius));
  circle(x, y, radius);
  circle(mouseX, mouseY, 10);
  
}

void position(){
  
}
