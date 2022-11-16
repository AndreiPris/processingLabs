int x = 15;
int y = 10;
int i = 2;

void setup(){
  size(200, 200);
  textSize(10);
  noStroke();
  fill(0);
  background(255);
}

void draw(){
  for(i = 2; i <= 30; i += 2){  
    text(i, x, y);
    y += 10;
    if(i == 8){
      x -= 5;
    }   
  }
  println(i);
  i = 2;
  y = 10;
  
  while(i <= 30){
    text(i, x + 20, y);
    y += 10;
    if(i == 8){
      x -= 5;
    }   
    i += 2;
  }
  
  i = 2;
  y = 10;
  
  do{
    text(i, x + 40, y);
    y += 10;
    if(i == 8){
      x -= 5;
    }   
    i += 2;
  }while(i <= 30);
  
  y = 10;
  
  for(i = 30; i > 0; i -= 2){  
    text(i, x + 60, y);
    y += 10;
    if(i == 10){
      x += 5;
    }   
  }
  noLoop();
}
  
