class Walker{
 float x,y;
 Walker(float x,float y){
   this.x = x;
   this.y=y;
 }
 
 void render(){
    //x += (float)gen.nextGaussian();
    //y += (float)gen.nextGaussian();
    constrainXandY(width/2,width-1,0,height-1);
  }
  
  //float monteCarlo(){
    
  //}
 
 void create(){
    stroke(0);
    point(x,y);
  }
   private void constrainXandY(float cx1,float cx2,float cy1,float cy2){
     x = constrain(x,cx1,cx2);
    y=constrain(y,cy1,cy2);
  }
}
