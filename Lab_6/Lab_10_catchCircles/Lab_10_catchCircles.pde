int x, y, radius;
int frameCounter = 0;
int miss, hit;
int[] circles;
boolean play = true;
 
void setup(){
  size(500, 500);
  frameRate(30);
  circles = new int[11];
  circles[0] = 10;
}

void randomProperties(){
  stroke(random(0, 200), random(0, 200), random(0, 200));
  radius = int(random(10, 50));
  x = int(random(radius / 2, width - radius / 2));
  y = int(random(radius / 2, height - radius / 2));
}

void draw(){
  background(255);
  fill(255);
  frameCounter %= 60;
  if(frameCounter == 59){
    randomProperties();
  }
  circle(x, y, radius);
  arrSort(circles);
  for(int i = 0; i < circles.length; i++){
      circle(mouseX, mouseY, circles[i]);
  }
  fill(0);
  text("Hits: " + hit + " Misses: " + miss, 10, 10);
  frameCounter += 1;
  endGame();
  if(!play){
    noLoop();
  }
}

void mousePressed(){
  if((mouseX < x - radius / 2 || mouseX > x + radius / 2)
  || (mouseY < y - radius / 2 || mouseY > y + radius / 2)){
    randomProperties();
    frameCounter = 1;
    miss ++;
  }else{ 
    hit++;
    circles[hit] += radius;
    randomProperties();
    frameCounter = 1;
  }
}

void arrSort( int[] numberArr){
  boolean sorted = false;
  int temp;
  while(!sorted) {
    sorted = true;
    for (int i = 0; i < numberArr.length - 1; i++) {
      if (numberArr[i] < numberArr[i+1]) {
        temp = numberArr[i];
        numberArr[i] = numberArr[i+1];
        numberArr[i+1] = temp;
        sorted = false;
      }
    }
  }
}

void endGame(){
  if(hit >= 10){
    fill(0);
    background(0, 255, 0);
    textSize(30);
    text("CONGLATULATIONS!!", width / 2 - 130, height / 2);
    play = false;
  }
  if(miss >= 3){
    fill(0);
    background(255, 0, 0);
    textSize(30);
    text("GAME OVER!!", width / 2 - 100, height / 2);
    play = false;
  }
  
}
