int x = width / 2;
int y = height / 2;
void setup(){
 size(400, 200);
 frameRate(30);
}
void draw(){
  rect(width / 2 - 50, height / 2 - 20, 100, 40);
  if(mousePressed){
    if(mouseButton == LEFT){
      if(mouseX >= width / 2 - 50 && mouseX <= width / 2 + 50 &&
      mouseY >= height / 2 - 20 && mouseY <= height / 2 + 20){
        fill(50);
      }
      else{
        fill(255);
      }
    }
  }
}
