int face=80;
float h;
//prereserved value : mouseX, mouseY, pmouseX, pmouseY
void setup(){
 size(400,400);  //default size is 100 x 100 
 h=height*0.5;  //default height : 100 --> h=100*0.5=20
}

void draw(){
  background(255);  
 // float d1=sqrt(sq(pmouseX-mouseX)+ sq(pmouseY-mouseY));
  float d2=dist(pmouseX,pmouseY,mouseX,mouseY);  //maybe i can use this with hw
  
 // println(d1,d2);
  float max=dist(0,0,width,height);
  rectMode(CENTER);
  
  ellipse(pmouseX,pmouseY,20,20);
  ellipse(mouseX,mouseY,20,20);
  
  d2=dist(width*0.2,h,mouseX,mouseY);
  d2=map(d2,0,max,0.0,1.0);
  //d2=constrain(d2,0,200);
  rect(width*0.2,h,d2,d2);
   d2=dist(width*0.4,h,mouseX,mouseY);    //if mouse cursor is far away from current rect's location, it gets bigger
  rect(width*0.4,h,d2,d2);
   d2=dist(width*0.6,h,mouseX,mouseY);
  rect(width*0.6,h,d2,d2);
   d2=dist(width*0.8,h,mouseX,mouseY);
  rect(width*0.8,h,d2,d2);
  
}
