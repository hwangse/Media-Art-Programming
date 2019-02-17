int face=50;
int w,h;

int []sign;


void setup(){
 size(400,400);
 w=int(1.0*width/face);
 h=int(1.0*height/face); 
 sign=new int [w*h];
 
 for(int i=0;i<sign.length;i++){
  sign[i]=floor(random(0,2)); 
 }
}

void draw(){
 background(255);
 for(int y=0;y<h;y++){
  for(int x=0;x<h;x++){
    int index=x+y*w;
    if(sign[index]==0){
      line(x*face,(y+1)*face,(x+1)*face,y*face);
    }
    else if(sign[index]==1){
      line((x+1)*face,(y)*face,(x)*face,(y+1)*face);
    }
    
 //  rect(x*face,y*face,face,face); 
  }
 }
  
}
