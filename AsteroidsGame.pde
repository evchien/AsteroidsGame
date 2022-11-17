//your variable declarations here
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
}
public void keyPressed(){
  if(key == '0')
    bob.hyperspace();
  if(key == '4'){
    bob.turn(-10);
  }
  if(key == '6'){
    bob.turn(10);
  }
  if(key == '5'){
    bob.accelerate(2);
  }
}
