class Box2{
  float x,y;
  float plusX,plusY;
  color c;
 Box2(float _x,float _y,color _c){
   x=_x;
   y=_y;
   c=_c;
   
   plusX=random(-2,2);
   plusY=random(-2,2);
   
 }
  void update(){
    x=x+plusX;
    y=y+plusY;
  }
  void checking(){
    if (x>=90 || x<=10) {
      plusX*=-1;
    }

    if (y>=90 || y<=10)
      plusY*=-1;
  }
  void draw(){
    fill(c);
    noStroke();
    ellipse(x, y, 30, 30);
    
  }
}
