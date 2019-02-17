float [] xs;
float [] ys;
float [] rect;

void setup(){
  size(400,400);
  xs=new float[30];
  ys=new float[30];
  rect=new float[30];
  
  for(int i=0;i<xs.length;i++){
   xs[i]=random(100,300);
   ys[i]=random(100,300);
   rect[i]=random(10,50);
  }
  println(xs);
}

void draw(){
  background(255);
  int sec=second();
  rectMode(CENTER);
  
  for(int i=0;i<xs.length;i++){
   float x=xs[i];  //x is random number bet 100 ~ 300
   float y=ys[i];
   float r=rect[i];
   
   fill(255*(x/300),50*(y/300),170*(r/50));
//   float plus=random(10,50);
   rect(x,y,r,r);
   
  }
}
