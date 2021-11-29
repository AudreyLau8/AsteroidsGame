class Spaceship extends Floater  
{   
    public Spaceship() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 16;
    yCorners[0] = 0;
    xCorners[1] = -8;
    yCorners[1] = 8;
    xCorners[2] = -2;
    yCorners[2] = 0;
    xCorners[3] = -8;
    yCorners[3] = -8;
    myColor = 255; //white spaceship
    myCenterX = 200;
    myCenterY = 200;
    myXspeed = 0; //horizon speed
    myYspeed = 0; //vertical speed
    myPointDirection = 0;
  }

  public void setXspeed(double x) {
    myXspeed = x;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public void setCenterX(double x) {
    myCenterX = x;
  }
  public double getX() {
    return myCenterX;
  }
  public void setCenterY(double y) {
    myCenterY = y;
  }
  public double getY() {
    return myCenterY;
  }
  public void setPointDirection (double i) {
    myPointDirection = i;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
