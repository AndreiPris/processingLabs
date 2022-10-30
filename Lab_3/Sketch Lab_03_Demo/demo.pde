PImage imgCharacters;
PImage imgPart;
final int space=10;
final int scale=3;

void setup()
{
 size(1300,500);
 imgCharacters = loadImage("characters.png");
}

void draw()
{
  background(120);
  image(imgCharacters, space, space);

  int partWidth = imgCharacters.width/8;
  int partHeight = imgCharacters.height/8;
  
  imgPart = imgCharacters.get(mouseX-partWidth/2,mouseY-partHeight/2,partWidth,partHeight);
  image(imgPart, space + imgCharacters.width + space, space, partWidth*scale, partHeight*scale);
}