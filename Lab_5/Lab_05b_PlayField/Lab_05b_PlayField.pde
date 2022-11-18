int x = 0;
int y = 0;
void setup(){
  size(300, 300);
  background(255);
}

void draw(){
  fill(0);
  for(int i = 0; i < height; i++){
  circle(x, y, 10);  
  x += 20;
  if(x > width){
    x = 0; 
    y += 20;
  }
  }
}
