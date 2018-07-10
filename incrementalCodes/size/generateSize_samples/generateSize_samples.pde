PGraphics pg, output;

int counter = 0;
void setup() {
  size(300, 300);
  surface.setResizable(true);
}

void draw() {
  if (counter > 20)
    exit();
  counter++;
  int w = ((int)random(30, 100))*5;
  int h = ((int)random(30, 100))*5;
  surface.setSize(w, h);
  if (w%5!=0 || h%5!=0)
    println(w+" "+h);  
  background(255);
  fill(0);
  output = createGraphics(width, height);
  output.beginDraw();
  output.background(255);
  output.fill(0);
  output.textSize(14);
  output.text("size("+width+", "+height+");", 20, 20);
  output.endDraw();
  output.save("./../samples/sample-"+counter+".png");
}
