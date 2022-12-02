class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  private float mySize;
  public Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color(252,245,99);
    mySize = dist(250, 250, (float)myX, (float)myY)/90;
  }
  public void show(){
    fill(myColor);
    stroke(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}
