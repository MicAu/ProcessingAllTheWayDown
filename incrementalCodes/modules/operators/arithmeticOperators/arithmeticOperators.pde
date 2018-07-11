int x, y, result;
char op;

void setup() {
  for (int i=0; i < 100; i++) {
    if(i%20 == 0) {
      println();
    }
    
    if (i < 20) {
      x = (int)random(2, 8);
      y = (int)random(2, 8); 
      result = x+y;
      op = '+';
    } else if (i < 40) {
      x = (int)random(2, 8);
      y = (int)random(2, 8); 
      result = x-y;
      op = '-';
    } else if (i < 60) {
      x = (int)random(2, 8);
      y = (int)random(2, 8); 
      result = x*y;
      op = '*';
    } else if (i < 80) {


      if ((int)random(2)==0)
        x = (int)random(10, 30);
      else
        x = (int)random(-30, -10);

      if ((int)random(2)==0)
        y = (int)random(2, 8);
      else
        y = (int)random(-8, -2);
      result = x/y;
      op = '/';
    } else {

      if ((int)random(2)==0)
        x = (int)random(10, 30);
      else
        x = (int)random(-30, -10);

      if ((int)random(2)==0)
        y = (int)random(2, 8);
      else
        y = (int)random(-8, -2);
      result = x%y;
      op = '%';
    }
    println(x+" "+op+" "+y+" = "+result);
  }
}