int x = 10;
int i = 0;
int ai, player;
String text = "";
int size = 21;
String textAi = "";
int k;
String winner = "";
boolean ref = false;

void setup() {
  size(600, 400);
  background(255);
  textSize(25);
  ellipseMode(CORNER);
}

void draw() {
  fill(100);
  text("Push 1, 2 or 3 to take mathes from the pile", 0, 25);
  while(i < size){
     fill(255, 0, 0);
     ellipse(x - 1, 37, 17, 30);
     fill(240,230,140);
     rect(x, 60, 15, 100); 
     x += 20;
     i++;
  }
  text("You: " + text, 10, 200);
  text("Ai: " + textAi, 10, 240);
  if(ref == true){
    background(255);
    text(winner + " won", width / 2 - 100, height / 2);
    noLoop();
    return;
  }
}

void keyReleased(){
  if(key == '1' || key == '2' || key == '3'){
    background(255);
    player = int(key);
    text = "you removed " + key;
    ai = int(random(1, 3));
    textAi = "ai removed " + ai;
    k = key;
    println(k);
    size -= (k - 48); 
    if(size <= 0){
      background(255);
      textSize(50);
      winner = "You";
      ref = true;
    }
    size -= ai;
    if(size <= 0 && ref == false){
      background(255);
      textSize(50);
      winner = "Ai";
      ref = true;
    }
  }
  else{
    background(255);
    text = "Only 1, 2 or 3, allowed!";
  }
  i = 0;
  x = 10;
}
