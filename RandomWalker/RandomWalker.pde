Walker w1,w2;

void setup() {
  size(1920, 700);
  //gray background
  background(255);
  w1 = new Walker(3*width/4,height/2);
  w2 = new Walker(width/4,height/2);
  stroke(0);
  
  line(960,0,960,700);
  //make the simulation faster
  frameRate(1000);
}

void draw() {
  w1.guassRender();
  //w.render();
  w1.create();
  
  w2.render();
  w2.create();
 
}
