void setup()
{
  frameRate(1);
}

int counter = 0;
void draw(){
 counter++;
 int result = counter % 6;
 println("Hi: " + result);
}

 
