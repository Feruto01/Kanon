//This page is not a class, but a page for all the things related to the GUI and knobs

//Names two knobs
Knob magnitude;
Knob shotAngle;


//Defines a function that will initialize the knobs
void startKnobs(){
 //We define a font for my knobs to use, which is larger than the defualt one
 PFont pfont = createFont("Arial",20,true);
 ControlFont bigFont = new ControlFont(pfont,20);

 //Initializes cp5 (Library for GUI)
 cp5 = new ControlP5(this);


  //We define various settings for our knobs.
  //The knobs are used for controlling the intial velocity, as well as the angle of firing.

   magnitude= cp5.addKnob("Kanonstyrke")
               .setRange(1,100)
               .setValue(10)
               .setPosition(500,10)
               .setRadius(30)
               .setDragDirection(Knob.VERTICAL)
               .setNumberOfTickMarks(16)
               .setSize(200,1)
               .snapToTickMarks(false)
               .setTickMarkLength(10)
               .setResolution(160)
               .setFont(bigFont)
               ;
    shotAngle= cp5.addKnob("Vinkel")
               .setRange(0,90)
               .setValue(10)
               .setPosition(750,10)
               .setRadius(30)
               .setDragDirection(Knob.VERTICAL)
               .setNumberOfTickMarks(16)
               .setSize(200,1)
               .snapToTickMarks(false)
               .setTickMarkLength(10)
               .setResolution(160)
               .setFont(bigFont)
               ;
}
