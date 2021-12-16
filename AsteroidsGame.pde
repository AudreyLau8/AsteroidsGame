Star[] nightSky = new Star[200];
Spaceship ship = new Spaceship();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();

public void setup() 
{
  size(500, 500);
  for (int i=0; i<nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for(int i=0; i<10; i++){
    rocks.add(new Asteroid());
  }
}


public void draw() 
{
  background(0);
  
  for (int i=0; i<nightSky.length; i++)
  {
    nightSky[i].show();
  }
  
  for(int i=0; i<rocks.size(); i++){
    rocks.get(i).show();
    rocks.get(i).move();
    float d = dist((float)(ship.getX()), (float)(ship.getY()), (float)(rocks.get(i).getX()), (float)(rocks.get(i).getY()));
    if(d<15)
      rocks.remove(i);
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

