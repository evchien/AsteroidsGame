//your variable declarations here
Spaceship ship = new Spaceship();
Star[] nightSky = new Star[200];
ArrayList <Asteroid> ast = new ArrayList <Asteroid>();
int count = 0;
public void setup() 
{
  size(500,500);
  textAlign(CENTER);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for(int j = 0; j < 7; j++){
    ast.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  ship.show();
  ship.move();
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  for(int j = 0; j < ast.size(); j++){
    ast.get(j).show();
    ast.get(j).move();
    float d = dist(ast.get(j).astX(), ast.get(j).astY(), ship.shipX(), ship.shipY());
    if(d < 20){ast.remove(j); j--; count++;}
  }
  text("Asteroids Hit: "+count, 50, 20);
}
public void keyPressed(){
  if(key == '0' || key == 'h')
    ship.hyperspace();
  if(key == '4' || key == 'a')
    ship.turn(-10);
  if(key == '6' || key == 'd')
    ship.turn(10);
  if(key == '5' || key == 's')
    ship.accelerate(2);
}
