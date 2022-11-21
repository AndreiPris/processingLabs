int x = 0;
int y = 0;
int[] arrX = new int[1000];
int[] arrY = new int[1000];
int i = 0;
int size = 10;

void setup(){
  size(300, 300);
  background(255);
}

void draw(){
  background(255);
  while(y < height + 10){
    fill(0);
    arrX[i] = x;
    arrY[i] = y;
    println(arrX[i]);
    println(arrY[i]);
    circle(x, y, size);
    x += 20;
    if(mouseX <= arrX[i] + size / 2 && mouseX >= arrX[i] - size / 2 
    && mouseY <= arrY[i] + size / 2 && mouseY >= arrY[i] - size / 2){
      fill(255, 0, 0);
      circle(arrX[i], arrY[i], size * 2);
    }
    if(x > width){
      x = 0;
      y += 20;
    }
    i++;
    }
    i = 0;
    y = 0;
  //noLoop();
}
