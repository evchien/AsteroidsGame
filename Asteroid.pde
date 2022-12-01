class Asteroid extends Floater{
  private double rotSp;
  public Asteroid(){
    rotSp = Math.random()*4+1;
    corners = (int)(Math.random()*3+5);
    xCorners = new int[]{-9, -3, 7, 13, 6, -9, -11};
    yCorners = new int[]{-8,-10,-8,  0,10,  8,  0};
    myColor = 255;
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = Math.random()*6-3;
    myYspeed = Math.random()*6-3;
    myPointDirection = Math.random()*360;
  }
  public void move(){
    turn(rotSp);
    super.move();
  }
  public void show(){
    noFill();
    stroke(255);
    super.show();
  }
  public float astX(){return (float)myCenterX;}
  public float astY(){return (float)myCenterY;}
}
