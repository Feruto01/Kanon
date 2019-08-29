PVector location = new PVector;
PVector velocity = new PVector (50, -50);
PVector acceleration = new PVector (0, 0);
PVector gravity = new PVector (0, 0.1);





void setup(){


  size(1920,1080);
  frameRate(30);
  startKnobs();
  location.x = kanonX.getValue();
}

void draw() {

  background(200);
  location.add(velocity);
  velocity.add(acceleration);
  // Vindmodstand
  velocity.mult(0.98);

    acceleration.y = acceleration.y  +   gravity.y;
  rect(location.x,location.y,30,30);
//pushMatrix();
//rectMode(CENTER);
//translate(location.x, location.y);
//rotate(20);
//popMatrix();


  if (location.y >= height || location.y <= 0)
{
 velocity.y *= -1   ;
}
if (location.x >= width || location.x <= 0)
velocity.x *= -1     ;


}
