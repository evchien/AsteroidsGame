class Bullet extends Floater{
  public Bullet(Spaceship ship){
    myCenterX = ship.shipX();
    myCenterY = ship.shipY();
    myXspeed = ship.shipXSpeed();
    myYspeed = ship.shipYSpeed();
    myPointDirection = ship.shipDir();
    accelerate(0.6);
    myColor = color(255);
  }
  public void show(){
    fill(myColor);   
    stroke(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  public float pewX(){return (float)myCenterX;}
  public float pewY(){return (float)myCenterY;}
}
