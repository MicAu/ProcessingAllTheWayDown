void setup() {
  size(300, 300);
  background(255);
  stroke(0, 50);
  strokeWeight(1);
  int r = 10;
  int c = 10;
  for (int i=1; i < c; i++) {
    for (int k=0; k <= height; k+=15) {
      if (k > 0 && k < height && k%30==0) {
        fill(255, 0, 0, 200);
        textAlign(LEFT, CENTER);
        textSize(8);
        text(k, 5, k);
        textAlign(CENTER, CENTER);
        text(k, k, 5);
      }
      line(i*(width/c), k-5, i*(width/c), k+5);
      line(k-5, i*(width/c), k+5, i*(width/c));
    }
  }
  saveFrame("background.png");
}