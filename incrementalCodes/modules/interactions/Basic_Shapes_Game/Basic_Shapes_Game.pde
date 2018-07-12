/*
 Teaching Notes
 Students will be initially guided through basic pseudocode
*There are no user defined variables.
*The point(); function introduces the concept of one-one correspondence between an inbuilt variable with the x and y coordinates.
*The strokeWeight(); change in the point is introduced at some stage to create a "bug".
*The conditionals can be slowly introduced from full screen partition with no conditionals to splitting the
 screen from 2 to 4 or more partitions.
*There are no nested conditionals in this basic rock–paper–scissors style "game" where students can hide 
 shapes in different paritions and have their coding team guess what is in each partition.
 Nesting the conditionals could be used as an extension exercise.
 */

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  line(250, 0, 250, 500);
  line(0, 250, 500, 250);
}

void mousePressed() {
  
  if (mouseX < 250 && mouseY < 250) {
    ellipse(mouseX, mouseY, 50, 50);
  }
  
  if (mouseX > 250 && mouseY < 250) {
    rect(mouseX, mouseY, 50, 50);
  }
  
  if (mouseX < 250 && mouseY > 250) {   
    strokeWeight(20);
    point(mouseX, mouseY);
  }
  
  if (mouseX > 250 && mouseY > 250) {
    triangle(mouseX, mouseY, mouseX + 50, mouseY + 50, mouseX - 50, mouseY + 50);
  }
}