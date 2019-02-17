PVector []points;
float [] s;  
float z=0;
int count=0;
int step=0;

float []s_target;


void setup(){
  
  size(400,400,P3D);
  points=new PVector[8];
  
  //top points
  points[0]=new PVector(1,-1,-1);
  points[1]=new PVector(1,-1,1);
  points[2]=new PVector(-1,-1,1);
  points[3]=new PVector(-1,-1,-1);
  
  //bottom points
  points[4]=new PVector(1,1,-1);
  points[5]=new PVector(1,1,1);
  points[6]=new PVector(-1,1,1);
  points[7]=new PVector(-1,1,-1);
  
  for(int i=0;i<points.length;i++)
    points[i].normalize();
    
   s=new float[points.length];
   s_target=new float[points.length];
   
   for(int i=0;i<s.length;i++)
     s[i]=random(100)+50;
     
    for(int i=0;i<s.length;i++)
     s_target[i]=random(100)+50;

}

void draw(){
  //background(255);
  fill(255,10);
  rect(0,0,width,height);
  noStroke();
  lights();
  
  translate(width*0.5,height*0.5,z);
   rotateY(TWO_PI*mouseX/width);
   rotateX(TWO_PI*mouseY/height);
 
 
  fill(255,0,0);
  beginShape();
  for(int i=0;i<4;i++){
    vertex(points[i].x*s[i],points[i].y*s[i],points[i].z*s[i]);
  }
  endShape(CLOSE);
  
  fill(150,200,0);
  beginShape();
  for(int i=4;i<8;i++){
    vertex(points[i].x*s[i],points[i].y*s[i],points[i].z*s[i]);
  }
  endShape(CLOSE);
  
  beginShape(QUAD_STRIP);
  fill(0,100,200);
  for(int i=0;i<4;i++){
   vertex(points[i].x*s[i],points[i].y*s[i],points[i].z*s[i]); 
   vertex(points[i+4].x*s[i+4],points[i+4].y*s[i+4],points[i+4].z*s[i+4]); 
  }
  vertex(points[0].x*s[0],points[0].y*s[0],points[0].z*s[0]); 
  vertex(points[4].x*s[4],points[4].y*s[4],points[4].z*s[4]);
  
  endShape();
  
  //
  if(step==0){
for(int i=0; i<s_target.length; i++){
s_target[i]= random(100)+50;
}
step=1; 
} else if(step==1){
for(int i=0; i<s.length; i++){
s[i] += (s_target[i] - s[i])*0.1;
}

if(abs(s_target[0] - s[0]) <1){
step=0;
}

}
  
  
  //update scale information!
  count++;
  if(count>=10){
  for(int i=0;i<s.length-1;i++){
   s[i]=s[i+1]; 
    
  }
  s[s.length-1]=random(100)+50;
  
  count=0;
  }
  if(keyPressed){
   if(key=='a')
      z+=10;
    else if(key=='s')
      z-=10;
  }
  
}
/*
void keyPressed(){
  if(key=='a')
  z+=10;
  else if(key=='s')
  z-=10;
  
}*/
