Star[] nightSky = new Star[200];
Spaceship ship = new Spaceship();

public void setup() 
{
  size(500, 500);
  for (int i=0; i<nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}


public void draw() 
{
  background(0);
  for (int i=0; i<nightSky.length; i++)
  {
    nightSky[i].show();
  }
  if (keyPressed) {
    if (key == 'j' || key == 'J') {
      ship.turn(-10);
    }
    if (key == ' ') {
      ship.accelerate(0.3);
    }
    if (key == 'd') {
      ship.setXspeed(3);
      ship.setYspeed(0);
    }
    if (key == 's') {
      ship.setYspeed(3);
      ship.setXspeed(0);
    }
    if (key == 'a') {
      ship.setXspeed(-3);
      ship.setYspeed(0);
    }
    if (key == 'w'){
      ship.setYspeed(-3);
      ship.setXspeed(0);
    }
    if (key == 'h'){
      double i = (double)(Math.random()*400);
      ship.setCenterX(i);
      ship.setXspeed(0);
      ship.setYspeed(0);
    }
  }
  ship.move();
  ship.show();
}

