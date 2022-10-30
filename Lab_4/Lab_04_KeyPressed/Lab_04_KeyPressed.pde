int radius = 30;        
int positionX, positionY;    
int dispalcementX = 1;  
int dispalcementY = 1;  


void setup() 
{
  size(840, 480);
  stroke(0);
  frameRate(30);
  ellipseMode(RADIUS);
  positionX = width/2;
  positionY = height/2;
}
void draw() 
{
  rect(positionX, positionY, radius, radius);
  println(positionX);
  println(positionY);
  if(keyPressed){
  switch(key){
    case 'w':  
    case 'z':
      positionY += radius * -dispalcementY;
    break;
    case 's':
      positionY += radius * dispalcementY;
    break;
    case 'a':
    case 'q':
      positionX += radius * -dispalcementX;
     break;
    case 'd':
      positionX += radius * dispalcementX;
    break;
    }
   }
      
    if(positionX > width-radius){
      positionX -= radius;
    }
    if(positionX < 0){
      positionX += radius;
    }
    if(positionY > height - radius){
      positionY -= radius;
    }
    if(positionY < 0){
      positionY += radius;
    }  
}
