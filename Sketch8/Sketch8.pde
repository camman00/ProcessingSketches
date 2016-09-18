void setup() {
  size(1000,1000);
}
int circleone = 100;
int circletwo = 500;
void draw() {
  /*inc2 = inc2 + 1;
  inc = inc - 1;*/
  background(10,100,100);
  for(int x = 0;x < 150;x += 10.5) {
    
    noFill();
    ellipse(circleone,100,100 - x,100 - x);
    
  }
  for(int x = 0;x < 150;x += 10.5) {
    
    noFill();
    ellipse(circletwo * 1,100,100 - x,100 - x);
    
  }
  for(int x = 0;x < 150;x += 10.5) {
    noFill();
    
    
  }
  circleone -= -1;
  if (circleone > 500)

}