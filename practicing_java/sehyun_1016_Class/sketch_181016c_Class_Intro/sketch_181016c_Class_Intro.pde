Box b;

void setup(){
 size(400,400);
 b=new Box(200,200,50, 50);
 
}

void draw(){
  background(255);
 b.update();
 b.draw();
  
}
