class circle{
 float x,y;
 float size;
 color c;
 
 circle(float _x,float _y,float _size,color _c){
  x=_x;
  y=_y;
  size=_size;
  c=_c;
 }
  
 void draw(){
  fill(c);
  noStroke();
  ellipse(x,y,size,size);
   
 }
  void updateSize(float a){
   size =a;
    
  }
  
}
