float r = 0;
float theta = 0;
float radius = 2.0;
float last_radius;

void setup() {
  size(800, 800);
  frameRate(30);
  background(0);
  smooth();
  noStroke();
}

void draw() {
  translate(width/2, height/2);
  // Polar to Cartesian conversion
  float x = r * cos(theta);
  float y = r * sin(theta);

  // Draw an ellipse at x,y
  noStroke();
  fill(255);

  // Increment the angle
  theta += 0.1;
  
  // Increment the radius
  r += 0.2;
  
  ellipse(x, y, radius, radius); 
  //saveFrame("frames/#####.png");
}