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
  Vector2 a = new Vector2(1, 1);
  Vector2 b = new Vector2(3, 4);
  
  a.Add(b);
  
  
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

public class bebra{
  private int aboba;
  
  public bebra(int a){
    aboba = a;
  }
  
  public int GetAboba(){
    return aboba;
  }
}

public class Vector2{
  public float x;
  public float y;
  
  public Vector2(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  public Vector2 Add(Vector2 b){
    return new Vector2(this.x + b.x, this.y + b.y);
  }
  
  public Vector2 Subtract(Vector2 b){
    return new Vector2(this.x - b.x, this.y - b.y);
  }
}
