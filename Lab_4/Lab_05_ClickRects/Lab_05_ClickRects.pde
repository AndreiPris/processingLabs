float posX;
float posY;
final int size = 20;
int pauseCounter = 0;
boolean start = false;
int hits = 0;
int missed = 0;

void setup(){
  size(900, 300);
  background(0);
  textSize(40);
  text("Press Space button to start", 200, 150);
}

void keyPressed(){
    if(key == ' '){
      start = true;
      pauseCounter = 100;
    }
}

void draw(){
  if(start == true){
    textSize(20);
    fill(255);
    pauseCounter ++;
    if(pauseCounter == 120){
      background(0);
      posX = random(width - size);
      posY = random(height - size);
      rect(posX, posY, size, size);
      pauseCounter = 0;  
      text("Hits: " + hits, 350, 30);
      text("Missed: " + missed, 500, 30);
    }
    if(missed >= 3){
      textSize(100);
      background(0);
      noLoop();
      fill(255, 0, 0);
      text("Game over!!!!", 200, 150);
    }
  }
}

void mousePressed(){
  if(start == true){
    if(mouseButton == LEFT){
        if(mouseX >= posX && mouseX <= posX + size && mouseY >= posY && mouseY <= posY + size){
          fill(0, 255, 0);
          hits ++;
        }else{
          fill(255, 0, 0);
          missed ++;
        }
      }
      rect(posX, posY, size, size);
  }
}
