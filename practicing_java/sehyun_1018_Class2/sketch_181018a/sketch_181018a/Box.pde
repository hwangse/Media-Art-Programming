class Box {
  float x, y;
  float plusX=1;
  float plusY=1;

  color c;
  Box(float _x, float _y, color _c) {
    x=_x;
    y=_y;
    c=_c;

    plusX=random(-2, 2);
    plusY=random(-2, 2);
  }
  void update() {

    x=x+plusX;
    y=y+plusY;
  }
  void checking() {
    if (x>=300 || x<=100) {
      plusX*=-1;
    }

    if (y>=300 || y<=100)
      plusY*=-1;
  }
  void draw() {
    fill(c);
    noStroke();
    ellipse(x, y, 30, 30);
  }
}
