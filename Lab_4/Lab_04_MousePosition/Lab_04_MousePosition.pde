void setup() 
{
  size(500, 300);
  fill(255, 0, 0);
}

void draw() 
{
  //background(220);
  //fill(255);
  if(mouseX <= width / 2 && mouseY <= height / 2)
  {
    fill(255, 0, 0);
  }
  if(mouseX >= width / 2 && mouseY <= height / 2){
    fill(0, 255, 0);
  }
  if(mouseX >= width / 2 && mouseY >= height / 2)
  {
    fill(255);
  }
  if(mouseX <= width / 2 && mouseY >= height / 2)
  {
    fill(0, 0, 255);
  }
  circle(mouseX, mouseY, 30);
}
