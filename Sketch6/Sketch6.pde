import ddf.minim.*;
PImage background;

Minim minim;
AudioSample sound;
int ballx = 350;
int bally = 500;
int speedmult = 9;
int speedmulty = 9;
void setup() {
  background = loadImage("background.jpg");
  size(1000,1000);
  minim = new Minim(this);
  sound = minim.loadSample("pong.wav",128);
}
void draw() {
  background(10,10,10);
  image(background,0,0,1000,1000);
  fill(255,255,255);
  rect(mouseX,900,500,50);
  ellipse(ballx,bally,50,50);
  ballx += speedmult;
  bally += speedmulty;
  if (ballx > 999) {
    speedmult = -speedmult; 
  }
  else if (ballx < -1) {
    speedmult = speedmult * -1;
  }
  if (bally > 1000) {
    speedmulty = 0;
    speedmult = 0;
  }
  else if (bally < 0) {
    speedmulty = speedmulty * -1;
  }
  if (ballx < 0 || ballx > 1000 || bally < 0 || bally > 1000) {
    sound.trigger();
    speedmult += 1;
    speedmulty += 1;
  }
  fill(255,255,255);
  stroke(20,20,20);
  if (intersects(ballx,bally,mouseX,900,500)) {
    speedmulty = speedmulty * -1;
  }
  quitgame();
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}
void quitgame() {
  if (bally < 1000) {
    //System.exit(1);
  }
}


