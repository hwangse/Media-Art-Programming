Table table;
int len;
int finish=1;

float [] lon;
float [] lat;

float mX,MX;
float mY,MY;

void setup(){
  //use the function "lerpColor"
 size(1000,600);
 table=loadTable("openpaths_short.csv","header");
 len=table.getRowCount();
 
 lon=new float[len];
 lat=new float[len];

 for(int i=0;i<len;i++){
  lon[i]=table.getRow(i).getFloat("lon");
  lat[i]=table.getRow(i).getFloat("lat");
  
 }
  mX=min(lon);
  MX=max(lon);
  mY=min(lat);
  MY=max(lat);

}

void draw(){
  //background(255);
  fill(255,10);
  rect(0,0,width,height);
  noStroke();
  
  
  color colorA=color(255,0,0);
  color colorB=color(0,0,255);
  
  for(int i=0;i<finish;i++){
   //using of the function 'lerpColor'!//
   float v=map(i,0,len,0.0,1.0);
   color newC=lerpColor(colorA,colorB,v);
   fill(newC);
   stroke(newC);
   //end of the function//
   
   float x1,y1;
   float x2,y2;
   
   x1=map(lon[i],mX,MX,0,width);
   y1=map(lat[i],MY,mY,0,height);
   x2=map(lon[i+1],mX,MX,0,width);
   y2=map(lat[i+1],MY,mY,0,height);
   
   float d=dist(x1,y1,x2,y2);
   d/=5;
   ellipse(x1,y1,d,d);
   
   line(x1,y1,x2,y2);
 
   
  }
  
  finish++;
   
  if(finish==len)
     finish=1;
}
