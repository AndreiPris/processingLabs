int a = 255;

void setup(){
  size(512, 100);
}

void draw(){
   for(int i = 0; i < 256; i += 1){
     stroke(i);
     line(i, 0, i, height);
     stroke(a);
     line(255 + i, 0, 255 + i, height);     
     print(255 + i);
     println(i);
     a -= 1;
   }
  noLoop();
}
