int num;
int x;
int y;


void setup() 
{
  size(500, 300);
  background(0);
  frameRate(20);
  //noStroke();
  //strokeWeight(10);
}

void draw() 
{
  //if(mousePressed){
  //  switch(mouseButton){
  //    case LEFT:
  //      fill(0, 255, 0);
  //    break;
  //    case RIGHT:
  //      fill(255);
  //    break;
  //    case CENTER:
  //      fill(0);
  //    break;
  //  }
  //  x = pmouseX;
  //  y = pmouseY;
  //  circle(mouseX, mouseY, 20);
  //  line(x, y, mouseX, mouseY);
  //}

}

void mousePressed(){
  switch(mouseButton){
      case LEFT:
        fill(0, 255, 0);
      break;
      case RIGHT:
        fill(255);
      break;
      case CENTER:
        fill(0);
      break;
    }
    x = pmouseX;
    y = pmouseY;
    circle(mouseX, mouseY, 20);
    line(x, y, mouseX, mouseY);
    loop();
}
