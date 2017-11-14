void setup() {
  size(800,800);
  background(0);
  noStroke();
}

int rows = 10;
int cols = 10;

//int radius_w = width / cols;
//int radius_h = height / rows;

int maxRadius= 82;
int startRadius = 0;
int increment = 1;
int radius = startRadius;

void draw() {
  background(0);

  radius += increment;
  
  if (radius == maxRadius) {
    increment = increment * -1;
  }
  
  if (radius == 0) {
    increment = increment * -1;
  }
  
  for (int r=0; r < rows; r++) {
    for (int c=0; c < cols; c++) {
         
      
        fill(color(random(255), random(255), random(255)));
        ellipse(width*c / cols + width/cols/2, height*r / rows + height/rows/2, radius, radius);
      
    }
  }
  
  //saveFrame("frames/#####.tiff");
  
}