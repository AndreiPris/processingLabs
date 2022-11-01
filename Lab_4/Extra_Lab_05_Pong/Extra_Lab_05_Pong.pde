int x = 0;
int y = 100;
int x1 = 580;
int y1 = 100;
int ballSpeed = 3;
int panelSpeed = 6;
int size = 200;
int radius = 20;        
int positionX, positionY;    
int dispalcementX = 2;  
int dispalcementY = 2;
int counter = 0;
int score = 0, score1 = 0;

void setup(){
  size(600, 400);
  frameRate(50);
  textSize(30);
  positionX = width/2;
  positionY = height/2;
}

void draw(){
  background(0);
  counter++;
  square(positionX, positionY, radius);
  rect(x, y, 20, size);
  rect(x1, y1, 20, size);
  text(score + " : " + score1, 270, 40);
  if(counter > 60){
    positionX = positionX + ( (ballSpeed + counter / 1000) * dispalcementX );
    positionY = positionY + ( (ballSpeed + counter / 1000) * dispalcementY );
    if (positionX < x + 20 && positionY > y && positionY < y + size) {
      dispalcementX *= -1;
    }
    if (positionX > x1 - 20 && positionY > y1 && positionY < y1 + size) {
      dispalcementX *= -1;
    }
    if (positionY > height-radius || positionY < radius) {
      dispalcementY *= -1;
    }
    if(positionX > width - 20){
      positionX = width / 2;
      positionY = height / 2;
      score += 1;
      counter = 0;
    }
    if( positionX < 0 - 20){
      positionX = width / 2;
      positionY = height / 2;
      score1 += 1;
      counter = 0;
    }
  }
  if(keyPressed){
    switch(key){
      case 'w':
        if(y > 0){
          y -= panelSpeed;
        }
      break;
      case 's':
        if(y < height - size){
          y += panelSpeed;
        }
      break;
      case CODED:
        if(keyCode == UP && y1 > 0){
          y1 -= panelSpeed;
        }
        if(keyCode == DOWN && y1 < height - size){
          y1 += panelSpeed;
        }
      break;
    }
  }
}
