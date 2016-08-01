PImage pizza;
PImage quik;
PImage poptart;
void setup() {
  size(1000,1000);
  pizza = loadImage();
}
void draw() {
  fill(204,187,153);
  ellipse(500,500,500,500);
  fill(250,0,0);
  ellipse(500,500,400,400);
  fill(204,204,34);
  ellipse(500,500,375,375);
  
}

