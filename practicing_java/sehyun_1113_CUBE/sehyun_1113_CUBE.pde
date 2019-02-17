PVector []points;
float [] s;   //it is about scaling each of CUBE's line

/*Audio Information*/
import ddf.minim.*;
import ddf.minim.analysis.*;

Minim m;
FFT fft;
AudioInput in;


void setup(){
  size(400,400,P3D);
  points=new PVector[8]; //cube has 8 vertexs;
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
    
  //  println(points);
  s=new float[points.length];
  
  for(int i=0;i<s.length;i++)
    s[i]=100;
    
  /* Audio Information */
  m=new Minim(this);
  in=m.getLineIn();
  fft=new FFT(in.bufferSize(), in.sampleRate());
}

void draw(){
  
 background(255);
 //noStroke();
 
 //update
// s[1]=100*mouseX/width+10;
// s[1+4]=100*mouseX/width+10;
/* Update the Shape with Audio Information */
 fft.forward(in.mix);
 float flag=fft.getBand(1)*100;
 for(int i=0;i<8;i++)
   s[i]=map(flag, 0, 500, 20, 100);

 translate(width*0.5,height*0.5);
 rotateY(PI-(PI*mouseX/width));
 rotateX((PI*mouseY/height));
 
 /*topShape : RED*/
  fill(255,0,0);
  beginShape();
  for(int i=0;i<4;i++){
    vertex(points[i].x*s[i],points[i].y*s[i],points[i].z*s[i]); 
  }
  endShape(CLOSE);
  
  /*Bottom Shape : ORANGE */
  fill(255,100,0);
  beginShape();
  for(int i=4;i<8;i++){
    vertex(points[i].x*s[i],points[i].y*s[i],points[i].z*s[i]); 
  }
  endShape(CLOSE);
  
  /*side Shape : BLUE */
  fill(0,100,200);
  beginShape(QUAD_STRIP);
  for(int i=0;i<4;i++){
   vertex(points[i].x*s[i],points[i].y*s[i],points[i].z*s[i]); 
   vertex(points[i+4].x*s[i],points[i+4].y*s[i],points[i+4].z*s[i]); 
  }
  vertex(points[0].x*s[0],points[0].y*s[0],points[0].z*s[0]); 
  vertex(points[4].x*s[4],points[4].y*s[4],points[4].z*s[4]); 
  endShape();
  
}
