 void setup() {
  size(800, 800);
}

void draw() {
  
    
   //2. make it a nice color
   fill(250,200,0);

   //3. if the mouse is pressed, fill the circle with a different color
   if (mousePressed) {
     fill(200,random(250),0);
   }
   

   //1. draw an ellipse
   ellipse(25,25,25,25);
   
   

}
// Copyright Wintriss Technical Schools 2013
