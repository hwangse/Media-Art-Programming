Box b;
Box []bs;
Box2 []bs2;

void setup(){
  size(400,400);
  b=new Box(200,200,color(255,0,0));
  bs=new Box[100];

  for(int i=0;i<bs.length;i++){
    bs[i]=new Box(200,200,color(random(255)*0.3,random(255)*1.1,150));
    //bs2[i]=new Box2(
  }
  
}
void draw(){
//  background(255);
  fill(255,20);
  noStroke();
  rect(0,0,400,400);

  for(int i=0;i<bs.length;i++){
   bs[i].checking();
   bs[i].update();
   bs[i].draw();
  }
  
}
