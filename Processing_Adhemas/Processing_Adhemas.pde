// Sketch inspirado nesse vídeo do Adhemas Batista: 
// https://www.instagram.com/p/BYkCEWiAHms/?taken-by=adhemas

void setup() {
  size(800, 800);
  background(255);
  smooth();
  ellipseMode(CENTER);
  colorMode(HSB, 255);
}

void draw() {
  noStroke();
  noFill();
  if (mousePressed) {
    linha(pmouseX, pmouseY, mouseX, mouseY);
  }
}


void keyPressed() {
  background(255);
}