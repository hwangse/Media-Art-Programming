
int v=1;
void setup(){
 size(400,400); 
  
}
float x=400*0.5;
float y=0;
void draw(){
 background(255);
 rectMode(CENTER);
 rect(x,y,50,50);
 
 if(x>width || x<0){
  //I want my box is coming back!
  v*=-1;
   
 }

 if(y>height || y<0)
  v*=-1;
  
  x+=v;
  y+=v;
}
