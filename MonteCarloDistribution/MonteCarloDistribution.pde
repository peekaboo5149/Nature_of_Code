Walker w;

void setup(){
size(400,400);
background(100);
w = new Walker(0,0);
}

void draw(){
  w.render();
  w.create();
 
}
