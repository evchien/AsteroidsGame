class Spaceship extends Floater {   
    public Spaceship(){
      corners = 4;
      xCorners = new int[]{-8, 16, -8, -2};
      yCorners = new int[]{-8, 0, 8, 0};
      myColor = 255;
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = Math.random()*2;
      myYspeed = Math.random()*2;
      myPointDirection = Math.random()*360;
    }
    public void hyperspace(){
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = Math.random()*500;
      myCenterY = Math.random()*500;
      myPointDirection = Math.random()*360;
    }
    public void show(){
      fill(myColor);   
      stroke(myColor); 
      super.show();
    }
    public float shipX(){return (float)myCenterX;}
    public float shipY(){return (float)myCenterY;}
    public double shipXSpeed(){return myXspeed;}
    public double shipYSpeed(){return myYspeed;}
    public double shipDir(){return myPointDirection;}
}
