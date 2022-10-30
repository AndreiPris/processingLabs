void setup() 
{
  size(500, 300);
  noStroke();
}

void draw() 
{
  int x = width / 8;
  if(mouseX <= x){
    fill(255);
  }
  if(mouseX >= x && mouseX <= x * 2){
    fill(0, 255, 0);
  }
  if(mouseX >= x * 2 && mouseX <= x * 3){
    fill(255,255,153);
  }
  if(mouseX >= x * 3 && mouseX <= x * 4){
    fill(0, 0, 100);
  }
  if(mouseX >= x * 4 && mouseX <= x * 5){
    fill(0, 255, 0);
  }
  if(mouseX >= x * 5 && mouseX <= x * 6){
    fill(196, 0, 171);
  }
  if(mouseX >= x * 6 && mouseX <= x * 7){
    fill(255, 0 , 0);
  }
  if(mouseX >= x * 7){
    fill(0);
  }
  square(mouseX, mouseY, 40);
}
