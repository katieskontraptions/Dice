int oneCount, twoCount, threeCount, fourCount, fiveCount, sixCount;
int diceSum=0;

void setup()
{
  size(250, 280);
  textAlign(CENTER, CENTER);
  noLoop();
}
void draw()
{
  //your code here
  
  background(255);
  
  for (int x=10; x<250; x+=60) 
  {
    for (int y=10; y<250; y+=60) {
      Die bob = new Die(x,y);
      bob.roll();
      bob.show();
    }
  }
  
  fill(0);
  diceSum=oneCount + (2*twoCount) + (3*threeCount) + (4*fourCount) + (5*fiveCount) + (6*sixCount);
  text("Sum of Dice: " + diceSum, 70, 260);
  System.out.println(diceSum);
  
}
void mousePressed()
{
  redraw();
  oneCount = 0; 
  twoCount = 0;
  threeCount = 0;
  fourCount = 0;
  fiveCount = 0;
  sixCount = 0;
  diceSum = 0;
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY, diceNumber, diceSum;
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX=x;
    myY=y;
}
  void roll()
  {
    //your code here
    diceNumber=(int)(Math.random()*6)+1;
  }
  void show()
  {
    //your code here
    fill(138, 42, 226);
    rect(myX, myY, 50, 50);

    fill(255);
    if (diceNumber==1) {  
      ellipse(myX+25, myY+25, 10, 10);
      oneCount++;
    }
    else if (diceNumber==2) {
      ellipse(myX+15, myY+25, 10, 10);
      ellipse(myX+35, myY+25, 10, 10);
      twoCount++;
    }
    else if (diceNumber==3) {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      threeCount++;
    }
    else if (diceNumber==4) {
      ellipse(myX+15, myY+35, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+35, myY+15, 10, 10);
      fourCount++;
    }
    else if (diceNumber==5) {
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+15, myY+35, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+35, myY+15, 10, 10);
      fiveCount++;
    }
    else if (diceNumber==6) {
      ellipse(myX+15, myY+35, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+35, myY+15, 10, 10);
      ellipse(myX+15, myY+25, 10, 10);
      ellipse(myX+35, myY+25, 10, 10);
      sixCount++;
    }
  }
}
