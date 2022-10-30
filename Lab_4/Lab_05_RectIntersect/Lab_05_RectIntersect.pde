int l1 = 100, t1 = 100, r1 = 250, b1 = 150;
int l2 = 450, t2 = 100, r2 = 350, b2 = 150;
int speed = 5;

void setup(){
  size(1000, 500);
}

void draw(){
  background(0);
  fill(255, 0, 0);
  if(l2 >= l1 && l2 <= l1 + r1 && t2 >= t1 && t2 <= t1 + b1){
    fill(0, 255, 0);
  }
  if(l2 + r2 >= l1 && l2 + r2 <= l1 + r1 && t2 + r2 >= t1 && t2 + r2 <= t1 + b1){
    fill(0, 255, 0);
  }
  //if( && t2 + b2 >= t1 && t2 + b2 <= t1 + b1){
  //  fill(0, 255, 0);
  //}
  rect(l1, t1, r1, b1);
  fill(0, 0 , 255);
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
