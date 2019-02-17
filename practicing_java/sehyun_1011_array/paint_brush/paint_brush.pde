float []xs;
float []ys;
int len=30;
void setup(){
  size(400,400);
  xs=new float[len];
  ys=new float [len];
  
  for(int i=0;i<len;i++){
    xs[i]=width*0.5;
    ys[i]=height*0.5;
  }
}

void draw(){
  background(255);
  
  for(int i=0;i<len-1;i++){
    xs[i]=xs[i+1];
    ys[i]=ys[i+1];
  }
  xs[len-1]=mouseX;
  ys[len-1]=mouseY;
  
  for(int i=0;i<30;i++){
   // noStroke();
    fill(0,255*i/len); //important
    ellipse(xs[i],ys[i],i*2,i*2);
  }
  
}
