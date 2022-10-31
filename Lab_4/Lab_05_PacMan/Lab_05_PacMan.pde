int radius = 12;
int direction = 1;
int direction2 = 0;

float x = 250;
float y = 250;


void setup() {
  size(500, 500);
  ellipseMode(RADIUS);
}

void draw() {
  background(0);
  text("press d to start", 200, 200);
  fill (255, 255, 0);
  smooth ();
  noStroke();
  render();

}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      x = x - 10;
      direction = -1;
      direction2 = 0;
    }
    else if (keyCode == RIGHT) {  
      x = x + 10;
      direction = 1;
      direction2 = 0;
    }
    else if (keyCode == UP) {
      y = y - 10;
      direction = 0;
      direction2 = -1;
    }
    else if (keyCode == DOWN) { 
      y = y + 10;
      direction = 0;
      direction2 = 1;
    }
  }
}


void render() {
  for ( int i=-1; i < 2; i++) {
    for ( int j=-1; j < 2; j++) {
      pushMatrix();
      translate(x + (i * width), y + (j*height));
      if ( direction == -1) { 
        rotate(PI);
      }
      if ( direction2 == 1) { 
        rotate(HALF_PI);
      }
      if ( direction2 == -1) { 
        rotate( PI + HALF_PI );
      }
      arc(0, 0, radius, radius, map((millis() % 500), 0, 500, 0, 0.52), map((millis() % 500), 0, 500, TWO_PI, 5.76) );
      popMatrix();
      // mouth movement //
    }
  }
}
