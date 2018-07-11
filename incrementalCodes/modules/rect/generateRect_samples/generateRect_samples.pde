int counter = 0;
int rWidth, rHeight;

int cellWidth, cellHeight;
int partitions = 10;

void setup() {
  size(300, 300);
  cellWidth = width/partitions;
  cellHeight = height/partitions;
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
  if (counter > 20) {
    exit();
  }
  counter++; 
  rWidth = ((int)random(1, 5))*cellWidth;
  rHeight = ((int)random(1, 5))*cellHeight;

  if (counter < 5) {
    rHeight = rWidth;
  }

  int x = (int)random(partitions-rWidth/cellWidth-1)*cellWidth + cellWidth;
  int y = (int)random(partitions-rHeight/cellHeight-1)*cellHeight + cellHeight;

  stroke(0);
  fill(255, 0, 0, 200);
  rect(x, y, rWidth, rHeight);

  fill(0);
  textSize(16);
  if (x > 2*cellWidth && x < width - 2*cellWidth) {
    textAlign(CENTER, CENTER);    
    text("rect("+x+", "+y+", "+rWidth+", "+rHeight+");", x, y-12);
  } else if (x <= 2*cellWidth) {
    textAlign(LEFT, CENTER);
    text("rect("+x+", "+y+", "+rWidth+", "+rHeight+");", x+10, y-12);
  } else {
    textAlign(RIGHT, CENTER);
    text("rect("+x+", "+y+", "+rWidth+", "+rHeight+");", x-10, y-12);
  }
  saveFrame("./../samples/sample-"+counter+".png");
}