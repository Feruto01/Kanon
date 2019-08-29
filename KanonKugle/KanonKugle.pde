PVector location = new PVector (10, 350);
PVector velocity = new PVector (10, -5);
PVector acceleration = new PVector (0, 0);
PVector gravity = new PVector (0, 0.1);
PVector avelocity = new PVector (1,1);
PVector aacceleration = new PVector (1,1);




void setup(){
  size(600,600);
  frameRate(30);
}

void draw() {
  
  background(200);
  location.add(velocity);
  velocity.add(acceleration);
  //acceleration.x = acceleration.x  *   gravity.x;
    acceleration.y = acceleration.y  +   gravity.y;
  square (location.x,location.y,30);
pushMatrix();
rectMode(CENTER);
translate(location.x, location.y);
rotate(20);
popMatrix();
  
  
  if (location.y >= 600)
{
 velocity.y *= -0.8   ;
}
}
