void setup(){      // setup function is called only once at the start of the program.
  size(400,400);
  //background(255*mouseX/width,0,0); 
  
}

void draw(){
  background(255*mouseX/width,0,0);    //(mouseX/width) --> normalizing, very important!
  rect(mouseX,mouseY,50,50);

}
