
class Balls{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float angle;

  //Constructor for creating balls
  Balls(float lx, float ly, float vx, float vy){
    location = new PVector(lx,ly);
    velocity = new PVector(vx,vy);
    acceleration = new PVector();
    angle = 0;
  }
  
  
  //Updates the movement based on velocity, gravity etc.
  void ballMovement(){
    location.add(velocity);
    velocity.add(acceleration);
    // Vindmodstand
    velocity.mult(0.98);
    acceleration.y = acceleration.y  +   gravity.y;

    //Vinkel rotation
    //We earlier used a system with angular acceleration, but we found that for this simulation, a simpler approach was better
    angle = angle + velocity.mag()*0.01;
  }


  //Tests for collision
  void testCollision(){
     //Takes care of our collision with walls
     if (location.y >( height-10) || location.y <= 0)
      {
       //Velocity is multiplied by a float, making collision slow down the ball, also resets the angle.
       velocity.y *= -0.4;
       velocity.x *= 0.9;
       angle =0;
    }

    //Resets the height
    if(location.y > (height) ){
     location.y = (height);
    }

    if(location.x <= 0 || location.x >= width){
      velocity.x *= -1;
    }
  }

  //Draws our cannonball
  void drawCannonball(){

    pushMatrix();
    translate(location.x, location.y);
    rotate(angle);
    fill(0,0,0);
    rect( 0,0 ,30,30);
    popMatrix();
  }
}
