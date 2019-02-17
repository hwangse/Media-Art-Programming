void setup(){
 size(700,700); 
  
}
int timer=0;
void draw(){
 background(255,190,0);   //background color : Yellow

  ellipseMode(CENTER);
  rectMode(CENTER);
  noStroke();
  //strokeWeight(3);
  
  fill(102,0,0);  //back hair
  quad(0.17*width,0.5*height,0.15*width,0.88*height,0.85*width,0.88*height,0.83*width,0.5*height);
  
  fill(255,204,204);
  rect(0.5*width,0.85*height,90,100);    //neck
  ellipse(0.17*width,0.5*height,50,50);  //left ear
  ellipse(0.83*width,0.5*height,50,50);  //right ear
  ellipse(0.5*width,0.5*height,460,500); //face
  
  fill(90,0,0);  //front hair
  quad(0.35*width,0.15*height,0.65*width,0.13*height,0.84*width,0.3*height,0.84*width,0.5*height);
  fill(102,0,0);
  quad(0.65*width,0.13*height,0.35*width,0.13*height,0.16*width,0.3*height,0.16*width,0.5*height);
  
  fill(0,51,102);
  ellipse(0.5*width,1.27*height,700,500); //cloth
  
  fill(0,0,0);    //eyes & eyebrows
  ellipse(0.34*width,0.5*height,32,25);
  ellipse(0.66*width,0.5*height,32,25);
  
  rect(0.33*width,0.41*height,45,5);
  rect(0.67*width,0.41*height,45,5);
  
  fill(240,140,140); //nose
  ellipse(0.48*width,0.62*height,30,30);
  ellipse(0.52*width,0.62*height,30,30);
  fill(255,153,153);  
  rect(0.5*width,0.57*height,30,60);
  ellipse(0.5*width,0.62*height,45,50);
  
  /*cheeks*/
  fill(255,153,153,140*mouseX/width); //cheeks
  ellipse(0.3*width,0.65*height,150,150);
  ellipse(0.7*width,0.65*height,150,150);
  
  /*moving mouth*/
  if(timer>50){
  fill(255,102,102);  //lips
  ellipse(0.5*width,0.72*height,50,20);
  ellipse(0.5*width,0.74*height,60,20);
  }
  else{
  fill(255,255,255);
  rect(0.5*width,0.73*height,35,30);
  fill(255,102,102);  //lips
  ellipse(0.5*width,0.71*height,50,15);
  ellipse(0.5*width,0.75*height,60,15);
    
  }
  
  //line under jaws
  fill(255,153,153,150);
  ellipse(0.5*width,0.82*height,40,10);

  timer=(timer+1)%100;
}
