int count;
boolean start = false;
int s = 0; 
int s1 = 0; 
int cx = 20;
int cx1 = 60;
int cx2 = 100;
int w = 35;
int w1 = 65;

int c1x = 20;
int c1x1 = 60;
int c1x2 = 100;
int w2 = 35;
int w3 = 65;



void setup(){
  size(700, 200);
  frameRate(1);
}

void draw(){
    background(0);
    noStroke();
    fill(255, 255, 0);
    circle(w, 80, 20);
    circle(w1, 80, 20);
    quad(cx, 50, cx1, 50, cx2, 80, cx, 80);
    
    fill(0, 0, 255);
    circle(w2, 180, 20);
    circle(w3, 180, 20);
    quad(c1x, 150, c1x1, 150, c1x2, 180, c1x, 180);
    
    stroke(255, 255, 0);
    line(0, 90, width, 90);
    stroke(0, 0, 255);
    line(0, 190, width, 190);
    count ++;
    //println(count);
    textSize(50);
    if(count == 1)
    {
      fill(255, 0, 0);
      text("1" , 330, 100);
    }
    if(count == 2){
      fill(255, 0, 0);
       text("2" , 330, 100);
    }
    if(count == 3){
      fill(255, 0, 0);
       text("3" , 330, 100);
    }
    if(count == 4){
      fill(0, 255, 0);
       text("GO" , 320, 100);

    }
    if(count == 5){
      start = true;
      frameRate(100);
    }
    
    if(start){
       s = int(random(2, 6));
       s1 = int(random(2, 6));
       start = false;
       println(s);
    }
    
    cx += s;
    cx1 += s;
    cx2 += s;
    w += s;
    w1 += s;
    
    c1x += s1;
    c1x1 += s1;
    c1x2 += s1;
    w2 += s1;
    w3 += s1;
    
    if(cx2 > width || c1x2 > width)
    {
      fill(255);
      if(cx2 > width && c1x2 < width){
        text("Yellow WINS!!!!", 200, 50);
        noLoop();
      }
      if(cx2 < width && c1x2 > width){
        text("Blue WINS!!!!", 200, 50);
        noLoop();
      }
      if(cx2 > width && c1x2 > width){
        text("Tie!!!!!", 250, 50);
      }
      noLoop();
    }
}
