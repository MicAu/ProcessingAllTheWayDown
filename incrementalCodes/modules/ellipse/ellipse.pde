int rF, gF, bF, rS, gS, bS = 0;
int x1, y1, w, h;
boolean grid = true;
boolean colors = true;

boolean circle = true;
boolean strokeOn = false;
boolean fillOn = false;

int counter = 0;

void setup() {
  size(300, 300);
}

void drawGrid()
{
  if(grid)
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
}

void setCircle() {
  int midx = width/2;
  int midy = height/2;
  
  int x = (int) random (5); //How far from center x and y will be
  int y = (int) random (5);
  
  if(circle)
   w = h = (1 + (int) random(min(x, y))/2) * (min(width, height)/10);
  else
  {
     w = (1 + (int) random (x)/2) * width/10;
     h = (1 + (int) random (y)/2) * height/10;
  }
  
  x = x * width/10;
  y = y * width/10;
  
  int check = (int) random(2);
  if(check == 0)
    x1 = midx + x ;
  else
    x1 = midx - x;
    
  check = (int) random(2);
  if(check == 0)
    y1 = midy + y;
  else
    y1 = midy - y;
    
  if(strokeOn)
  {
    rS = (int)random(256);
    gS = (int)random(256);
    bS = (int)random(256);
  }
  
  if(fillOn)
  {
    rF = (int)random(256);
    gF = (int)random(256);
    bF = (int)random(256);
  }
}

void drawShape()
{
  if(strokeOn)
    stroke(rS, gS, bS);
  else
    stroke(0);
    
  if(fillOn)
    fill(rF, gF, bF);
  else
    fill(255);
  
  ellipse(x1, y1, w, h);
}

void generateText(boolean solution)
{
  textSize(14);
  
  if(solution)
  {
    if(rS + gS + bS != 0)
      text("stroke("+rS+", "+gS+", "+bS+");", 20, 40);
    if(rF + gF + bF != 0)
      text("fill("+rF+", "+gF+", "+bF+");", 20, 20);
    text("ellipse(" + x1 + ", " + y1 + ", " + w + ", " + h + ");", 20, 60);
  } else {
    if(rS + gS + bS != 0)
      text("stroke(                           );", 20, 40);
    if(rF + gF + bF != 0)
      text("fill(                           );", 20, 20);
    text("ellipse(                              );", 20, 60);
  }
}

void draw() {
  rF = 0;
  gF = 0;
  bF = 0;
  rS = 0;
  gS = 0;
  bS = 0;
  
  counter++;
  if (counter > 20)
    exit();
  if(counter > 10)
    circle = false;
  if(counter > 15)
    strokeOn = true;
  if(counter > 18)
    fillOn = true;
    
  setCircle(); //Set circle parameters
  
  background(200); //Clear and set overall background
  drawGrid();
  drawShape();
  generateText(false);
  saveFrame("./toDo/toDo-"+counter+".png");

  background(200);
  drawGrid();
  drawShape();
  generateText(true);
  saveFrame("./solutions/solution-"+counter+".png");
}
