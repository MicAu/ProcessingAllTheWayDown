int r = 0, g = 0, b = 0;
int x1, y1, x2, y2;
boolean grid = true;
boolean colors = true;

int counter = 0;

void setup() {
  size(300, 300);
}

void drawGrid()
{
  textSize(8);
  textAlign(LEFT, TOP);
  fill(255);
  stroke(255, 255, 255, 100);
  for(int i = 0 ; i < width; i+= width/10)
  {
    line(i, 0, i, height);
    text(i, i + 5, 0);
  }
    
  for(int i = 0 ; i < height; i+= height/10)
  {
    line(0, i, height, i);
    text(i, 0 + 5, i);
  }
}

void setHorizontal() {
    x1 = (int)random(4)*30;
    x2 = x1 + (int) random (8)*30;
    y1 = y2 = 30 + (int)random(9)*30;
}

void setVertical() { 
    y1 = (int)random(4)*30;
    y2 = y1 + (int) random (8)*30;
    x1 = x2 = 30 + (int)random(9)*30;
}

void setArbitrary() { 
    x1 = x2 = y1 = y2 = 0;
    
    while(x1 + x2 + y1 + y2 != x1 * 4) //Very naive solution for ensuring that a dot is not created
    {
      x1 = (int)random(4)*30;
      x2 = x1 + (int) random (8)*30;
      y1 = (int)random(4)*30;
      y2 = y1 + (int) random (8)*30;
    }
}

void draw() {
  r = g = b = 0;
  counter++;
  if (counter > 20)
    exit();
  if (counter > 15 && colors)
  {
    int random = (int) random (3);
    if(random == 0)
      setHorizontal();
    else if(random == 1)
      setVertical();
    else
      setArbitrary();
      
    r = (int)random(256);
    g = (int)random(256);
    b = (int)random(256);
    
  }
  else if (counter > 10)
    setArbitrary();
  else if (counter > 5)
    setVertical();
  else
    setHorizontal();
  
  background(200);
  if(grid)
    drawGrid();
  
  fill(0);
  textSize(14);
  stroke(r, g, b);
  line(x1, y1, x2, y2);
  fill(0);
  if(r + g + b != 0)
    text("stroke(                           );", 20, 20);
  text("line(                              );", 20, 40);
  saveFrame("./toDo/toDo-"+counter+".png");
  
  background(200);
  if(grid)
    drawGrid();
  
  fill(0);
  textSize(14);
  stroke(r, g, b);
  line(x1, y1, x2, y2);
  if(r + g + b != 0)
    text("stroke("+r+", "+g+", "+b+");", 20, 20);
  text("line(" + x1 + ", " + y1 + ", " + x2 + ", " + y2 + ");", 20, 40);
  saveFrame("./solutions/solution-"+counter+".png");
  
}
