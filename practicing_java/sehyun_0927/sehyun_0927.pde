color blue=color(0,0,255);
color green=color(0,255,0);
color red=color(255,0,0);

color leftbox=red;
color rightbox=green;
void setup(){
 size(500,500); 
  
}

void draw(){
  background(255);
  noStroke();
  
  if(mouseX<width*0.5 && mouseX>0){
   leftbox=blue;
   rightbox=green;
  }
  else{
    leftbox=red;
    rightbox=blue;
  }
  
  fill(leftbox);
  rect(0,0,width*0.5,height);
  
  fill(rightbox);
  rect(width*0.5,0,width*0.5,height);
  
  
}
