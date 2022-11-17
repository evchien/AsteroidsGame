class Spaceship extends Floater {   
    public Spaceship(){
      corners = 4;
      xCorners = new int[]{-8, 16, -8, -2};
      yCorners = new int[]{-8, 0, 8, 0};
      myColor = 255;
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = Math.random()*6-3;
      myYspeed = Math.random()*6-3;
      myPointDirection = Math.random()*2;
    }
    public void hyperspace(){
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = Math.random()*500;
      myCenterY = Math.random()*500;
      myPointDirection = Math.random()*1+1;
    }
    public void setY(int y){
      myCenterY = myCenterY + y;
    }
    public void setX(int x){
      myCenterX = myCenterX + x;
    }
    public double getY(){
      return myCenterY;
    }
    public double getX(){
      return myCenterX;
    }
}
