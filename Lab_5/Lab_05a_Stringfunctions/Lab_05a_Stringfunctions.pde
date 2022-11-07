int rectY;
int h = 30;
//int counter = 0;
int len = 0;
int match = 0;
String last = "";
String str = "";
String mid = "";
String[] arr = {"Clear", "Capitals", "Last character", "MIddle character", "Match?"};


void setup() {
  size(500, 400);
  rectY = height / 6;
  textSize(17);
}

void draw() {
  background(180);
  fill(255);
  rect(50, rectY - h, 200, h);
  for (int i = 1; i < 6; i++)
  {
    fill(180);
    rect(width / 1.5f, rectY * i - h, 150, h);
    fill(0);
    text(arr[i-1], width / 1.5f + 10, rectY * i - 5);
  }
  fill(0);
  text(str, 60, rectY - 5);
  text(last, 60, rectY * 3 - 5);
  text(mid, 60, rectY * 4 - 5);
  if(match > 0){
    text("Yes!", 60, rectY * 5 - 5);
  }
  if(match < 0){
    text("NO!", 60, rectY * 5 - 5);
  }
}

void keyReleased() {
  if ((key >= 'A' && key <= 'z') || key == ' ')
    str += key;
    len = str.length();
}

void mousePressed() {
  if (mouseButton == LEFT) {
    if (mouseX > width / 1.5f && mouseX < width / 1.5f + 150 &&
      mouseY > rectY * 1 - h && mouseY < rectY * 1) {
      str = "";
    }
    if (mouseX > width / 1.5f && mouseX < width / 1.5f + 150 &&
      mouseY > rectY * 2 - h && mouseY < rectY * 2) {
      str = str.toUpperCase();
    }
    if (mouseX > width / 1.5f && mouseX < width / 1.5f + 150 &&
      mouseY > rectY * 3 - h && mouseY < rectY * 3) {
      last = str.substring(len - 1, len);
    }
    if (mouseX > width / 1.5f && mouseX < width / 1.5f + 150 &&
      mouseY > rectY * 4 - h && mouseY < rectY * 4) {
      if(len % 2 == 1){
        mid = str.substring(len / 2, len / 2 + 1);
      }else{
        mid = str.substring(len / 2 - 1, len / 2 + 1);
      }  
    }
    if (mouseX > width / 1.5f && mouseX < width / 1.5f + 150 &&
    mouseY > rectY * 5 - h && mouseY < rectY * 5) {
      match = str.indexOf("DAE");
    }
  }
}
