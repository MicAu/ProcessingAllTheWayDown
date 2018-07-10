int r = 0, g = 0, b = 0;
int counter = 0;
void setup() {
  size(300, 300);
}

void draw() {
  if (counter > 10)
    exit();
  if (counter >= 7 && counter <= 30) {
    r = (counter - 7)*60;
    g = (counter - 7)*60;
    b = (counter - 7)*60;
  } else if(counter == 30) {
    r = 255;
    g = 255;
    b = 255;
  }
  else {    
    r = (int)random(256);
    g = (int)random(256);
    b = (int)random(256);
  }
  counter++;

  background(r, g, b);
  fill(255-r, 255-g, 255-b);
  textSize(14);
  noStroke();
  text("background(                              );", 20, 20);
  saveFrame("./toDo/toDo-"+counter+".png");
  background(r, g, b);
  text("background("+r+", "+g+", "+b+");", 20, 20);
  saveFrame("./solutions/solution-"+counter+".png");
  
}
