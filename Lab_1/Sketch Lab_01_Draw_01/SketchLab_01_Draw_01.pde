void setup() {
  //выполняется при запуске
  size(700, 150, P2D); // размер окна 
  smooth(8);
  //surface.setResizable(true); //позволяет менять размер ока 
 
}
void draw(){
  //filled house
  noStroke();
  background(#fffdd0);
  fill(255, 0, 0);
  rect(40, 60, 100, 55); // x y w h
  triangle(90, 5, 40, 60, 140, 60);
 
  // outlined house
  noFill();
  strokeWeight(2);
  stroke(0);
  triangle(200, 5, 150, 60, 250, 60);
  rect(150, 60, 100, 55);
  
  // yellow quad with black stroke
  fill(255, 255, 0);
  quad(260, 60, 300, 5, 340, 60, 300, 115);
  noFill();

  //flag
  strokeCap(SQUARE);
  strokeWeight(5);
  line(360, 115, 360, 20);
  strokeWeight(1);
  noStroke();
  fill(0);
  rect(360, 20, 20, 40);
  fill(255, 255, 0);
  rect(380, 20, 20, 40);
  fill(255, 0, 0);
  rect(400, 20, 20, 40);
  
  //game board
  rectMode(CORNER);
  fill(0);
  rect(450, 10, 90, 90);
  fill(255);
  rect(450, 40, 30, 30);
  rect(510, 40, 30, 30);
  rect(480, 10, 30, 30);
  rect(480, 70, 30, 30);
  
  //3 ellipses
  noStroke();
  fill(255, 0, 0);
  ellipse(620, 60, 80, 40);
  fill(124,252,0);
  ellipse(620, 60, 40, 80);
  strokeWeight(2);
  stroke(255, 0, 0);
  fill(255, 255, 0);
  ellipse(620, 60, 40, 40);
  
  
  
  
  
  
}
