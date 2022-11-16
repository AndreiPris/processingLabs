int keyNr;
char letter;
char player;
float randomColor;     
int counter = 30;
float r, g, b;
int hits = 0, misses = 0;

 public void setup(){
   size(500, 500);
  frameRate(10);
  noStroke();
  textSize(30);
}

 public void draw(){
  if(letter != player && counter == 30){
     misses += 1;
   }
   if(counter == 30){
     keyNr = PApplet.parseInt(random(97, 123));
     letter = PApplet.parseChar(keyNr);
     r = random(255);
     g = random(255);
     b = random(255);
     counter = 0;
   }
   fill(r, g, b);
   circle(width / 2, height / 2, 50);
   fill(255);
   rect(0, height - 50, width, 50);
   fill(0);
   text(letter, width / 2 - 7, height / 2 + 10);
   text("HITS : " + hits + " / " + "MISSES : " + misses, 130, height - 15);
   if(misses >= 3){
     fill(255, 0, 0);
     rect(0, 0, width, height - 50);
     fill(0);
     text("GAME OVER!!!", width / 2, height / 2);
     counter = 31;
   }
   counter++;
}

 public void keyReleased(){
  player = key;
   if(letter == player){
      hits += 1;
   }
}
