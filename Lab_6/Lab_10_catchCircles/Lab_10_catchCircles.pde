int x, y, radius;
int frameCounter = 0;
int miss, hit;
int[] circles;
 
void setup(){
  size(500, 500);
  frameRate(30);
  circles = new int[10];
}

void randomProperties(){
  stroke(random(0, 200), random(0, 200), random(0, 200));
  radius = int(random(10, 50));
  x = int(random(radius / 2, width - radius / 2));
  y = int(random(radius / 2, height - radius / 2));
}

void draw(){
  background(255);
  frameCounter %= 60;
  if(frameCounter == 59){
    randomProperties();
  }
  for(int i = 0; i < circles.length; i++){
    circle(x, y, radius);
  }
  circle(mouseX, mouseY, 10);
  frameCounter += 1;
}

void mousePressed(){
  if((mouseX < x - radius / 2 || mouseX > x + radius / 2)
  || (mouseY < y - radius / 2 || mouseY > y + radius / 2)){
    randomProperties();
    frameCounter = 1;
    miss ++;
    println("?"+miss);
  }else{
    
    randomProperties();
    frameCounter = 1;
    hit++;
    println(";)"+hit);
  }
}
