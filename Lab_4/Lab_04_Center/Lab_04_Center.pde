int y;

void setup() 
{
  size(200, 200);
  fill(255, 0, 0);
}

void draw() 
{
  background(200);
  y = y % 200;
  line(0, y, width, y);
  if(y <= height / 2){
    circle(width / 2, height / 2, 50);
  }
  else{
    square(width / 2 - 25, height / 2 - 25, 50);
  }
  y++;
}
