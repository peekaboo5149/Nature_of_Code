import java.util.Random;

class Walker {
  float x,y;
  private Random gen= new Random();;
  Walker(float x,float y){
    this.x = x;
    this.y = y;  
  }
  
    void create(){
      stroke(0);
      point(x,y);
    }
  
  void guassRender(){
  
    x += (float)gen.nextGaussian();
    y += (float)gen.nextGaussian();
    constrainXandY(width/2,width-1,0,height-1);
  }
  
  void render(){
    int rand = int(random(4));
    
    if(rand==0) x++;
    else if(rand==1)x--;
    else if(rand==2)y++;
    else y--;
    
    constrainXandY(0,width/2-1,0,height/2-1);
  }
  
  private void constrainXandY(float cx1,float cx2,float cy1,float cy2){
     x = constrain(x,cx1,cx2);
    y=constrain(y,cy1,cy2);
  }
  
}
