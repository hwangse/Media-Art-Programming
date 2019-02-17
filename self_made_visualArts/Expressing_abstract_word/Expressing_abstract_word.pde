int bgColor=0;
//int angle=0;
void setup(){
  size(600,600);
}

void draw(){
  float max=dist(0,0,width,height);
  noStroke();
  if(bgColor<25)
    background(102,0,102);
   else
    background(255,190,0);
    
    rectMode(CENTER);
    
    float a=width;
    float b=height*0.1;
    
    if(bgColor<25)
      fill(255,190,0);
     else
      fill(51,0,150);
    rect(width*0.5,height*0.2,a,b);
    rect(width*0.5,height*0.4,a,b);
    rect(width*0.5,height*0.6,a,b);
    rect(width*0.5,height*0.8,a,b);
    
    float d=max-dist(width*0.2,height*0.2,mouseX,mouseY);
    d=map(d,100,max,0,max/2);
    
    fill(255,0,0);
    ellipse(width*0.2,height*0.2,d,d);
    
    d=max-dist(width*0.8,height*0.3,mouseX,mouseY);
    d=map(d,150,max,0,max/2);
    
    fill(0,204,51);
    rect(width*0.8,height*0.3,d,d);
    
    fill(204,0,153);
    ellipse(width-mouseX,height-mouseY,100,100);
     fill(255,100,0);
    triangle(width*0.2+mouseX,height*0.3+mouseY,width*0.5+mouseX,height*0.4+mouseY,width*0.1+mouseX,height*0.6+mouseY);
    
    fill(0,102,200);
    rect(width-mouseX+100,(mouseY)/10+150,150,150);
   

   bgColor=(bgColor+1)%50;
}
