float deposit = 1000.0;
float income = 0.0;


void setup(){
  size(300, 300); 
  textSize(10);
  background(255);
}

void draw(){
  fill(0);
  text("Savings", 0, 10);
  text("Account",  50, 10);
  for(int i = 1; i <= 10; i++){
     income = deposit / 100.0 * 102.0;
     println(income);
     deposit = income;
     text(i, 0, 10 * i + 10);
     text(nf(income, 4, 1), 50, 10 * i + 10);
  }
  noLoop();
  
}
