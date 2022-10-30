PImage src;
int threshold = 150;

void setup(){
  size(800, 600);
  textAlign(CENTER);
  background(255);
  fill(0);


  src = loadImage("snoopy-dance.png");
  src.resize(80, 60);
  src.loadPixels();

 
  for(int i=0; i<src.pixels.length; i++ ){
      int col = src.pixels[i];

    if(brightness(col) < threshold){
      int x = i%src.width * 10;
      int y = i/src.width * 10 +10;
      text("snoopy", x, y );
    }
  }
  src.updatePixels();
}
