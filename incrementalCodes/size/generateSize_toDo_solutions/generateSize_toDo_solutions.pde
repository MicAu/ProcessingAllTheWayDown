PGraphics pg, outputToDo, outputSolution;

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
  if(w%5!=0 || h%5!=0)
    println(w+" "+h);
  surface.setSize(w, h);
  background(255);
  fill(0);
  outputToDo = createGraphics(width, height);
  outputToDo.beginDraw();
  outputToDo.background(255);
  outputToDo.fill(0);
  outputToDo.textSize(14);
  outputToDo.text("size(                 );", 20, 20);
  outputToDo.endDraw();
  outputToDo.save("./../toDo/toDo-"+counter+".png");
  
  outputSolution = createGraphics(width, height);
  outputSolution.beginDraw();
  outputSolution.background(255);
  outputSolution.fill(0);
  outputSolution.textSize(14);
  outputSolution.text("size("+width+", "+height+");", 20, 20);
  outputSolution.endDraw();
  outputSolution.save("./../solutions/solution-"+counter+".png");
}
