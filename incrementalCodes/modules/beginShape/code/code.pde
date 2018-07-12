int counter=0;
int lastx = 0, lasty = 0;

void setup() {
  size(300, 300);
}

void draw() {
  for (int i =0; i<20; i++) {
    background(150);
    drawGrid();
    counter++;
    shape1();
    if (i==19){
      exit();
    }
  }
}

void shape1() {
  int numOfVertices = (int) random(3, 5);
  int xPoint = width/2+30;
  int yPoint = height/2+30;
  int xText =30;
  int yText =30;
  printText("(red) Starting point: ("+xPoint+","+yPoint+")", 10, 30, 30);
  String str = "beginShape(){\n";
  str+="vertex(180,180);\n";
  int point = 2;
  int[][] arr = new int[numOfVertices][3];
  String[] arr1 = new String[numOfVertices];
  int idx=0;
  beginShape();
  vertex(xPoint, yPoint);
  for (int i=0; i<numOfVertices; i++) {
    boolean retry = false;
    do {
      if((int)random(2)==0){
        //change x
        if((int) random(2)==0){
          //forward x
          if(lastx==-1){
            retry=true;
          } else {
            lastx=1;
            xPoint+=30;
            break;
          }
        } else {
          //backward x
          if(lastx==1){
            retry=true;
          } else {
            lastx=-1;
            xPoint-=30;
            break;
          }
        }
      } else {
        //change y
        if ((int) random(2)==0){
          //downward y
          if (lasty==-1){
            retry=true;
          } else {
            lasty=1;
            yPoint+=30;
            break;
          }
        } else {
          //upward
          if(lasty==1){
            retry=true;
          } else {
            yPoint-=30;
            lasty=-1;
            break;
          }
        }
      }
    }while (retry==true);
    stroke(0,0,0);
    vertex(xPoint, yPoint);
    arr[idx][0]=xPoint;
    arr[idx][1]=yPoint;
    arr1[idx++] =colour(point);
    str+="vertex("+xPoint+","+yPoint+");\n";
    yText+=10;
    printText(colour(point++)+"point"+": ("+"     "+","+"      "+")", 10, xText, yText);
    fill((int)random(255), 255, (int)random(255));
  }
  endShape(CLOSE);
  
  startingPoint(width/2+30, height/2+30);
  for(int i=0;i<arr.length;i++){
    point(arr[i][0],arr[i][1],arr1[i]);
  }
  saveFrame("/Users/matthewlee/Desktop/beginShape/problem/beginShapeProblem-"+counter+".png");
  str+="endShape();";
  printText(str,10,30,150);
  saveFrame("/Users/matthewlee/Desktop/beginShape/solution/beginShapeSolution-"+counter+".png");
  saveFrame("/Users/matthewlee/Desktop/beginShape/sample/beginShapeSample-"+counter+".png");
}


void startingPoint(int xPos, int yPos) {
  stroke(255, 0, 0);
  strokeWeight(4);
  point(xPos, yPos);
}


void printText(String str, int size, int xPos, int yPos) {
  textSize(size);
  fill(0);
  text(str, xPos, yPos);
}

void point(int xpos, int ypos, String colour){
  if (colour=="(blue)"){
    stroke(0,0,255);
  } else if (colour =="(green)"){
    stroke(0,255,0);
  } else if (colour=="(purple)"){
    stroke(255,0,255);
  } else {
    stroke(255,255,255);
  }
  point(xpos,ypos);
}

String colour (int n){
  if(n==2){
    return "(blue)";
  } else if (n==3){
    return "(green)";
  } else if (n==4){
    return "(purple)";
  } else {
    return "(white)";
  }
}

void drawGrid() {

  textSize(8);
  textAlign(LEFT, TOP);
  fill(0, 0, 255);
  stroke(255, 255, 255, 100);
  for (int i =0; i<width; i+=width/10) {
    line(i, 0, i, height);
    text(i, i+5, 0);
  }
  for (int i=0; i<height; i+=height/10) {
    line(0, i, height, i);
    text(i, 0, i+5);
  }
}