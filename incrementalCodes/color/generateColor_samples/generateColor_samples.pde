int r = 0, g = 0, b = 0;
int counter = 0;
void setup() {
  size(300, 300);
}

void draw() {
  if (counter > 16)
    exit();
  if (counter >= 7 && counter <= 30) {
    r = (counter - 7)*25;
    g = (counter - 7)*25;
    b = (counter - 7)*25;
  } else if (counter == 30) {
    r = 255;
    g = 255;
    b = 255;
  } else {    
    r = (int)random(256);
    g = (int)random(256);
    b = (int)random(256);
  }
  counter++;

  background(r, g, b);
  int displayR = 255-r;
  int displayG = 255-g;
  int displayB = 255-b;
  if (r > 80 && r < 127)
    displayR = 255;
  if (r >= 127 && r < 180)
    displayR = 255;

  if (g > 80 && g < 127)
    displayG = 255;
  if (g >= 127 && g < 180)
    displayG = 0;

  if (b > 80 && b < 127)
    displayB = 255;
  if (b >= 127 && b < 180)
    displayB = 255;
  
  fill(displayR, displayG, displayB);
  
  textSize(14);
  noStroke();
  //text("background(                              );", 20, 20);
  //saveFrame("./toDo/toDo-"+counter+".png");
  background(r, g, b);
  text("background("+r+", "+g+", "+b+");", 20, 20);
  saveFrame("./../samples/sample-"+counter+".png");
}
