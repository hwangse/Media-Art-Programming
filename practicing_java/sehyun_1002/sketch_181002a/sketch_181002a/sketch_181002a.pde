int face=40;

void setup(){
 size(400,400); 
  
}

void draw(){
  
  background(250);
  
  int sec=second();
  int date = day();
  //rectMode(CENTER);
 // rect(width*0.5,height*0.5,sec*2,sec*2);
  int limit=5;
/* 
  //single iteration practice
  
  for(int i=0;i<limit;i=i+1){
    rect((0.2*i+0.1)*width,height*0.5,50,50);  // --> (width/6)*i
    rect(width/(limit+1)*(i+1),height*0.5,50,50);
  }
  */
  int NumOfRec=10;
  face=width/NumOfRec;
  /*
  for(int i=0;i<width;i+=face){
    for(int j=0;j<height;j+=face)
      rect(i,j,face,face);
  }
  */
  int xpos=0,ypos=0;
  int plus=width/NumOfRec; 
  for(int i=0;i<NumOfRec-1;i=i+1){
    
    
    
  }
  
}
