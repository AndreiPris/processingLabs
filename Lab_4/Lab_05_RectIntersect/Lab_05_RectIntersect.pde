int l1 = 50, t1 = 50, r1 = 150, b1 = 150;
int l2 = 250, t2 = 50, r2 = 350, b2 = 150;
int speed = 5;

void setup(){
  size(600, 500);
}

void draw(){
  background(0);
  fill(255, 0, 0);
  if(b1 < t2 || b2 < t1 || r1 < l2 || r2 < l1){
    fill(180);
  }else{
  fill (0, 255, 0);
  }
  rectMode(CORNERS);
  rect(l1, t1, r1, b1);
  rect(l2, t2, r2, b2);
  
}

void keyPressed(){
  switch(key){
  case 'w':
    t2 -= speed;
  break;
  case 's':
    t2 += speed;
  break;
  case 'a':
     l2 -= speed;
  break;
  case 'd':
    l2 += speed;
  break;
  }
}
