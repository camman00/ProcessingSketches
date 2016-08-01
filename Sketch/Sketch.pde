void setup() {
  background(200,200,200);
  size(250,250);
  rect(30, 20, 55, 55, 15);
}
void draw() {
  
  ellipse(mouseX, mouseY, 55, 55);
  if (mousePressed) {
    fill(random(255),0,mouseY);
    println(mouseX + " " + mouseY);
  }
  else {
    fill(random(100),random(250),random(100));
  }
  if (mouseX > 50) {
    ellipse(mouseX, mouseY, 55, 55);
    fill(250,0,0);
  }
}

