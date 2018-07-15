// Reproduz o brush em cada ponto de uma linha

void linha(float x1, float y1, float x2, float y2) {
  float ix = 0;
  float iy = 0;
  float d = dist(x1, y1, x2, y2);
  if (d > 0) {
    println("linha-começo");
    for (int i = 1; i < d; i+=1) {
      ix = lerp(x1, x2, i/d);     
      iy = lerp(y1, y2, i/d);
      brush(ix, iy, 30);
      println(i, " ix: ", ix, "iy: ", iy);
    }
    println("linha-fim");
  }
}