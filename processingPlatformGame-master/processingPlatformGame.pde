Dino u;
Platform [] platforms;
Platform firstPlatform;
boolean left, right, up, down, space, shift;

PImage [] spriteImages;
PImage laser;
PImage fire;

int frames;
int platfY = 600;
int c = 4;
float randomX;
int imgY, imgX, imgH = 180;
float speed = 0.5;
int m;
int score;

PImage imgFire;
PImage imgFrame;
int frameCounter = 0;
final int numFrame = 8;
int frameWidth;
int frameHeight;
int counter = 0;


void setup() {
	size(700,1000);
  frameRate(60);
	frames = 2;
  fire = loadImage("fire.jpg");
  imgFire = loadImage("Fire1.png");
  
	spriteImages = new PImage[frames];
	for (int i = 0; i<frames; i++){
		spriteImages[i]=loadImage("dino" + nf(i+1, 4) + ".png");
	}
	//laser = loadImage("laser.png");

  c = 4;
	u = new Dino();
	platforms = new Platform[6];
  firstPlatform = new Platform(250, height - 250, 200, 20, "safe");

  randomiser();
	left = false;


	right = false;
	up = false;
	down = false;
	space = false;
	shift = false;
  
  imgY = height - imgH;

}

void draw() {
  counter ++;
  counter %= 8;
  second();
	background(0);
	u.update();
  dispalyFirstPaltform();
  m = second() % 3;
	for (int i = 0; i < platforms.length; ++i) {
    platforms[i].y += speed;
		rectangleCollisions(u,platforms[i]);
    if(platforms[i].y > imgY){
      randomX = random(0, width - 100);
      platforms[i] = new Platform (randomX, platfY + 200, 150 ,20,"safe");
    }
    u.checkPlatforms();
	}
	u.checkBoundaries();
	u.display();
	for (int i = 0; i < platforms.length; ++i) {  
		platforms[i].display();
	}
  if(m == 2){
    speed += 0.001;
    score += 1;
  }
  fireAnimation(-10, imgY);
  fireAnimation(90, imgY);
  fireAnimation(180, imgY);
  fireAnimation(270, imgY);
  fireAnimation(360, imgY);
  fireAnimation(450, imgY);
  fireAnimation(540, imgY);
  fireAnimation(630, imgY);
  fireAnimation(630, imgY);
  //image(fire, 0, imgY, width, imgH);
  textSize(30);
  text("Score: " + score, 10, 30);
  if(u.y > imgY){
    gameOver();
    noLoop();
  }
}

void fireAnimation(int imgX, int imgY){
  frameWidth = imgFire.width / numFrame;
  frameHeight = imgFire.height;
  imgFrame = imgFire.get(frameWidth * frameCounter, 0, frameWidth, frameHeight);
  image(imgFrame, imgX, imgY, 100, imgH);
  if(counter >= 7){
  frameCounter++;
  }
  if(frameCounter >= 8){
    frameCounter = 0;
  }
}

void dispalyFirstPaltform(){
  if(firstPlatform.y < imgY){
    firstPlatform.y += 0.5;
    rectangleCollisions(u, firstPlatform);
    u.checkPlatforms();
    firstPlatform.display();
  }
}


void gameOver(){
  background(255, 0, 0);
  textSize(30);
  text("Score: " + score, 10, 30);
  text("GAME OVER!!", width / 2 - 100, height / 2);
  text("YOU CAN NOT ESCAPE FROM HELL!!", width / 2 - 250, height / 2 - 30);
}

void randomiser(){
   for (int i = 0; i < platforms.length; ++i) {
     randomX = random(0, width - 100);
     platforms[i] = new Platform (randomX, platfY, 150, 20, "safe");
     platfY -= 150;
  }
}


void keyPressed(){
  switch (keyCode){
    case 37://left
      left = true;
      break;
    case 39://right
      right = true;
      break;
    case 38://up
      up = true;
      break;
    case 40://down
      down = true;
      break;
    case 32: //space
      space = true;
      break;
    case 16: //shift
      shift = true;
  }
}
void keyReleased(){
    switch (keyCode){
    case 37://left
      left = false;
      break;
    case 39://right
      right = false;
      break;
    case 38://up
      up = false;
      break;
    case 40://down
      down = false;
      break;
    case 32: //space
      space = false;
      break;
    case 16: //shift
      shift = false;
  }
}
void rectangleCollisions(Dino r1, Platform r2){
  ////r1 is the player
  ////r2 is the platform rectangle
  float dx = (r1.x+r1.w/2) - (r2.x+r2.w/2);
  float dy = (r1.y+r1.h/2) - (r2.y+r2.h/2);

  float combinedHalfWidths = r1.halfWidth + r2.halfWidth;
  float combinedHalfHeights = r1.halfHeight + r2.halfHeight;

  if (abs(dx) < combinedHalfWidths){
    ////a collision may be happening
    ////now check on the y axis
    if (abs(dy) < combinedHalfHeights){
      ////excellent. they are overlapping
      //determine the overlap on each axis
      float overlapX = combinedHalfWidths - abs(dx);
      float overlapY = combinedHalfHeights - abs(dy);
      ////the collision is on the axis with the 
      ////SMALLEST about of overlap
      if (overlapX >= overlapY){
        if (dy > 0){
          r1.collisionSide = "top";
          ////move the rectangle back to eliminate overlap
          ////before calling its display to prevent
          ////drawing object inside each other
          r1.y += overlapY;
          // println("collisionSide: "+r1.collisionSide);
        }else{
          r1.collisionSide = "bottom";
          r1.y -= overlapY;
          // println("collisionSide: "+r1.collisionSide);
        }
      }else{
        if (dx > 0){
          r1.collisionSide = "left";
          r1.x += overlapX;
          // println("collisionSide: "+r1.collisionSide);
        }else{
          r1.collisionSide = "right";
          r1.x -= overlapX;
          // println("collisionSide: "+r1.collisionSide);
        }
      }
    } else {
      r1.collisionSide = "none";
    }
  }else {
    r1.collisionSide = "none";
  }
  // return collisionSide;
}
