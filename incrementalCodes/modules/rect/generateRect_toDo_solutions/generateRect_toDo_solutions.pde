int counter = 0;
int square = 100;

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
  if (counter > 20) {
    exit();
  }
  counter++;
  int x = (int)random(9)*30 + 30;
  int y = (int)random(9)*30 + 30;

  if (x > 60 && x < width - 60) {
    background(255);
    drawGrid(10, 10);
    textAlign(CENTER, CENTER);
    //strokeWeight(10);
    stroke(0);
    rect(x, y, square, square);
    fill(0);
    textSize(16);
    text("rect("+x+", "+y+");", x, y+10);
    saveFrame("./../solutions/solutions-"+counter+".png");

    background(255);
    drawGrid(10, 10);
    textAlign(CENTER, CENTER);
    //strokeWeight(10);
    stroke(0);
    rect(x, y, square, square);
    fill(0);
    textSize(16);
    text("rect(            );", x, y+10);
    saveFrame("./../toDo/toDo-"+counter+".png");
  } else if (x <= 60) {
    background(255);
    drawGrid(10, 10);
    textAlign(LEFT, CENTER);
    //strokeWeight(10);
    stroke(0);
    rect(x, y, square, square);
    fill(0);
    textSize(16);
    text("rect("+x+", "+y+");", x+10, y);
    saveFrame("./../solutions/solutions-"+counter+".png");

    background(255);
    drawGrid(10, 10);
    textAlign(LEFT, CENTER);
    //strokeWeight(10);
    stroke(0);
    rect(x, y, square, square );
    fill(0);
    textSize(16);
    text("rect(            );", x+10, y);
    saveFrame("./../toDo/toDo-"+counter+".png");
  } else {
    background(255);
    drawGrid(10, 10);
    textAlign(RIGHT, CENTER);
    //strokeWeight(10);
    stroke(0);
    rect(x, y, square, square);
    fill(0);
    textSize(16);
    text("rect("+x+", "+y+");", x-10, y);
    saveFrame("./../solutions/solutions-"+counter+".png");

    background(255);
    drawGrid(10, 10);
    textAlign(RIGHT, CENTER);
    //strokeWeight(10);
    stroke(0);
    rect(x, y, square, square);
    fill(0);
    textSize(16);
    text("rect(            );", x-10, y);
    saveFrame("./../toDo/toDo-"+counter+".png");
  }
}