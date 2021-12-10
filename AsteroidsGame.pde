Star[] nightSky = new Star[200];
Spaceship ship = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();

public void setup() 
{
  size(500, 500);
  for (int i=0; i<nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for(int i=0; i<10; i++){
    rocks.add(i, new Asteroid((int)(Math.random()*5)));
  }
}


public void draw() 
{
  background(0);
  for (int i=0; i<nightSky.length; i++)
  {
    nightSky[i].show();
  }
  for(int i=0; i<asteroids.size(); i++){
    asteroids.get(i).show();
    asteroids.get(i).move();
  }
  if (keyPressed) {
    if (key == 'a') {
      ship.turn(-10);
    }
    if (key == 'w') {
      ship.accelerate(0.5);
    }
    if (key == 's') {
      ship.accelerate(-0.5);
    }
    if (key == 'd') {
      ship.turn(10);
    }
    if (key == 'h') {
        ship.setCenterX((int)(Math.random()*400));
        ship.setCenterY((int)(Math.random()*400));
        ship.setXspeed(0);
        ship.setYspeed(0);
        ship.setPointDirection((int)(Math.random()*361));
      }
    }
  ship.move();
  ship.show();
}

