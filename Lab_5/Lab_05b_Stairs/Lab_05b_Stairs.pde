int x1 = 5, x2 = 10, y1 = 5, y2 = 5;
int counter = 0;
void setup(){
   size(200, 200);  
}

void draw(){
  while(x1 < width - 5 && y1 < height && x2 < width - 5 && y2 < height){
    line(x1, y1, x2, y2);
    counter++;
    counter = counter % 2;
    println(counter);
    if(counter == 0){
      x2 += 5;
      y2 += 5;
    }
    if(counter == 1){
      x1 += 5;
      y1 += 5;
    }
  }
  
  x1 = width - 5; x2 = width - 10; y1 = 5; y2 = 5;
  
  while(x1 > 0 && y1 < height && x2 > 0 && y2 < height){
    line(x1, y1, x2, y2);
    counter++;
    counter = counter % 2;
    println(counter);
    if(counter == 0){
      x2 -= 5;
      y2 += 5;
    }
    if(counter == 1){
      x1 -= 5;
      y1 += 5;
    }
  }
  noLoop();
}
