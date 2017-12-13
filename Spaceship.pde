class Spaceship extends Floater
{  
   public SpaceShip()
   {
    corners = 4;
    int[] xS = {-8,16,-8,-2};
    int[] yS = {-8,0,8,0};
    xCorners = xS;
    yCorners = yS;
    myCenterX = 250;
    myCenterY = 250;
    myColor = 150;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
   }

 public void setX(int x) {myCenterX = x;}  
  public int getX() {return myCenterX;}   
  public void setY(int y) {myCenterY = y;}   
  public int getY() {return myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return myDirection = x;}
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}   
  public double getPointDirection() {return myPointDirection;}
}
 
