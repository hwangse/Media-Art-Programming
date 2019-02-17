Class Box{
 int x,y,w,h;
 Box(int _x,int _y,int _w, int _h){  //_value is outside value and value is inside value within the Class!
   x=_x;
   y=_y;
   h=_h;
   w=_w;
 }
 
 void draw(){
  rect(x,y,w,h); 
 }
 
 void update(){
   x=mouseX;
   y=mouseY;
 }
}
