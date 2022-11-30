int x, y, radius;
int frameCounter = 0;
int miss, hit;
int[] circles;
 
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
  frameCounter %= 60;
  if(frameCounter == 59){
    randomProperties();
  }
  circle(x, y, radius);
  arrSort(circles);
  for(int i = 0; i < circles.length; i++){
      circle(mouseX, mouseY, circles[i]);
  }
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
    hit++;
    circles[hit] += radius;
    randomProperties();
    frameCounter = 1;
    println(";)"+ circles[hit]);
  }
}

void arrSort( int[] numberArr){
  int max = 0;
  int temp;
  for(int i = 0; i < numberArr.length; i++){
    temp = numberArr[i];
    for(int j = i+1; i < numberArr.length; i++){
      if(max < numberArr[j]){
        max = numberArr[j
        temp = 
        
      }
      printArray(numberArr);
    }
  }
}
