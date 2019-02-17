void setup(){
  size(500,500);
}

int val=5;
int val2=3;

float x=1;
float y=500*0.5;
float x2=1;
float y2=500*0.2;
float x3=1;
float y3=500*0.8;
void draw(){
  //background(255);
  if(x<=0 || x>=width)
    val*=-1;
    
  if(y<=0 || y>=height)
    val2*=-1;
  float tmp;
  
  rectMode(CENTER);
  //fill(255,0,0);
  if(mouseX<width/2){
    tmp=pmouseX-mouseX;
    tmp=tmp/width;
    fill(255*tmp+10,200*tmp+50,10);
  }
  else{
    tmp=mouseX-pmouseX;
    tmp=tmp/width;
    fill(100*tmp,200*tmp+50,100*tmp);
  }
  rect(x,y,20,20);
  if(mouseX<width/2){
    tmp=pmouseX-mouseX;
    tmp=tmp/width;
    fill(255*tmp+200,255*tmp+200,10);
  }
   else{
    tmp=pmouseX-mouseX;
    tmp=tmp/width;
     fill(200*tmp+150,255*tmp+150,100);
   }
  rect(x2,y2,20,20);
  
   if(mouseX<width/2){
    tmp=pmouseX-mouseX;
    tmp=tmp/width;
    fill(255*tmp+200,255*tmp+50,100);
  }
   else{
    tmp=pmouseX-mouseX;
    tmp=tmp/width;
     fill(200*tmp+180,100,150);
   }
  rect(x3,y3,20,20);
  
  x=x+val;
  y=y+val2;
  
  x2+=val;
  y2+=val2;
  
  x3+=val;
  y3+=val2;
  
  
}
