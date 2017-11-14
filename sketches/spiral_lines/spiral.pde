size(800, 800);
background(0);
stroke(255);
strokeWeight(0.05);
 
translate(width/2, height/2);
 
for (int i = 0; i < 1000; i++) {
  rotate(0.5);
  scale(1.01);
 
  line(5, -5, 100, 5);
}