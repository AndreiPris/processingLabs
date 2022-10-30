int radius = 30;        
int positionX, positionY;    
int dispalcementX = 2;  
int dispalcementY = 2;

int velocity = 5;


void setup() 
{
  size(842, 480);
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
  positionX = width/2;
  positionY = height/2;
}

void draw() 
{
  background(0);
  positionX = positionX + ( velocity * dispalcementX );
  positionY = positionY + ( velocity * dispalcementY );
  if (positionX > width-radius || positionX < radius) {
    dispalcementX *= -1;
  }
  if (positionY > height-radius || positionY < radius) {
    dispalcementY *= -1;
  }
  ellipse(positionX, positionY, radius, radius);
}

void keyPressed(){
  loop();
  if(key == 'r' || key == 'R'){
    positionX = width/2;
    positionY = height/2;
    velocity = 0;
  }
}

void mousePressed(){
  loop();
  if(mouseButton == LEFT && velocity == 0){
    velocity = 5;
  }
}
