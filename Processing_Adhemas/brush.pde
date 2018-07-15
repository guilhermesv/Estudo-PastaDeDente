// Cria uma elipse feita com diversos arcos

float brushAngle = 0;

void brush(float x, float y, float size) {

  int qtdArcos = 6;
  float startAngle = 0;
  float stopAngle = startAngle + TWO_PI/qtdArcos;
  float hue1 = map(mouseX, 0, width, 0, 255);
  float hue2 = map(mouseY, 0, height, 0, 255);

  pushMatrix();
  translate(x, y);
  
  fill(0, 2);
  ellipse(0, 10, size+4, size+10);
  
  rotate(brushAngle);
  for (int i = 0; i < qtdArcos; i++) {
    if (i % 2 != 0) {
      fill(hue1, 200, 255);
    } else {
      fill(hue2, 200, 255);
    }
    arc(0, 0, size, size, startAngle, startAngle + TWO_PI/qtdArcos);
    startAngle = startAngle + TWO_PI/qtdArcos;
  }
  
  popMatrix();
  pushMatrix();
    translate(x, y);
    fill(0, 20);
    arc(0, 0, size+2, size, 0, PI);
    fill(255, 100);
    arc(0, 0, size, size, PI, PI+HALF_PI);
  popMatrix();
  brushAngle += 0.05;
}