void setup() {
  size(300, 300);
  background(255);
  strokeWeight(1);
  frameRate(100);
}

  float counter;
  float cx;
  float cy;
  float cRadius = 100;
  
void draw() {
   cx = width / 2;
   cy = height / 2;
   while(counter < 2 *PI){
     float x1 = sin(counter) * cRadius + cx;
     float y1 = cos(counter) * cRadius + cy;
     stroke(random(255), random(255), random(255));
     line(cx , cy , x1 , y1);
     counter += 2 * PI / 500;
   }
}
  
