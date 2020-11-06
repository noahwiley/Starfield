 Particle[] blobs = new Particle[1000];
//your code here
void setup()
{
  size(400,400);
  for(int i=0; i<blobs.length; i++){
    blobs[i] = new Particle();
    blobs[0] = new OddballParticle();
  }
}
void mousePressed()
{
   for(int i=0; i<blobs.length; i++)
  {
    blobs[i].myX = blobs[i].myY = 200;
   }
}

void draw()
{
  background(0);
  for(int i=0; i<blobs.length; i++)
  {
    blobs[i].move();
   }
   for(int i=0; i<blobs.length; i++)
  {
    blobs[i].show();
   }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  
  Particle()
  {
    myX = myY = 200;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move()
  {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY,10,10);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle()
  {
    myX = myY = 200;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move()
  {
    myX= myX + (int)(Math.random()*11)-5;
    myY= myY + (int)(Math.random()*11)-5;
  }
  void show()
  {
    noStroke();
     fill(myColor);
     for(int i = 0; i < 20; i++){
     rect((float)myX,  (float)myY, 25 - i, 25 - i);
     rect((float)myX, (float)myY, 10, 10);
  }
}
}
