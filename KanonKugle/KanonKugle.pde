PVector location = new PVector (0, 1000);
PVector velocity = new PVector (20, -15);
PVector acceleration = new PVector (0, 0);
PVector gravity = new PVector (0, 0.1);
PVector avelocity = new PVector (1,1);
PVector aacceleration = new PVector (1,1);




void setup(){
  size(1920,1080);
  frameRate(30);
}

void draw() {
  
  background(200);
  location.add(velocity);
  velocity.add(acceleration);
  velocity.mult(0.98);

    acceleration.y = acceleration.y  +   gravity.y;
  square(location.x,location.y,30);
//pushMatrix();
//rectMode(CENTER);
//translate(location.x, location.y);
//rotate(20);
//popMatrix();
  
  
  if (location.y >= height)
{
 velocity.y *= -1   ;
}
if (location.x >= width)
velocity.x *= -1     ;
}
