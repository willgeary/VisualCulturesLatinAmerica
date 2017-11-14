void setup() {
  size(600, 600, P3D);
  background(0);
  noFill();
  stroke(255);
}

void draw() {
  fill(0,10);
  rect(0,0,width,height);
  translate(width/2, height/2);
  sphere(sin(radians(frameCount))*200);
}