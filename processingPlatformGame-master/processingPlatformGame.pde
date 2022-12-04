Unicorn u;
Platform [] platforms;
boolean left, right, up, down, space, shift;

PImage [] spriteImages;
PImage laser;
int frames;

//Bullet [] bullets;
int nextBullet;

Timer firingTimer;

void setup() {
	size(800,600);

	frames = 12;
	spriteImages = new PImage[frames];
	for (int i = 0; i<frames; i++){
		spriteImages[i]=loadImage("unicorn"+nf(i+1,4)+".png");
	}
	laser = loadImage("laser.png");

	u = new Unicorn();
	platforms = new Platform[4];
	platforms[0] = new Platform (300,460,200,25,"safe");
	platforms[1] = new Platform (0,300,200,25,"safe");
	platforms[2] = new Platform (600,300,200,25,"safe");
	platforms[3] = new Platform (300,140,200,25,"safe");
	nextBullet = 0;

	left = false;
	right = false;
	up = false;
	down = false;
	space = false;
	shift = false;

	firingTimer = new Timer(300);
	firingTimer.start();
}

void draw() {
	background(255);
	u.update();
	for (int i = 0; i < platforms.length; ++i) {
		rectangleCollisions(u,platforms[i]);
		u.checkPlatforms();
	}
	u.checkBoundaries();

	u.display();

	for (int i = 0; i < platforms.length; ++i) {
		platforms[i].display();
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
void rectangleCollisions(Unicorn r1, Platform r2){
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
