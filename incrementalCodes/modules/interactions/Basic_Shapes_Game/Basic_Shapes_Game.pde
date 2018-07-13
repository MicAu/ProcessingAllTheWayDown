/*
 These are Teaching Notes Only - the students do the actual coding.
 Students will be initially guided through basic pseudocode.
 
 *There are no user defined variables.
 *The point(); function helps to introduce the concept of variables with the one-one correspondence between the inbuilt variables,
 *mouseX and mouseY with the x and y coordinates.
 *The strokeWeight(); is introduced at some stage to create a "bug".
 *The conditionals can be slowly introduced from full screen partition with no conditions to splitting the
 screen from 2 to 4 or more partitions with appropriate conditions.
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

  if (mouseX < 250 && mouseY > 250) {   
    //strokeWeight(20); 
    /*This can be used to introduce a bug into the program,
    to find out why the vertical and horizontal lines thicknesses changed.
    Please do not use this as a main function, 
    just a challenge for students who have complete the task early.
    Introduce the concept of variables, mouseX, mouseY are variables for x and y
    */
    point(mouseX, mouseY);
  }

  if ((mouseX < 250 ) && (mouseY < 250)) {
    ellipse(mouseX, mouseY, 50, 50);
  }

  if (mouseX > 250 && mouseY < 250) {
    rect(mouseX, mouseY, 50, 50);
  }

  if (mouseX > 250 && mouseY > 250) {
    triangle(mouseX, mouseY, mouseX + 50, mouseY + 50, mouseX - 50, mouseY + 50);
  }
}