PImage imgCharacters;
PImage imgPart;
final int space=10;
final int scale=3;
int x = space;
int y = space;
int partSize;



void setup()
{
 noFill();
 stroke(255);
 size(1300,500);
 imgCharacters = loadImage("DoYouKnowThem.jpg");
}

void draw()
{
  background(120);
  image(imgCharacters, space, space);
  //rect(space, space,imgCharacters.width, imgCharacters.height);
  partSize = imgCharacters.width / 8;
  rect(x, y, partSize, partSize);
  if(mouseButton == LEFT){
  x = mouseX - partSize / 2;
  y = mouseY - partSize / 2;
  }
  imgPart = imgCharacters.get(x, y, partSize, partSize);
  image(imgPart, space * 2 + imgCharacters.width, space, partSize * scale, partSize * scale);
}
