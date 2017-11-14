int num = 60;
float mx[] = new float[num];
float my[] = new float[num];
PImage img;


void setup() {
  frameRate(30);
  size(1600, 800);
  noStroke();
  fill(255, 153); 
  img = loadImage("map.jpg");
}

void draw() {
  img.resize(width, height);
  image(img, 0, 0);
  int which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;
  for (int i = 0; i < num; i++) {
    // which+1 is the smallest (the oldest in the array)
    int index = (which+1 + i) % num;
    ellipse(mx[index], my[index], i, i);
  }
}