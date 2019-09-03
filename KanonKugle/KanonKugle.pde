import controlP5.*;
ControlP5 cp5;
PVector location = new PVector (0, 700);
PVector velocity = new PVector (5, -3);
PVector acceleration = new PVector (0, 0);
PVector gravity = new PVector (0, 0.01);

float  avelocity      ;
float  aacceleration  ;
float  angle          ;



void setup(){


  size(1920,800);
  frameRate(30);
  startKnobs();

  rectMode(CENTER);
}

void draw() {

background(200);

  if (location.y >( height-10) || location.y <= 0)
{
 velocity.y *= -0.1;
 velocity.x *= 0.9;
 avelocity = 0;
}

if(location.y > (height) ){
 location.y = (height);

}
  

  location.add(velocity);
  velocity.add(acceleration);
  // Vindmodstand
  velocity.mult(0.98);
    acceleration.y = acceleration.y  +   gravity.y;
  
  //Vinkel rotation
  //aacceleration = acceleration.mag()*0.01;
  angle = angle + velocity.mag()*0.01;
  //avelocity = avelocity + aacceleration;
 // if(velocity.x >= 0  || velocity.y >=0){
  //avelocity = 0;
  //}
  

  
///Kanon kugle
  pushMatrix();

translate(location.x, location.y);
rotate(angle);
  fill(0,0,0);
  rect( 0,0 ,30,30);

popMatrix();





  if (location.x >= width || location.x <= 0)
    velocity.x *= -1;
  if(abs(velocity.y) < 0.1){
     velocity.y = 0;

}
  //Draws Canon
  
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

void keyPressed(){
  if(key == 'f'){
    location.x = 0;
    location.y = height-60;
    velocity.x = cos(radians(shotAngle.getValue()))*(40+magnitude.getValue());
    velocity.y = -sin(radians(shotAngle.getValue()))*(40+magnitude.getValue());




  }
  

}
