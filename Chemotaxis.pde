walk [] k = {new walk(250,250)};
double r = Math.random();
void setup() {
  size(500,500);
   k = new walk[100];
  for (int i = 0; i < k.length ; i ++) {
   k[i] = new walk(250,250);
  }
}

void draw() {
  background(0);
  for (int i = 0; i <k.length; i ++) {
  k[i].move();
  k[i].show();
  }
}
class walk {
  
  int myX, myY;
  float addX, addY;
  double r;
  walk(int x, int y) {
    myX = x;
    myY = y; 
    addX = -5; 
    addY = -5;
    r = Math.random();
  }
  void move() {
    
    if (mousePressed) {
      if (r >= 0.5) {
        fill(255,0,0);
        if (mouseX >= myX) {
          addX = 3.5;
        } else if (mouseX < myX) {
          addX = 6.5;
        }
        if (mouseY >= myY) {
          addY = 3.5;
        } else if (mouseY < myY) {
          addY = 6.5;
        }
      } else {
        fill(0,0,255);
        if (mouseX >= myX) {
          addX = 6.5;
        } else if (mouseX < myX) {
          addX = 3.5;
        }
        if (mouseY >= myY) {
          addY = 6.5;
        } else if (mouseY < myY) {
          addY = 3.5;
        }
      }
    } else {
      fill(100,100,100);
      addX = 5;
      addY = 5; 
    }
    myX += (int)(Math.random()*(10)-addX);
    myY += (int)(Math.random()*(10)-addY); 
  }
  void show() {
    ellipse(myX,myY,30,30);
    
  }
  
    
}