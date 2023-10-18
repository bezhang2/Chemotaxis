Snow[] Chemotaxis = new Snow[300];
void setup()   
{     
  size(500, 500);
  for (int i = 0; i < Chemotaxis.length; i++) {
    Chemotaxis[i] = new Snow();
  }
}   
void draw()   
{    
  background(0);
  for (int i = 0; i < Chemotaxis.length; i++) {
    Chemotaxis[i].move();
    Chemotaxis[i].show();
  }
  fill(255);
  ellipse(400, 100, 100, 100);
}
void mouseClicked() {
  setup();
}
class Snow    
{     
  int myX;
  float myY;
  float mySpeed;
  int mySize;
  int myColor;
  Snow() {
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    mySize = (int)(Math.random()*10-1);
    mySpeed = mySize/100.0;
    myColor = color((int)(Math.random()*256), 0, 0);
  }
  void move() {
    if (mouseX > myX)
    {
      myX = myX + (int)(Math.random()*15)+1;
    } else {
      myX = myX + (int)(Math.random()*15)-10;
    }
    if (mouseY > myY)
    {
      myY = myY + (int)(Math.random()*10)+1;
    } else {
      myY = myY + (int)(Math.random()*10)-5;
    }
    if (myX < -100 || myX > 500)
    {
      myX = 0;
    }
  }
  void show() {
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
    move();
  }
}
