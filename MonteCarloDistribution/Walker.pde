class Walker{
 float x,y;
 Walker(float x,float y){
   this.x = x;
   this.y=y;
 }
 
 void render(){
    x+=monteCarlo();
    y+=monteCarlo();
    constrainXandY(width/2,width-1,0,height-1);
  }
  
 float monteCarlo(){
  boolean stop = false;
  int count = 0;
  while(!stop && count <1000){
    float r1  = (float)random(1);
    float r2 = (float)random(1);
    float y = r1 *r1;
    if(r2<y){
      stop = true;
      return r1;
    }
    count++;
  }
  return 0f;
}
 
 void create(){
    stroke(0);
    point(x,y);
  }
   private void constrainXandY(float cx1,float cx2,float cy1,float cy2){
     x = constrain(x,cx1,cx2);
    y=constrain(y,cy1,cy2);
  }
}
