class Asteroid extends Floater{
  private double rotSp;
  public Asteroid(){
    rotSp = Math.random()*4+1;
    corners = (int)(Math.random()*3+5);
    xCorners = new int[]{-9, -3, 7, 13, 6, -9, -11};
    yCorners = new int[]{-8,-10,-8,  0,10,  8,  0};
    myColor = 255;
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = Math.random()*6-3;
    myYspeed = Math.random()*6-3;
    myPointDirection = Math.random()*360;
  }
  public void move(){
    myPointDirection += rotSp;
    myCenterX += myXspeed;
    myCenterY += myYspeed; 
    if(myCenterX >width)  
      myCenterX = 0;
    else if (myCenterX<0)
      myCenterX = width;    
    if(myCenterY >height)
      myCenterY = 0;
    else if (myCenterY < 0)
      myCenterY = height;
  }
  public void show(){
    noFill();
    stroke(255);
    //dont change rest of show
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
    beginShape();
    for (int nI = 0; nI < corners; nI++)
      vertex(xCorners[nI], yCorners[nI]);
    endShape(CLOSE);
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
    //end of dont change
  }
}
