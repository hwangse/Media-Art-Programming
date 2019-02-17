int wlen=10;//how many boxes to have horizentaly
int hlen=10;
int w,h;
int wface;  //width divide by the number of rectangles
int hface;
int []values;
int count=0;

void setup(){
  size(400,400);
  wface=int(width/wlen);
  hface=int(height/hlen);
  
  values=new int[wlen*hlen];  //wlen*hlen=100
  for(int i=0;i<values.length;i++){
   values[i]=int(floor(random(0,2)));   //0 or 1
    println(values[i]);
  }
}

void draw(){
  background(255);
  count++;
  if(count>20){
  update();
  count=0;
  }
 // delay(50);      //control the speed of the program 1. using 'delay function' 2. using variable 'count'!
  drawLines();
}
void update(){    //!User defined function!
    for(int i=0;i<values.length-1;i++){
    values[i]=values[i+1];
  }
  values[values.length-1]=int(floor(random(0,2)));
  
}

void drawLines(){
    for(int j=0;j<hlen;j++){
   for(int i=0;i<wlen;i++){
     int index=j*wlen+i;
     if(values[index]==0){
   //   fill(255,0,0); 
      stroke(255,0,0);
      line(i*wface,j*hface,(i+1)*wface,(j+1)*hface);
     }
     else if(values[index]==1){
     //fill(0,0,255);
     stroke(0,0,255);
     line((i+1)*wface,j*hface,(i)*wface,(j+1)*hface);
     }
   }
  }
}
