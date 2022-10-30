int randomNum;
int num;
int counter = 0;

void setup(){
  size(400, 200);
  textSize(20);
  randomNum = int(random(10));
  println(randomNum);
}

void keyPressed(){
  num = key;
  counter++;
  
}


void draw(){
  background(0);
  text("Guesse a number between 0 and 9: ", 60, 50);
  //if(keyPressed){
    switch(key){
      case '0':
        num = 0;
      break;
      case '1':
        num = 1;
      break;
      case '2':
        num = 2;
      break;
      case '3':
        num = 3;
      break;
      case '4':
        num = 4;
      break;
      case '5':
        num = 5;
      break;
      case '6':
        num = 6;
      break;
      case '7':
        num = 7;
      break;
      case '8':
        num = 8;
      break;
      case '9':
        num = 9;
      break;
    }
  //}
  text("Guess N" + counter + ": you guessed number num " + num, 50, 100);
  if(num == randomNum){
    text("Nive you guessed the number in " + counter + " times", 40, 140);
  }
}
