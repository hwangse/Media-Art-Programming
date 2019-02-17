PImage p;
float x,y;
float tx,ty;
int stage;

void setup(){
  size(600,600);
 p=loadImage("0x0.jpg"); 
 
}

void draw(){
  
  if(stage==0){
   tx=random(width);
   ty=random(height);
   stage=1;
    
  }
  else if(stage==1){
    x+=(tx-x)*0.5;
    y+=(ty-y)*0.5;
    
    if(abs(tx-x)<1){
     stage=0; 
    }
    
  }
 image(p,x,y); 
  
  
}
