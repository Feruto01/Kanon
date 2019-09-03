//Imports Control p5, and gives it the name cp5, for easier access.
import controlP5.*;
ControlP5 cp5;

//Defines an arraylist that keeps track of the balls
ArrayList<Balls> balls = new ArrayList<Balls>();
PVector gravity = new PVector (0, 0.01);


void setup(){
  size(1900,800);
  frameRate(30);
  startKnobs();
  rectMode(CENTER);
}




void draw() {

  background(200);
 //Draws the cannon


  //Calls all the balls, and updates them
  for(int i = 0; i< balls.size(); i++){
      update(balls.get(i));
  }
  
  drawCannon();
}




//Tests if the user presses "f", if they do, the ball will shoot at an angle and speed defined by the knobs
void keyPressed(){
  if(key == 'f'){

    balls.add(new Balls(10,height-60,cos(radians(shotAngle.getValue()))*(40+magnitude.getValue()),-sin(radians(shotAngle.getValue()))*(40+magnitude.getValue())));

  }
}



void drawCannon(){
  //Draws Cannon

  pushMatrix();

  translate (0,height -60);
  fill(82,89,47);
  ellipse(65,11,90,90);
  rotate (0-radians(shotAngle.getValue()));
  fill(39,89,54);
  rect(0,0,400,60);

  popMatrix();

  pushMatrix();
  translate (0,height -60);

  fill(106,115,61);
  ellipse(60,10,90,90);
  popMatrix();

}

void update(Balls anyball){
  //Tests for collision
  anyball.testCollision();

  //Moves the ball
  anyball.ballMovement();

  //Draws the cannonball
  anyball.drawCannonball();


}
