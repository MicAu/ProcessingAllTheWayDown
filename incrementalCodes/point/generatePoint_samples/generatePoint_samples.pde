int counter = 0;

void setup() {
  size(300, 300);
  background(255);
}

void drawGrid(int c, int r) {
  stroke(0, 50);
  strokeWeight(1);
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
}

void draw() {
  background(255);
  drawGrid(10, 10);
  if(counter > 20) {
    exit();
  }
  counter++;
  strokeWeight(10);
  stroke(0);
  int x = (int)random(9)*30 + 30;
  int y = (int)random(9)*30 + 30;
  point(x, y);
  fill(0);
  textSize(16);
  if(x > 60 && x < width - 60) {
    textAlign(CENTER, CENTER);
    text("point("+x+", "+y+");", x, y+10);
  }
  else if(x <= 60) {
    textAlign(LEFT, CENTER);
    text("point("+x+", "+y+");", x+10, y);
  }
  else {
    textAlign(RIGHT, CENTER);
    text("point("+x+", "+y+");", x-10, y);
  }
  saveFrame("./../samples/sample-"+counter+".png");
}