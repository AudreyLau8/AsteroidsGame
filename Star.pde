class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((float)Math.random()*256, (float)Math.random()*256, (float)Math.random()*256);
  }
  public void show()
  {
    fill(myColor);
    stroke(0);
    ellipse(myX, myY, 5, 5);
  }
}
