void setup() {
  size(1200, 800, P3D);
  background(0);
  noFill();
  stroke(255);
}

void draw() {
  background(0);
  pushMatrix();
  translate(width/2, height/2);
  for (int i = -20; i < 20; i++){
    pushMatrix();
    translate(i * 15, 0);
    rotateZ(radians(i * 5 + frameCount));
    triangle(0, 0, -150, 100, -50, -50);
    popMatrix();
  }
  popMatrix();
  //saveFrame();
}