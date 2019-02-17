void setup(){
  size(750,750);
}
/* global variables */
float Sx=0;
float Sy=0;
float Mx=0;
float My=0;
float Hx=0;
float Hy=0;
float frogX=0;
float frogY=0;
float angle=0;

void draw(){
  int hr=hour();
  int sec=second();
  int min=minute();
  int r=200;
  float rad=PI/180;
  float gr=200;
  noStroke();
  //println(hr,sec,min);
  
  background(255);
  /* frog face */
  fill(0,gr,0);
  ellipse(width*0.38,height*0.08,100,100);
  ellipse(width*0.62,height*0.08,100,100);
  ellipse(width*0.5,height*0.2,300,250);
  
  fill(0);
  ellipse(width*0.37,height*0.07,30,30);
  ellipse(width*0.63,height*0.07,30,30);
  
  /*frog mouth*/
  stroke(1);
  strokeWeight(4);
  fill(0,gr,0);
  ellipse(width*0.5,height*0.1,100,40);
  rectMode(CENTER);
  noStroke();
  rect(width*0.5,height*0.071,110,45);
  
  /* frog cheek */
  fill(255,150,0);
  ellipse(width*0.37,height*0.12,45,25);
  ellipse(width*0.63,height*0.12,45,25);
  
  /* clock */
  fill(0,gr,0);
  ellipse(width*0.5,height*0.5,550,550);
  fill(255);
  ellipse(width*0.5,height*0.5,500,500);
  
  stroke(1);
  fill(0);
  ellipse(width*0.5,height*0.5,30,30);
  
  /* movement of seconds */
  angle=sec*6; 
  Sx=r*cos((angle-90)*rad);
  Sy=r*sin((angle-90)*rad);
  strokeWeight(2);
  line(width*0.5,height*0.5,width*0.5+Sx,height*0.5+Sy);
  
  /* movement of minutes */
  float angle2=min*6;
  r=150;
  Mx=r*cos((angle2-90)*rad);
  My=r*sin((angle2-90)*rad);
  strokeWeight(5);
  line(width*0.5,height*0.5,width*0.5+Mx,height*0.5+My);
  
  /*movement of hours*/
  float angle3=hr*30;
  r=100;
  Hx=r*cos((angle3-90)*rad);
  Hy=r*sin((angle3-90)*rad);
  strokeWeight(10);
  line(width*0.5,height*0.5,width*0.5+Hx,height*0.5+Hy);
  
  noStroke();
  /* circles around the clock (using iteration) */
  for(int i=0;i<12;i++){
   fill(0,gr-100,0);
   r=225;
   ellipse(width*0.5+r*cos((i*30-90)*rad),height*0.5+r*sin((i*30-90)*rad),30,30);
  }
  
  /*mini frog */
  fill(0,gr,0);
  translate(width*0.5+Sx,height*0.5+Sy);
  rotate(sec*6*rad);
  ellipse(0,0,50,40);
  ellipse(15,-18,20,20);
  ellipse(-15,-18,20,20);
  fill(0);
  ellipse(15,-18,7,7);
  ellipse(-15,-18,7,7);
  
}
