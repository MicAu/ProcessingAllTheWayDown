int r = 0, g = 0, b = 0;
int counter = 0;

int x = 0;
int y;

void setup() {
  size(300, 300);
}

void draw() {
  background(255);

  if (counter > 10)
    exit();

  x += 20;
  strokeWeight(5);
  point(x, 150);

  counter++;
  textSize(14);
  fill(0);
  text("Points(                              );", 20, 20);
  saveFrame("./toDo/toDo" +  counter + ".png");

  background(255);
  
  for (int i = 0; i < 300; i+=10) {
    for (int j = 0; j < 300; j+=10) {
    stroke(240);
    strokeWeight(1);
    line(i, 0, i, 300);
    line(0, j, 300, j);
    }
  }

  strokeWeight(5);
  stroke(0);
  point(x, 150);

  fill(0);
  text("point(        );", 20, 20);
  saveFrame("./solutions/solution" + counter + ".png");
}