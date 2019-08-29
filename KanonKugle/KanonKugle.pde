import controlP5.*;
ControlP5 cp5;
PVector location = new PVector (0, 700);
PVector velocity = new PVector (5, -3);
PVector acceleration = new PVector (0, 0);
PVector gravity = new PVector (0, 0.001);

float  avelocity      ;
float  aacceleration  ;
float  angle          ;



void setup(){


  size(1920,800);
  frameRate(30);
  startKnobs();
  location.x = kanonX.getValue();
  rectMode(CENTER);
}

void draw() {




  //Draws Canon
  background(200);
  pushMatrix();


  translate (20,height - kanonY.getValue()-60);
  rotate (0-radians(shotAngle.getValue()));

  fill(0,255,0);
  rect(0,0,400,60);



  popMatrix();

  location.add(velocity);
  velocity.add(acceleration);
  // Vindmodstand
  velocity.mult(0.98);
  aacceleration = acceleration.mag()*0.01;


  angle = angle + avelocity;


  avelocity = avelocity + aacceleration;

  acceleration.y = acceleration.y  +   gravity.y;

  pushMatrix();

translate(location.x, location.y);
rotate(angle);
  fill(0,0,0);
  rect( 0,0 ,30,30);

popMatrix();


  if (location.y >( height-30) || location.y <= 0)
{
 velocity.y *= -0.8   ;
}

if(location.y > (height-30) ){
 location.y = (height-30);

}


  if (location.x >= width || location.x <= 0)
    velocity.x *= -1;
  if(velocity.y <= 0.1){
     velocity.y = 0;

}
}

void keyPressed(){
  if(key == 'f'){
    location.x = 0+kanonX.getValue();
    location.y = height+kanonY.getValue();
    velocity.x = cos(-radians(shotAngle.getValue()))*magnitude.getValue();
    velocity.y = sin(-radians(shotAngle.getValue()))*magnitude.getValue();


  }
}
