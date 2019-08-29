
//Imports Control p5, and gives it the name cp5, for easier access.
import controlP5.*;
ControlP5 cp5;



//Names two knobs
Knob kanonX;
Knob kanonY;






void startKnobs(){
  //I define a font for my knobs to use, which is larger than the defualt one
 PFont pfont = createFont("Arial",20,true);
 ControlFont bigFont = new ControlFont(pfont,20);


  cp5 = new ControlP5(this);

  //Sets properties for the knobs
  kanonX = cp5.addKnob("Kanonens x værdi")
               .setRange(10,400)
               .setValue(10)
               .setPosition(10,10)
               .setRadius(30)
               .setDragDirection(Knob.VERTICAL)
               .setSize(200,1)
               .setNumberOfTickMarks(16)
               .snapToTickMarks(true)
               .setTickMarkLength(10)
               .setFont(bigFont)
               .setResolution(160)
               ;

  kanonY= cp5.addKnob("Kanonens y værdi")
               .setRange(10,100)
               .setValue(10)
               .setPosition(250,10)
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
