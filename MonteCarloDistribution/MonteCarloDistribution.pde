float[] vals;
float[] norms;

void setup(){
size(400,400);
vals = new float[width];
norms = new float[width];  

}

void draw(){
  background(100);
  float n = monteCarlo();
  int index = int(n*width);
  vals[index]++;
  stroke(255);
  
  boolean normalization = false;
  float maxy = 0.0;
  
  for(int i=0;i<vals.length;i++){
     line(i,height,i,height-norms[i]); 
     if(vals[i]>height) normalization = true;
     if(vals[i]>maxy) maxy=vals[i];
  }
  
  for(int x=0;x<vals.length;x++){
  
    if(normalization) norms[x] = (vals[x]/maxy);
    else norms[x] = vals[x];
  }
  
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
