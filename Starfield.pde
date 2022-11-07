class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle() {
    myX = 500;
    myY = 300;
    myAngle = Math.random()*Math.PI*2;
    mySpeed = (Math.random()*11);
    myColor = color(225+(int)(Math.random()*10)+1, 8+(int)(Math.random()*16)+1, 5+(int)(Math.random()*10)+1);
  }
  void move() {
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
    if (myY < 0 || myX < 0 || myY > 1000 || myX > 1000){
      myX = 500;
      myY = 300;
    }
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 5, 5);
  }
}

 class OddballParticle extends Particle
{
  OddballParticle() {
    myX = 500;
    myY = 300;
    myAngle = Math.random()*Math.PI*2;
    mySpeed = (Math.random()*11);
    myColor = color(245,161,72);
  }
  void move() {
    myX += Math.cos(myAngle)*mySpeed/2;
    myY += Math.sin(myAngle)*mySpeed/2;
    if (myY < 0 || myX < 0 || myY > 1000 || myX > 1000){
      myX = 500;
      myY = 300;
    }
}
}
  Particle[] p;
 
  void setup(){
    size(1000,1000);
    noStroke();
    p = new Particle[100];
    for(int i = 0; i < 10; i++)
    p[i] = new OddballParticle();
    for(int i = 10; i < p.length; i++)
    p[i] = new Particle();
  }
  void draw(){
    background(0);
    for(int i = 0; i < p.length; i++){
    p[i].move();
    p[i].show();
    }
    fill(150);
    rect(497,304,5,697);
  }
