PImage dog; 
PImage dogtreat; 
PImage dogbowl; 
PImage grass; 


float x; 
float y; 
float easing = 0.05; 




void setup()
{
  size(1000, 600); 
  noStroke(); 
  dog = loadImage("dog.png"); 
  dogtreat = loadImage("dogtreat.png");
  dogbowl = loadImage ("dogbowl.png");
  grass = loadImage ("grass.png");
} 

void draw() 
{   
  background(0);
  
  grass.resize(width, height);
  image (grass, 0, 0); 

  float targetX = mouseX; 
  float dx = targetX - x; 
  x += dx * easing; 

  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  image(dog, x, y, 150, 150);


  dog.resize(150, 130); 

  dogbowl.resize(100, 100); 
  image(dogtreat, mouseX, mouseY); 
  dogtreat.resize(45, 45);

  if (key == 'a') 
  {
    image (dogbowl, mouseX, mouseY);
  } 
  else 
  {
    fill(0);
  }
  
  if (key == 'c') 
  {
    image (dogtreat, mouseX, mouseY);
  } 
  else 
  {
    fill(0);
  }
  
  
}