float degrees = 360;
float radians;
int size = 200;
float testH;
float testW;

void setup (){
   size(300, 300); 
   //noStroke();
   strokeWeight(1);
}

void draw(){
  testH = height / 2 - size / 2;
  testW = width / 2;
  radians = radians(degrees);
  circle(width / 2, height / 2, size);
  
  for(int i = 0; i < 100; i ++){
    //fill(random(255));
    line(width / 2, height / 2,  testW, testH);
    testW += 1;
    testH += 1;
  }
  println(radians);
  noLoop();
}

// идея можно разделить круг на четыре части
// и когда он будет больше значения ппервой части поменять знаки направления
